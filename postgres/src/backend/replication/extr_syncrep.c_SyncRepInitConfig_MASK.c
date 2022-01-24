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
struct TYPE_2__ {int sync_standby_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* MyWalSnd ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  SyncRepLock ; 
 int /*<<< orphan*/  application_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(void)
{
	int			priority;

	/*
	 * Determine if we are a potential sync standby and remember the result
	 * for handling replies from standby.
	 */
	priority = FUNC2();
	if (MyWalSnd->sync_standby_priority != priority)
	{
		FUNC0(SyncRepLock, LW_EXCLUSIVE);
		MyWalSnd->sync_standby_priority = priority;
		FUNC1(SyncRepLock);
		FUNC3(DEBUG1,
				(FUNC4("standby \"%s\" now has synchronous standby priority %u",
						application_name, priority)));
	}
}