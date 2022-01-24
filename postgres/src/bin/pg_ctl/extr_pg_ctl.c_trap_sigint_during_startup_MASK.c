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
typedef  int /*<<< orphan*/  pgpid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int postmasterPID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int sig)
{
	if (postmasterPID != -1)
	{
		if (FUNC1(postmasterPID, SIGINT) != 0)
			FUNC5(FUNC0("%s: could not send stop signal (PID: %ld): %s\n"),
						 progname, (pgpid_t) postmasterPID, FUNC4(errno));
	}

	/*
	 * Clear the signal handler, and send the signal again, to terminate the
	 * process as normal.
	 */
	FUNC2(SIGINT, SIG_DFL);
	FUNC3(SIGINT);
}