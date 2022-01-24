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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 scalar_t__ IsUnderPostmaster ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ selfpipe_owner_pid ; 
 int selfpipe_readfd ; 
 int selfpipe_writefd ; 

void
FUNC5(void)
{
#ifndef WIN32
	int			pipefd[2];

	if (IsUnderPostmaster)
	{
		/*
		 * We might have inherited connections to a self-pipe created by the
		 * postmaster.  It's critical that child processes create their own
		 * self-pipes, of course, and we really want them to close the
		 * inherited FDs for safety's sake.
		 */
		if (selfpipe_owner_pid != 0)
		{
			/* Assert we go through here but once in a child process */
			FUNC0(selfpipe_owner_pid != MyProcPid);
			/* Release postmaster's pipe FDs; ignore any error */
			(void) FUNC1(selfpipe_readfd);
			(void) FUNC1(selfpipe_writefd);
			/* Clean up, just for safety's sake; we'll set these below */
			selfpipe_readfd = selfpipe_writefd = -1;
			selfpipe_owner_pid = 0;
		}
		else
		{
			/*
			 * Postmaster didn't create a self-pipe ... or else we're in an
			 * EXEC_BACKEND build, in which case it doesn't matter since the
			 * postmaster's pipe FDs were closed by the action of FD_CLOEXEC.
			 */
			FUNC0(selfpipe_readfd == -1);
		}
	}
	else
	{
		/* In postmaster or standalone backend, assert we do this but once */
		FUNC0(selfpipe_readfd == -1);
		FUNC0(selfpipe_owner_pid == 0);
	}

	/*
	 * Set up the self-pipe that allows a signal handler to wake up the
	 * poll()/epoll_wait() in WaitLatch. Make the write-end non-blocking, so
	 * that SetLatch won't block if the event has already been set many times
	 * filling the kernel buffer. Make the read-end non-blocking too, so that
	 * we can easily clear the pipe by reading until EAGAIN or EWOULDBLOCK.
	 * Also, make both FDs close-on-exec, since we surely do not want any
	 * child processes messing with them.
	 */
	if (FUNC4(pipefd) < 0)
		FUNC2(FATAL, "pipe() failed: %m");
	if (FUNC3(pipefd[0], F_SETFL, O_NONBLOCK) == -1)
		FUNC2(FATAL, "fcntl(F_SETFL) failed on read-end of self-pipe: %m");
	if (FUNC3(pipefd[1], F_SETFL, O_NONBLOCK) == -1)
		FUNC2(FATAL, "fcntl(F_SETFL) failed on write-end of self-pipe: %m");
	if (FUNC3(pipefd[0], F_SETFD, FD_CLOEXEC) == -1)
		FUNC2(FATAL, "fcntl(F_SETFD) failed on read-end of self-pipe: %m");
	if (FUNC3(pipefd[1], F_SETFD, FD_CLOEXEC) == -1)
		FUNC2(FATAL, "fcntl(F_SETFD) failed on write-end of self-pipe: %m");

	selfpipe_readfd = pipefd[0];
	selfpipe_writefd = pipefd[1];
	selfpipe_owner_pid = MyProcPid;
#else
	/* currently, nothing to do here for Windows */
#endif
}