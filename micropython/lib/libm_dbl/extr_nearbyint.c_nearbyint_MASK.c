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
 int /*<<< orphan*/  FE_INEXACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (double) ; 

double FUNC3(double x)
{
#ifdef FE_INEXACT
	#pragma STDC FENV_ACCESS ON
	int e;

	e = fetestexcept(FE_INEXACT);
#endif
	x = FUNC2(x);
#ifdef FE_INEXACT
	if (!e)
		feclearexcept(FE_INEXACT);
#endif
	return x;
}