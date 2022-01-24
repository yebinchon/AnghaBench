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
typedef  int uint64_t ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 

double FUNC3(double x)
{
	union {double f; uint64_t i;} u = {.f = x};
	unsigned e = u.i >> 52 & 0x7ff;

	/* x < 1 domain error is handled in the called functions */

	if (e < 0x3ff + 1)
		/* |x| < 2, up to 2ulp error in [1,1.125] */
		return FUNC1(x-1 + FUNC2((x-1)*(x-1)+2*(x-1)));
	if (e < 0x3ff + 26)
		/* |x| < 0x1p26 */
		return FUNC0(2*x - 1/(x+FUNC2(x*x-1)));
	/* |x| >= 0x1p26 or nan */
	return FUNC0(x) + 0.693147180559945309417232121458176568;
}