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
struct TYPE_2__ {int SharedHotStandbyActive; int /*<<< orphan*/  info_lck; } ;

/* Variables and functions */
 int LocalHotStandbyActive ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* XLogCtl ; 

bool
FUNC2(void)
{
	/*
	 * We check shared state each time only until Hot Standby is active. We
	 * can't de-activate Hot Standby, so there's no need to keep checking
	 * after the shared variable has once been seen true.
	 */
	if (LocalHotStandbyActive)
		return true;
	else
	{
		/* spinlock is essential on machines with weak memory ordering! */
		FUNC0(&XLogCtl->info_lck);
		LocalHotStandbyActive = XLogCtl->SharedHotStandbyActive;
		FUNC1(&XLogCtl->info_lck);

		return LocalHotStandbyActive;
	}
}