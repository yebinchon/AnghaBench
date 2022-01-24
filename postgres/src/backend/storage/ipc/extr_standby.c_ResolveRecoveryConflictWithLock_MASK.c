#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_7__ {scalar_t__ fin_time; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int locktag_type; } ;
typedef  TYPE_1__ LOCKTAG ;
typedef  TYPE_2__ EnableTimeoutParams ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  InHotStandby ; 
 int PG_WAIT_LOCK ; 
 int /*<<< orphan*/  PROCSIG_RECOVERY_CONFLICT_LOCK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDBY_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  TMPARAM_AT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

void
FUNC8(LOCKTAG locktag)
{
	TimestampTz ltime;

	FUNC0(InHotStandby);

	ltime = FUNC3();

	if (FUNC1() >= ltime)
	{
		/*
		 * We're already behind, so clear a path as quickly as possible.
		 */
		VirtualTransactionId *backends;

		backends = FUNC2(&locktag, AccessExclusiveLock, NULL);
		FUNC5(backends,
											   PROCSIG_RECOVERY_CONFLICT_LOCK);
	}
	else
	{
		/*
		 * Wait (or wait again) until ltime
		 */
		EnableTimeoutParams timeouts[1];

		timeouts[0].id = STANDBY_LOCK_TIMEOUT;
		timeouts[0].type = TMPARAM_AT;
		timeouts[0].fin_time = ltime;
		FUNC7(timeouts, 1);
	}

	/* Wait to be signaled by the release of the Relation Lock */
	FUNC4(PG_WAIT_LOCK | locktag.locktag_type);

	/*
	 * Clear any timeout requests established above.  We assume here that the
	 * Startup process doesn't have any other outstanding timeouts than those
	 * used by this function. If that stops being true, we could cancel the
	 * timeouts individually, but that'd be slower.
	 */
	FUNC6(false);
}