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
typedef  int TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  ArchiveRecoveryRequested ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  EnableHotStandby ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * PrimaryConnInfo ; 
 scalar_t__ RECOVERY_TARGET_ACTION_PAUSE ; 
 scalar_t__ RECOVERY_TARGET_ACTION_SHUTDOWN ; 
 scalar_t__ RECOVERY_TARGET_TIME ; 
 scalar_t__ RECOVERY_TARGET_TIMELINE_CONTROLFILE ; 
 scalar_t__ RECOVERY_TARGET_TIMELINE_LATEST ; 
 scalar_t__ RECOVERY_TARGET_TIMELINE_NUMERIC ; 
 scalar_t__ StandbyModeRequested ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/ * recoveryRestoreCommand ; 
 scalar_t__ recoveryTarget ; 
 scalar_t__ recoveryTargetAction ; 
 int recoveryTargetTLI ; 
 int recoveryTargetTLIRequested ; 
 int /*<<< orphan*/  recoveryTargetTime ; 
 scalar_t__ recoveryTargetTimeLineGoal ; 
 int /*<<< orphan*/  recovery_target_time_string ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  timestamptz_in ; 

__attribute__((used)) static void
FUNC13(void)
{
	if (!ArchiveRecoveryRequested)
		return;

	/*
	 * Check for compulsory parameters
	 */
	if (StandbyModeRequested)
	{
		if ((PrimaryConnInfo == NULL || FUNC12(PrimaryConnInfo, "") == 0) &&
			(recoveryRestoreCommand == NULL || FUNC12(recoveryRestoreCommand, "") == 0))
			FUNC6(WARNING,
					(FUNC9("specified neither primary_conninfo nor restore_command"),
					 FUNC8("The database server will regularly poll the pg_wal subdirectory to check for files placed there.")));
	}
	else
	{
		if (recoveryRestoreCommand == NULL ||
			FUNC12(recoveryRestoreCommand, "") == 0)
			FUNC6(FATAL,
					(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC9("must specify restore_command when standby mode is not enabled")));
	}

	/*
	 * Override any inconsistent requests. Note that this is a change of
	 * behaviour in 9.5; prior to this we simply ignored a request to pause if
	 * hot_standby = off, which was surprising behaviour.
	 */
	if (recoveryTargetAction == RECOVERY_TARGET_ACTION_PAUSE &&
		!EnableHotStandby)
		recoveryTargetAction = RECOVERY_TARGET_ACTION_SHUTDOWN;

	/*
	 * Final parsing of recovery_target_time string; see also
	 * check_recovery_target_time().
	 */
	if (recoveryTarget == RECOVERY_TARGET_TIME)
	{
		recoveryTargetTime = FUNC2(FUNC3(timestamptz_in,
																	 FUNC1(recovery_target_time_string),
																	 FUNC5(InvalidOid),
																	 FUNC4(-1)));
	}

	/*
	 * If user specified recovery_target_timeline, validate it or compute the
	 * "latest" value.  We can't do this until after we've gotten the restore
	 * command and set InArchiveRecovery, because we need to fetch timeline
	 * history files from the archive.
	 */
	if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_NUMERIC)
	{
		TimeLineID	rtli = recoveryTargetTLIRequested;

		/* Timeline 1 does not have a history file, all else should */
		if (rtli != 1 && !FUNC10(rtli))
			FUNC6(FATAL,
					(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC9("recovery target timeline %u does not exist",
							rtli)));
		recoveryTargetTLI = rtli;
	}
	else if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_LATEST)
	{
		/* We start the "latest" search from pg_control's timeline */
		recoveryTargetTLI = FUNC11(recoveryTargetTLI);
	}
	else
	{
		/*
		 * else we just use the recoveryTargetTLI as already read from
		 * ControlFile
		 */
		FUNC0(recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_CONTROLFILE);
	}
}