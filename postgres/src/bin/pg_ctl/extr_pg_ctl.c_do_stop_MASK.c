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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ pgpid_t ;

/* Variables and functions */
 scalar_t__ DB_IN_ARCHIVE_RECOVERY ; 
 scalar_t__ SMART_MODE ; 
 int USEC_PER_SEC ; 
 int WAITS_PER_SEC ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  backup_file ; 
 int /*<<< orphan*/  do_wait ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  pid_file ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ shutdown_mode ; 
 int /*<<< orphan*/  sig ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int wait_seconds ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(void)
{
	int			cnt;
	pgpid_t		pid;
	struct stat statbuf;

	pid = FUNC3(false);

	if (pid == 0)				/* no pid file */
	{
		FUNC9(FUNC0("%s: PID file \"%s\" does not exist\n"), progname, pid_file);
		FUNC9(FUNC0("Is server running?\n"));
		FUNC1(1);
	}
	else if (pid < 0)			/* standalone backend, not postmaster */
	{
		pid = -pid;
		FUNC9(FUNC0("%s: cannot stop server; "
					   "single-user server is running (PID: %ld)\n"),
					 progname, pid);
		FUNC1(1);
	}

	if (FUNC4((pid_t) pid, sig) != 0)
	{
		FUNC9(FUNC0("%s: could not send stop signal (PID: %ld): %s\n"), progname, pid,
					 FUNC8(errno));
		FUNC1(1);
	}

	if (!do_wait)
	{
		FUNC6(FUNC0("server shutting down\n"));
		return;
	}
	else
	{
		/*
		 * If backup_label exists, an online backup is running. Warn the user
		 * that smart shutdown will wait for it to finish. However, if the
		 * server is in archive recovery, we're recovering from an online
		 * backup instead of performing one.
		 */
		if (shutdown_mode == SMART_MODE &&
			FUNC7(backup_file, &statbuf) == 0 &&
			FUNC2() != DB_IN_ARCHIVE_RECOVERY)
		{
			FUNC6(FUNC0("WARNING: online backup mode is active\n"
						"Shutdown will not complete until pg_stop_backup() is called.\n\n"));
		}

		FUNC6(FUNC0("waiting for server to shut down..."));

		for (cnt = 0; cnt < wait_seconds * WAITS_PER_SEC; cnt++)
		{
			if ((pid = FUNC3(false)) != 0)
			{
				if (cnt % WAITS_PER_SEC == 0)
					FUNC6(".");
				FUNC5(USEC_PER_SEC / WAITS_PER_SEC);
			}
			else
				break;
		}

		if (pid != 0)			/* pid file still exists */
		{
			FUNC6(FUNC0(" failed\n"));

			FUNC9(FUNC0("%s: server does not shut down\n"), progname);
			if (shutdown_mode == SMART_MODE)
				FUNC9(FUNC0("HINT: The \"-m fast\" option immediately disconnects sessions rather than\n"
							   "waiting for session-initiated disconnection.\n"));
			FUNC1(1);
		}
		FUNC6(FUNC0(" done\n"));

		FUNC6(FUNC0("server stopped\n"));
	}
}