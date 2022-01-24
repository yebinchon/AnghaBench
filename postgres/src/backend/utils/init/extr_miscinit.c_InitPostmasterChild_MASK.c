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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int IsUnderPostmaster ; 
 int /*<<< orphan*/  LocalLatchData ; 
 int /*<<< orphan*/ * MyLatch ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC9(void)
{
	IsUnderPostmaster = true;	/* we are a postmaster subprocess now */

	FUNC1();

	/*
	 * make sure stderr is in binary mode before anything can possibly be
	 * written to it, in case it's actually the syslogger pipe, so the pipe
	 * chunking protocol isn't disturbed. Non-logpipe data gets translated on
	 * redirection (e.g. via pg_ctl -l) anyway.
	 */
#ifdef WIN32
	_setmode(fileno(stderr), _O_BINARY);
#endif

	/* We don't want the postmaster's proc_exit() handlers */
	FUNC7();

	/* Initialize process-local latch support */
	FUNC2();
	MyLatch = &LocalLatchData;
	FUNC0(MyLatch);

	/*
	 * If possible, make this process a group leader, so that the postmaster
	 * can signal any child processes too. Not all processes will have
	 * children, but for consistency we make all postmaster child processes do
	 * this.
	 */
#ifdef HAVE_SETSID
	if (setsid() < 0)
		elog(FATAL, "setsid() failed: %m");
#endif

	/* Request a signal if the postmaster dies, if possible. */
	FUNC3();
}