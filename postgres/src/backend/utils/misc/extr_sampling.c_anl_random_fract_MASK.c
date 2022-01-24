#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* randstate; } ;

/* Variables and functions */
 TYPE_1__ oldrs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 double FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

double
FUNC3(void)
{
	/* initialize if first time through */
	if (oldrs.randstate[0] == 0)
		FUNC2(FUNC0(), oldrs.randstate);

	/* and compute a random fraction */
	return FUNC1(oldrs.randstate);
}