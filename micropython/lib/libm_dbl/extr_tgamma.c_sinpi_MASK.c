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

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 double FUNC1 (double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC2 (double) ; 
 double pi ; 

__attribute__((used)) static double FUNC3(double x)
{
	int n;

	/* argument reduction: x = |x| mod 2 */
	/* spurious inexact when x is odd int */
	x = x * 0.5;
	x = 2 * (x - FUNC2(x));

	/* reduce x into [-.25,.25] */
	n = 4 * x;
	n = (n+1)/2;
	x -= n * 0.5;

	x *= pi;
	switch (n) {
	default: /* case 4 */
	case 0:
		return FUNC1(x, 0, 0);
	case 1:
		return FUNC0(x, 0);
	case 2:
		return FUNC1(-x, 0, 0);
	case 3:
		return -FUNC0(x, 0);
	}
}