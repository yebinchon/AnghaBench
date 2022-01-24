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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InterruptPending ; 
 scalar_t__ VacuumCostActive ; 
 int VacuumCostBalance ; 
 int VacuumCostDelay ; 
 int VacuumCostLimit ; 
 int /*<<< orphan*/  FUNC2 (long) ; 

void
FUNC3(void)
{
	/* Always check for interrupts */
	FUNC1();

	/* Nap if appropriate */
	if (VacuumCostActive && !InterruptPending &&
		VacuumCostBalance >= VacuumCostLimit)
	{
		double		msec;

		msec = VacuumCostDelay * VacuumCostBalance / VacuumCostLimit;
		if (msec > VacuumCostDelay * 4)
			msec = VacuumCostDelay * 4;

		FUNC2((long) (msec * 1000));

		VacuumCostBalance = 0;

		/* update balance values for workers */
		FUNC0();

		/* Might have gotten an interrupt while sleeping */
		FUNC1();
	}
}