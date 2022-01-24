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
struct TYPE_2__ {int /*<<< orphan*/  syncRepLinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* MyProc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SyncRepLock ; 

void
FUNC4(void)
{
	/*
	 * First check if we are removed from the queue without the lock to not
	 * slow down backend exit.
	 */
	if (!FUNC3(&(MyProc->syncRepLinks)))
	{
		FUNC0(SyncRepLock, LW_EXCLUSIVE);

		/* maybe we have just been removed, so recheck */
		if (!FUNC3(&(MyProc->syncRepLinks)))
			FUNC2(&(MyProc->syncRepLinks));

		FUNC1(SyncRepLock);
	}
}