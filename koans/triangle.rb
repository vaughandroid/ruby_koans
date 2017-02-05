# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  ordered = [a, b, c].sort
  min = ordered[0]
  mid = ordered[1]
  max = ordered[2]
  if (min <= 0 || min + mid <= max)
    raise TriangleError
  elsif (min == max) 
    :equilateral
  elsif (min == mid || mid == max)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
