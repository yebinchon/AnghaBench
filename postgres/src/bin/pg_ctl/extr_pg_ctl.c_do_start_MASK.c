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
typedef  scalar_t__ pgpid_t ;
typedef  int /*<<< orphan*/  env_var ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  PG_BACKEND_VERSIONSTR ; 
#define  POSTMASTER_FAILED 130 
#define  POSTMASTER_READY 129 
#define  POSTMASTER_STILL_STARTING 128 
 scalar_t__ RESTART_COMMAND ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ allow_core_files ; 
 int /*<<< orphan*/  argv0 ; 
 scalar_t__ ctl_command ; 
 scalar_t__ do_wait ; 
 int /*<<< orphan*/ * exec_path ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 char* pgdata_opt ; 
 scalar_t__ postmasterPID ; 
 int /*<<< orphan*/  postmasterProcess ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  trap_sigint_during_startup ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(void)
{
	pgpid_t		old_pid = 0;
	pgpid_t		pm_pid;

	if (ctl_command != RESTART_COMMAND)
	{
		old_pid = FUNC4(false);
		if (old_pid != 0)
			FUNC14(FUNC1("%s: another server might be running; "
						   "trying to start server anyway\n"),
						 progname);
	}

	FUNC9();

	/* No -D or -D already added during server start */
	if (ctl_command == RESTART_COMMAND || pgdata_opt == NULL)
		pgdata_opt = "";

	if (exec_path == NULL)
		exec_path = FUNC3(argv0, "postgres", PG_BACKEND_VERSIONSTR);

#if defined(HAVE_GETRLIMIT) && defined(RLIMIT_CORE)
	if (allow_core_files)
		unlimit_core_size();
#endif

	/*
	 * If possible, tell the postmaster our parent shell's PID (see the
	 * comments in CreateLockFile() for motivation).  Windows hasn't got
	 * getppid() unfortunately.
	 */
#ifndef WIN32
	{
		static char env_var[32];

		FUNC10(env_var, sizeof(env_var), "PG_GRANDPARENT_PID=%d",
				 (int) FUNC5());
		FUNC8(env_var);
	}
#endif

	pm_pid = FUNC11();

	if (do_wait)
	{
		/*
		 * If the user interrupts the startup (e.g. with CTRL-C), we'd like to
		 * abort the server launch.  Install a signal handler that will
		 * forward SIGINT to the postmaster process, while we wait.
		 *
		 * (We don't bother to reset the signal handler after the launch, as
		 * we're about to exit, anyway.)
		 */
		postmasterPID = pm_pid;
		FUNC6(SIGINT, trap_sigint_during_startup);

		FUNC7(FUNC1("waiting for server to start..."));

		switch (FUNC13(pm_pid, false))
		{
			case POSTMASTER_READY:
				FUNC7(FUNC1(" done\n"));
				FUNC7(FUNC1("server started\n"));
				break;
			case POSTMASTER_STILL_STARTING:
				FUNC7(FUNC1(" stopped waiting\n"));
				FUNC14(FUNC1("%s: server did not start in time\n"),
							 progname);
				FUNC2(1);
				break;
			case POSTMASTER_FAILED:
				FUNC7(FUNC1(" stopped waiting\n"));
				FUNC14(FUNC1("%s: could not start server\n"
							   "Examine the log output.\n"),
							 progname);
				FUNC2(1);
				break;
		}
	}
	else
		FUNC7(FUNC1("server starting\n"));

#ifdef WIN32
	/* Now we don't need the handle to the shell process anymore */
	CloseHandle(postmasterProcess);
	postmasterProcess = INVALID_HANDLE_VALUE;
#endif
}