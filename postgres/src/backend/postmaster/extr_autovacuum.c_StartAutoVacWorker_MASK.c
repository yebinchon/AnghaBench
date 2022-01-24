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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 

int
FUNC7(void)
{
	pid_t		worker_pid;

#ifdef EXEC_BACKEND
	switch ((worker_pid = avworker_forkexec()))
#else
	switch ((worker_pid = FUNC6()))
#endif
	{
		case -1:
			FUNC4(LOG,
					(FUNC5("could not fork autovacuum worker process: %m")));
			return 0;

#ifndef EXEC_BACKEND
		case 0:
			/* in postmaster child ... */
			FUNC2();

			/* Close the postmaster's sockets */
			FUNC1(false);

			FUNC0(0, NULL);
			break;
#endif
		default:
			return (int) worker_pid;
	}

	/* shouldn't get here */
	return 0;
}