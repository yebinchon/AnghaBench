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
typedef  double float8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int,int) ; 
 double FUNC1 (double) ; 
 double FUNC2 () ; 
 double FUNC3 () ; 
 scalar_t__ FUNC4 (double) ; 
 scalar_t__ FUNC5 (double) ; 
 double FUNC6 (double) ; 

float8
FUNC7(float8 x, float8 y)
{
	float8		yx,
				result;

	/* Handle INF and NaN properly */
	if (FUNC4(x) || FUNC4(y))
		return FUNC2();

	if (FUNC5(x) || FUNC5(y))
		return FUNC3();

	/* Else, drop any minus signs */
	x = FUNC1(x);
	y = FUNC1(y);

	/* Swap x and y if needed to make x the larger one */
	if (x < y)
	{
		float8		temp = x;

		x = y;
		y = temp;
	}

	/*
	 * If y is zero, the hypotenuse is x.  This test saves a few cycles in
	 * such cases, but more importantly it also protects against
	 * divide-by-zero errors, since now x >= y.
	 */
	if (y == 0.0)
		return x;

	/* Determine the hypotenuse */
	yx = y / x;
	result = x * FUNC6(1.0 + (yx * yx));

	FUNC0(result, false, false);

	return result;
}