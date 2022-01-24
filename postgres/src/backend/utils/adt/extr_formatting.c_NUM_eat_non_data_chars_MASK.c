#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * inout_p; } ;
typedef  TYPE_1__ NUMProc ;

/* Variables and functions */
 scalar_t__ OVERLOAD_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(NUMProc *Np, int n, int input_len)
{
	while (n-- > 0)
	{
		if (OVERLOAD_TEST)
			break;				/* end of input */
		if (FUNC1("0123456789.,+-", *Np->inout_p) != NULL)
			break;				/* it's a data character */
		Np->inout_p += FUNC0(Np->inout_p);
	}
}