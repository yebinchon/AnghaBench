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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 size_t POSTMASTER_FD_WATCH ; 
 int /*<<< orphan*/  PostmasterHandle ; 
 scalar_t__ PostmasterPid ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * postmaster_alive_fds ; 

__attribute__((used)) static void
FUNC10(void)
{
#ifndef WIN32

	/*
	 * Create a pipe. Postmaster holds the write end of the pipe open
	 * (POSTMASTER_FD_OWN), and children hold the read end. Children can pass
	 * the read file descriptor to select() to wake up in case postmaster
	 * dies, or check for postmaster death with a (read() == 0). Children must
	 * close the write end as soon as possible after forking, because EOF
	 * won't be signaled in the read end until all processes have closed the
	 * write fd. That is taken care of in ClosePostmasterPorts().
	 */
	FUNC0(MyProcPid == PostmasterPid);
	if (FUNC9(postmaster_alive_fds) < 0)
		FUNC4(FATAL,
				(FUNC5(),
				 FUNC7("could not create pipe to monitor postmaster death: %m")));

	/*
	 * Set O_NONBLOCK to allow testing for the fd's presence with a read()
	 * call.
	 */
	if (FUNC8(postmaster_alive_fds[POSTMASTER_FD_WATCH], F_SETFL, O_NONBLOCK) == -1)
		FUNC4(FATAL,
				(FUNC6(),
				 FUNC7("could not set postmaster death monitoring pipe to nonblocking mode: %m")));
#else

	/*
	 * On Windows, we use a process handle for the same purpose.
	 */
	if (DuplicateHandle(GetCurrentProcess(),
						GetCurrentProcess(),
						GetCurrentProcess(),
						&PostmasterHandle,
						0,
						TRUE,
						DUPLICATE_SAME_ACCESS) == 0)
		ereport(FATAL,
				(errmsg_internal("could not duplicate postmaster handle: error code %lu",
								 GetLastError())));
#endif							/* WIN32 */
}