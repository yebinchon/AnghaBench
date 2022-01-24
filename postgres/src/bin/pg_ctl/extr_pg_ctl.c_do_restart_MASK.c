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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  pid_file ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ shutdown_mode ; 
 int /*<<< orphan*/  sig ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int wait_seconds ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(void)
{
	int			cnt;
	pgpid_t		pid;
	struct stat statbuf;

	pid = FUNC4(false);

	if (pid == 0)				/* no pid file */
	{
		FUNC11(FUNC0("%s: PID file \"%s\" does not exist\n"),
					 progname, pid_file);
		FUNC11(FUNC0("Is server running?\n"));
		FUNC11(FUNC0("trying to start server anyway\n"));
		FUNC1();
		return;
	}
	else if (pid < 0)			/* standalone backend, not postmaster */
	{
		pid = -pid;
		if (FUNC7((pid_t) pid))
		{
			FUNC11(FUNC0("%s: cannot restart server; "
						   "single-user server is running (PID: %ld)\n"),
						 progname, pid);
			FUNC11(FUNC0("Please terminate the single-user server and try again.\n"));
			FUNC2(1);
		}
	}

	if (FUNC7((pid_t) pid))
	{
		if (FUNC5((pid_t) pid, sig) != 0)
		{
			FUNC11(FUNC0("%s: could not send stop signal (PID: %ld): %s\n"), progname, pid,
						 FUNC10(errno));
			FUNC2(1);
		}

		/*
		 * If backup_label exists, an online backup is running. Warn the user
		 * that smart shutdown will wait for it to finish. However, if the
		 * server is in archive recovery, we're recovering from an online
		 * backup instead of performing one.
		 */
		if (shutdown_mode == SMART_MODE &&
			FUNC9(backup_file, &statbuf) == 0 &&
			FUNC3() != DB_IN_ARCHIVE_RECOVERY)
		{
			FUNC8(FUNC0("WARNING: online backup mode is active\n"
						"Shutdown will not complete until pg_stop_backup() is called.\n\n"));
		}

		FUNC8(FUNC0("waiting for server to shut down..."));

		/* always wait for restart */

		for (cnt = 0; cnt < wait_seconds * WAITS_PER_SEC; cnt++)
		{
			if ((pid = FUNC4(false)) != 0)
			{
				if (cnt % WAITS_PER_SEC == 0)
					FUNC8(".");
				FUNC6(USEC_PER_SEC / WAITS_PER_SEC);
			}
			else
				break;
		}

		if (pid != 0)			/* pid file still exists */
		{
			FUNC8(FUNC0(" failed\n"));

			FUNC11(FUNC0("%s: server does not shut down\n"), progname);
			if (shutdown_mode == SMART_MODE)
				FUNC11(FUNC0("HINT: The \"-m fast\" option immediately disconnects sessions rather than\n"
							   "waiting for session-initiated disconnection.\n"));
			FUNC2(1);
		}

		FUNC8(FUNC0(" done\n"));
		FUNC8(FUNC0("server stopped\n"));
	}
	else
	{
		FUNC11(FUNC0("%s: old server process (PID: %ld) seems to be gone\n"),
					 progname, pid);
		FUNC11(FUNC0("starting server anyway\n"));
	}

	FUNC1();
}