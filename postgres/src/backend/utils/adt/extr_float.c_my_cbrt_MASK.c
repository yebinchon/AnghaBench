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
 double FUNC1 (double,double) ; 

__attribute__((used)) static double
FUNC2(double x)
{
	int			isneg = (x < 0.0);
	double		absx = FUNC0(x);
	double		tmpres = FUNC1(absx, (double) 1.0 / (double) 3.0);

	/*
	 * The result is somewhat inaccurate --- not really pow()'s fault, as the
	 * exponent it's handed contains roundoff error.  We can improve the
	 * accuracy by doing one iteration of Newton's formula.  Beware of zero
	 * input however.
	 */
	if (tmpres > 0.0)
		tmpres -= (tmpres - absx / (tmpres * tmpres)) / (double) 3.0;

	return isneg ? -tmpres : tmpres;
}