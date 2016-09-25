module Watir
  module Wait
    class Timer

      attr_writer :end_time

      #
      # Executes given block until it returns true or exceeds timeout.
      # @param [Fixnum] timeout
      # @yield block
      # @api private
      #

      def wait(timeout, &block)
        end_time = @end_time || ::Time.now + timeout
        loop do
          yield(block)
          break if ::Time.now > end_time
        end
      end

    end # Timer
  end # Wait
end # Watir
