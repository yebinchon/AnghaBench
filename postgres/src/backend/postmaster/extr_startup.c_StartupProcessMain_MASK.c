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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STANDBY_DEADLOCK_TIMEOUT ; 
 int /*<<< orphan*/  STANDBY_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  STANDBY_TIMEOUT ; 
 int /*<<< orphan*/  StandbyDeadLockHandler ; 
 int /*<<< orphan*/  StandbyLockTimeoutHandler ; 
 int /*<<< orphan*/  StandbyTimeoutHandler ; 
 int /*<<< orphan*/  StartupProcShutdownHandler ; 
 int /*<<< orphan*/  StartupProcSigHupHandler ; 
 int /*<<< orphan*/  StartupProcSigUsr1Handler ; 
 int /*<<< orphan*/  StartupProcTriggerHandler ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  startupproc_quickdie ; 

void
FUNC6(void)
{
	/*
	 * Properly accept or ignore signals the postmaster might send us.
	 */
	FUNC4(SIGHUP, StartupProcSigHupHandler); /* reload config file */
	FUNC4(SIGINT, SIG_IGN);	/* ignore query cancel */
	FUNC4(SIGTERM, StartupProcShutdownHandler);	/* request shutdown */
	FUNC4(SIGQUIT, startupproc_quickdie);	/* hard crash time */
	FUNC0();		/* establishes SIGALRM handler */
	FUNC4(SIGPIPE, SIG_IGN);
	FUNC4(SIGUSR1, StartupProcSigUsr1Handler);
	FUNC4(SIGUSR2, StartupProcTriggerHandler);

	/*
	 * Reset some signals that are accepted by postmaster but not here
	 */
	FUNC4(SIGCHLD, SIG_DFL);

	/*
	 * Register timeouts needed for standby mode
	 */
	FUNC2(STANDBY_DEADLOCK_TIMEOUT, StandbyDeadLockHandler);
	FUNC2(STANDBY_TIMEOUT, StandbyTimeoutHandler);
	FUNC2(STANDBY_LOCK_TIMEOUT, StandbyLockTimeoutHandler);

	/*
	 * Unblock signals (they were blocked when the postmaster forked us)
	 */
	FUNC1(&UnBlockSig);

	/*
	 * Do what we came for.
	 */
	FUNC3();

	/*
	 * Exit normally. Exit code 0 tells postmaster that we completed recovery
	 * successfully.
	 */
	FUNC5(0);
}