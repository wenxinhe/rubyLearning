# [20分钟体验 Ruby](https://www.ruby-lang.org/zh_cn/documentation/quickstart/)


class MegaGreeter
	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names == nil
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names == nil
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(', ')}.  Come back soon!"
		else				
			puts "Goodbye #{@names}.  Come back soon!"
		end
	end
end

if __FILE__ == $0
	greeter = MegaGreeter.new
	greeter.say_hi
	greeter.say_bye

	greeter.names = "Zeke"
	greeter.say_hi
	greeter.say_bye

	greeter.names = ["Albert", "Brenda"]
	greeter.say_hi
	greeter.say_bye

	greeter.names = nil
	greeter.say_hi
	greeter.say_bye

	nil.null
end