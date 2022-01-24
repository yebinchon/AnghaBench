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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int /*<<< orphan*/  recoveryWakeupLatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ArchiveRecoveryRequested ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ RM_XACT_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WAIT_EVENT_RECOVERY_APPLY_DELAY ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,long,int /*<<< orphan*/ ) ; 
 int XLOG_XACT_COMMIT ; 
 int XLOG_XACT_COMMIT_PREPARED ; 
 int XLOG_XACT_OPMASK ; 
 TYPE_1__* XLogCtl ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,long,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reachedConsistency ; 
 int /*<<< orphan*/  recoveryDelayUntilTime ; 
 scalar_t__ recovery_min_apply_delay ; 

__attribute__((used)) static bool
FUNC11(XLogReaderState *record)
{
	uint8		xact_info;
	TimestampTz xtime;
	long		secs;
	int			microsecs;

	/* nothing to do if no delay configured */
	if (recovery_min_apply_delay <= 0)
		return false;

	/* no delay is applied on a database not yet consistent */
	if (!reachedConsistency)
		return false;

	/* nothing to do if crash recovery is requested */
	if (!ArchiveRecoveryRequested)
		return false;

	/*
	 * Is it a COMMIT record?
	 *
	 * We deliberately choose not to delay aborts since they have no effect on
	 * MVCC. We already allow replay of records that don't have a timestamp,
	 * so there is already opportunity for issues caused by early conflicts on
	 * standbys.
	 */
	if (FUNC8(record) != RM_XACT_ID)
		return false;

	xact_info = FUNC7(record) & XLOG_XACT_OPMASK;

	if (xact_info != XLOG_XACT_COMMIT &&
		xact_info != XLOG_XACT_COMMIT_PREPARED)
		return false;

	if (!FUNC10(record, &xtime))
		return false;

	recoveryDelayUntilTime =
		FUNC5(xtime, recovery_min_apply_delay);

	/*
	 * Exit without arming the latch if it's already past time to apply this
	 * record
	 */
	FUNC4(FUNC1(), recoveryDelayUntilTime,
						&secs, &microsecs);
	if (secs <= 0 && microsecs <= 0)
		return false;

	while (true)
	{
		FUNC3(&XLogCtl->recoveryWakeupLatch);

		/* might change the trigger file's location */
		FUNC2();

		if (FUNC0())
			break;

		/*
		 * Wait for difference between GetCurrentTimestamp() and
		 * recoveryDelayUntilTime
		 */
		FUNC4(FUNC1(), recoveryDelayUntilTime,
							&secs, &microsecs);

		/*
		 * NB: We're ignoring waits below recovery_min_apply_delay's
		 * resolution.
		 */
		if (secs <= 0 && microsecs / 1000 <= 0)
			break;

		FUNC9(DEBUG2, "recovery apply delay %ld seconds, %d milliseconds",
			 secs, microsecs / 1000);

		(void) FUNC6(&XLogCtl->recoveryWakeupLatch,
						 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
						 secs * 1000L + microsecs / 1000,
						 WAIT_EVENT_RECOVERY_APPLY_DELAY);
	}
	return true;
}