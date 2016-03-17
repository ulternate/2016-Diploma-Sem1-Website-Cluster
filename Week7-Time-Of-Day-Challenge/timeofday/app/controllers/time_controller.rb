class TimeController < ApplicationController
  def index
  	@time = Time.now
  	@hour = @time.hour
  	@min = @time.min
  	@sec = @time.sec
  	@colour = ""
  	@hour.to_s.length < 2 ? @colour << "0#{@hour}" : @colour << "#{@hour}"
  	@min.to_s.length < 2 ? @colour << "0#{@min}" : @colour << "#{@min}"
	@sec.to_s.length < 2 ? @colour << "0#{@sec}" : @colour << "#{@sec}"

	@inverse_colour = sprintf("%X", @colour.hex ^ 0xFFFFFF)

	# def invert_colour(color)
	# 	return sprintf("%X", color.hex ^ 0xFFFFFF)
	# end

  end
end
