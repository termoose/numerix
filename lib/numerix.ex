defmodule Numerix do

	def solve(f, x_0, iters) do
		Enum.reduce(1..iters,
								x_0,
			fn(_i, acc) ->
				newton_step(f, acc)
			end)
	end

	defp newton_step(f, x_n) do
		x_n - f.(x_n) / diff(f, x_n)
	end

	def diff(f, point) do
		(f.(point + delta) - f.(point - delta)) / (2*delta)
	end

	defp delta do
		0.001
	end
end
