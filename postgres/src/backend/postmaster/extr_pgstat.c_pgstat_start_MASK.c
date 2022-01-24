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
 scalar_t__ PGINVALID_SOCKET ; 
 scalar_t__ PGSTAT_RESTART_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ last_pgstat_start_time ; 
 scalar_t__ pgStatSock ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(void)
{
	time_t		curtime;
	pid_t		pgStatPid;

	/*
	 * Check that the socket is there, else pgstat_init failed and we can do
	 * nothing useful.
	 */
	if (pgStatSock == PGINVALID_SOCKET)
		return 0;

	/*
	 * Do nothing if too soon since last collector start.  This is a safety
	 * valve to protect against continuous respawn attempts if the collector
	 * is dying immediately at launch.  Note that since we will be re-called
	 * from the postmaster main loop, we will get another chance later.
	 */
	curtime = FUNC9(NULL);
	if ((unsigned int) (curtime - last_pgstat_start_time) <
		(unsigned int) PGSTAT_RESTART_INTERVAL)
		return 0;
	last_pgstat_start_time = curtime;

	/*
	 * Okay, fork off the collector.
	 */
#ifdef EXEC_BACKEND
	switch ((pgStatPid = pgstat_forkexec()))
#else
	switch ((pgStatPid = FUNC7()))
#endif
	{
		case -1:
			FUNC5(LOG,
					(FUNC6("could not fork statistics collector: %m")));
			return 0;

#ifndef EXEC_BACKEND
		case 0:
			/* in postmaster child ... */
			FUNC1();

			/* Close the postmaster's sockets */
			FUNC0(false);

			/* Drop our connection to postmaster's shared memory, as well */
			FUNC4();
			FUNC2();

			FUNC3(0, NULL);
			break;
#endif

		default:
			return (int) pgStatPid;
	}

	/* shouldn't get here */
	return 0;
}