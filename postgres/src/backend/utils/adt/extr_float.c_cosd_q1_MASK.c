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
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static double
FUNC2(double x)
{
	/*
	 * Stitch together the sine and cosine functions for the ranges [0, 60]
	 * and (60, 90].  These guarantee to return exact answers at their
	 * endpoints, so the overall result is a continuous monotonic function
	 * that gives exact results when x = 0, 60 and 90 degrees.
	 */
	if (x <= 60.0)
		return FUNC0(x);
	else
		return FUNC1(90.0 - x);
}