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
typedef  scalar_t__ time_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ PGARCH_RESTART_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ last_pgarch_start_time ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(void)
{
	time_t		curtime;
	pid_t		pgArchPid;

	/*
	 * Do nothing if no archiver needed
	 */
	if (!FUNC4())
		return 0;

	/*
	 * Do nothing if too soon since last archiver start.  This is a safety
	 * valve to protect against continuous respawn attempts if the archiver is
	 * dying immediately at launch. Note that since we will be re-called from
	 * the postmaster main loop, we will get another chance later.
	 */
	curtime = FUNC10(NULL);
	if ((unsigned int) (curtime - last_pgarch_start_time) <
		(unsigned int) PGARCH_RESTART_INTERVAL)
		return 0;
	last_pgarch_start_time = curtime;

#ifdef EXEC_BACKEND
	switch ((pgArchPid = pgarch_forkexec()))
#else
	switch ((pgArchPid = FUNC8()))
#endif
	{
		case -1:
			FUNC6(LOG,
					(FUNC7("could not fork archiver: %m")));
			return 0;

#ifndef EXEC_BACKEND
		case 0:
			/* in postmaster child ... */
			FUNC1();

			/* Close the postmaster's sockets */
			FUNC0(false);

			/* Drop our connection to postmaster's shared memory, as well */
			FUNC5();
			FUNC2();

			FUNC3(0, NULL);
			break;
#endif

		default:
			return (int) pgArchPid;
	}

	/* shouldn't get here */
	return 0;
}