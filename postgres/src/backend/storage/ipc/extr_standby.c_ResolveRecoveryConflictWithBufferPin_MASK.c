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
typedef  scalar_t__ TimestampTz ;
struct TYPE_3__ {int /*<<< orphan*/  delay_ms; int /*<<< orphan*/  type; int /*<<< orphan*/  id; scalar_t__ fin_time; } ;
typedef  TYPE_1__ EnableTimeoutParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DeadlockTimeout ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  InHotStandby ; 
 int /*<<< orphan*/  PG_WAIT_BUFFER_PIN ; 
 int /*<<< orphan*/  PROCSIG_RECOVERY_CONFLICT_BUFFERPIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDBY_DEADLOCK_TIMEOUT ; 
 int /*<<< orphan*/  STANDBY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMPARAM_AFTER ; 
 int /*<<< orphan*/  TMPARAM_AT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

void
FUNC8(void)
{
	TimestampTz ltime;

	FUNC0(InHotStandby);

	ltime = FUNC2();

	if (ltime == 0)
	{
		/*
		 * We're willing to wait forever for conflicts, so set timeout for
		 * deadlock check only
		 */
		FUNC6(STANDBY_DEADLOCK_TIMEOUT, DeadlockTimeout);
	}
	else if (FUNC1() >= ltime)
	{
		/*
		 * We're already behind, so clear a path as quickly as possible.
		 */
		FUNC4(PROCSIG_RECOVERY_CONFLICT_BUFFERPIN);
	}
	else
	{
		/*
		 * Wake up at ltime, and check for deadlocks as well if we will be
		 * waiting longer than deadlock_timeout
		 */
		EnableTimeoutParams timeouts[2];

		timeouts[0].id = STANDBY_TIMEOUT;
		timeouts[0].type = TMPARAM_AT;
		timeouts[0].fin_time = ltime;
		timeouts[1].id = STANDBY_DEADLOCK_TIMEOUT;
		timeouts[1].type = TMPARAM_AFTER;
		timeouts[1].delay_ms = DeadlockTimeout;
		FUNC7(timeouts, 2);
	}

	/* Wait to be signaled by UnpinBuffer() */
	FUNC3(PG_WAIT_BUFFER_PIN);

	/*
	 * Clear any timeout requests established above.  We assume here that the
	 * Startup process doesn't have any other timeouts than what this function
	 * uses.  If that stops being true, we could cancel the timeouts
	 * individually, but that'd be slower.
	 */
	FUNC5(false);
}