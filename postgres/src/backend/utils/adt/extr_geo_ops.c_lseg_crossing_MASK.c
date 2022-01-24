#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  float8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int POINT_ON_POLYGON ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(float8 x, float8 y, float8 prev_x, float8 prev_y)
{
	float8		z;
	int			y_sign;

	if (FUNC4(y))
	{							/* y == 0, on X axis */
		if (FUNC4(x))			/* (x,y) is (0,0)? */
			return POINT_ON_POLYGON;
		else if (FUNC1(x, 0))
		{						/* x > 0 */
			if (FUNC4(prev_y)) /* y and prev_y are zero */
				/* prev_x > 0? */
				return FUNC1(prev_x, 0.0) ? 0 : POINT_ON_POLYGON;
			return FUNC3(prev_y, 0.0) ? 1 : -1;
		}
		else
		{						/* x < 0, x not on positive X axis */
			if (FUNC4(prev_y))
				/* prev_x < 0? */
				return FUNC3(prev_x, 0.0) ? 0 : POINT_ON_POLYGON;
			return 0;
		}
	}
	else
	{							/* y != 0 */
		/* compute y crossing direction from previous point */
		y_sign = FUNC1(y, 0.0) ? 1 : -1;

		if (FUNC4(prev_y))
			/* previous point was on X axis, so new point is either off or on */
			return FUNC3(prev_x, 0.0) ? 0 : y_sign;
		else if ((y_sign < 0 && FUNC3(prev_y, 0.0)) ||
				 (y_sign > 0 && FUNC1(prev_y, 0.0)))
			/* both above or below X axis */
			return 0;			/* same sign */
		else
		{						/* y and prev_y cross X-axis */
			if (FUNC0(x, 0.0) && FUNC1(prev_x, 0.0))
				/* both non-negative so cross positive X-axis */
				return 2 * y_sign;
			if (FUNC3(x, 0.0) && FUNC2(prev_x, 0.0))
				/* both non-positive so do not cross positive X-axis */
				return 0;

			/* x and y cross axes, see URL above point_inside() */
			z = FUNC5(FUNC6(FUNC5(x, prev_x), y),
						  FUNC6(FUNC5(y, prev_y), x));
			if (FUNC4(z))
				return POINT_ON_POLYGON;
			if ((y_sign < 0 && FUNC3(z, 0.0)) ||
				(y_sign > 0 && FUNC1(z, 0.0)))
				return 0;
			return 2 * y_sign;
		}
	}
}