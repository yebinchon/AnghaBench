#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pgpid_t ;
struct TYPE_3__ {scalar_t__ dwProcessId; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_1__ PROCESS_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 
 char* DEVNULL ; 
 scalar_t__ FUNC2 () ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* exec_path ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 char* FUNC8 (char*) ; 
 char* log_file ; 
 char* pgdata_opt ; 
 char* post_opts ; 
 int /*<<< orphan*/  postmasterProcess ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static pgpid_t
FUNC13(void)
{
	char		cmd[MAXPGPATH];

#ifndef WIN32
	pgpid_t		pm_pid;

	/* Flush stdio channels just before fork, to avoid double-output problems */
	FUNC6(stdout);
	FUNC6(stderr);

	pm_pid = FUNC7();
	if (pm_pid < 0)
	{
		/* fork failed */
		FUNC12(FUNC3("%s: could not start server: %s\n"),
					 progname, FUNC11(errno));
		FUNC5(1);
	}
	if (pm_pid > 0)
	{
		/* fork succeeded, in parent */
		return pm_pid;
	}

	/* fork succeeded, in child */

	/*
	 * If possible, detach the postmaster process from the launching process
	 * group and make it a group leader, so that it doesn't get signaled along
	 * with the current group that launched it.
	 */
#ifdef HAVE_SETSID
	if (setsid() < 0)
	{
		write_stderr(_("%s: could not start server due to setsid() failure: %s\n"),
					 progname, strerror(errno));
		exit(1);
	}
#endif

	/*
	 * Since there might be quotes to handle here, it is easier simply to pass
	 * everything to a shell to process them.  Use exec so that the postmaster
	 * has the same PID as the current child process.
	 */
	if (log_file != NULL)
		FUNC10(cmd, MAXPGPATH, "exec \"%s\" %s%s < \"%s\" >> \"%s\" 2>&1",
				 exec_path, pgdata_opt, post_opts,
				 DEVNULL, log_file);
	else
		FUNC10(cmd, MAXPGPATH, "exec \"%s\" %s%s < \"%s\" 2>&1",
				 exec_path, pgdata_opt, post_opts, DEVNULL);

	(void) FUNC4("/bin/sh", "/bin/sh", "-c", cmd, (char *) NULL);

	/* exec failed */
	FUNC12(FUNC3("%s: could not start server: %s\n"),
				 progname, FUNC11(errno));
	FUNC5(1);

	return 0;					/* keep dumb compilers quiet */

#else							/* WIN32 */

	/*
	 * As with the Unix case, it's easiest to use the shell (CMD.EXE) to
	 * handle redirection etc.  Unfortunately CMD.EXE lacks any equivalent of
	 * "exec", so we don't get to find out the postmaster's PID immediately.
	 */
	PROCESS_INFORMATION pi;
	const char *comspec;

	/* Find CMD.EXE location using COMSPEC, if it's set */
	comspec = getenv("COMSPEC");
	if (comspec == NULL)
		comspec = "CMD";

	if (log_file != NULL)
		snprintf(cmd, MAXPGPATH, "\"%s\" /C \"\"%s\" %s%s < \"%s\" >> \"%s\" 2>&1\"",
				 comspec, exec_path, pgdata_opt, post_opts, DEVNULL, log_file);
	else
		snprintf(cmd, MAXPGPATH, "\"%s\" /C \"\"%s\" %s%s < \"%s\" 2>&1\"",
				 comspec, exec_path, pgdata_opt, post_opts, DEVNULL);

	if (!CreateRestrictedProcess(cmd, &pi, false))
	{
		write_stderr(_("%s: could not start server: error code %lu\n"),
					 progname, (unsigned long) GetLastError());
		exit(1);
	}
	/* Don't close command process handle here; caller must do so */
	postmasterProcess = pi.hProcess;
	CloseHandle(pi.hThread);
	return pi.dwProcessId;		/* Shell's PID, not postmaster's! */
#endif							/* WIN32 */
}