#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pgdata; scalar_t__ bindir; } ;
struct TYPE_5__ {int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 TYPE_2__ new_cluster ; 
 TYPE_2__ old_cluster ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__ user_opts ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(char *argv0, bool *live_check)
{
	/*
	 * make sure the user has a clean environment, otherwise, we may confuse
	 * libpq when we connect to one (or both) of the servers.
	 */
	FUNC1();

	/*
	 * In case the user hasn't specified the directory for the new binaries
	 * with -B, default to using the path of the currently executed pg_upgrade
	 * binary.
	 */
	if (!new_cluster.bindir)
	{
		char		exec_path[MAXPGPATH];

		if (FUNC2(argv0, exec_path) < 0)
			FUNC4("%s: could not find own program executable\n", argv0);
		/* Trim off program name and keep just path */
		*FUNC3(exec_path) = '\0';
		FUNC0(exec_path);
		new_cluster.bindir = FUNC5(exec_path);
	}

	FUNC9();

	/* no postmasters should be running, except for a live check */
	if (FUNC6(old_cluster.pgdata))
	{
		/*
		 * If we have a postmaster.pid file, try to start the server.  If it
		 * starts, the pid file was stale, so stop the server.  If it doesn't
		 * start, assume the server is running.  If the pid file is left over
		 * from a server crash, this also allows any committed transactions
		 * stored in the WAL to be replayed so they are not lost, because WAL
		 * files are not transferred from old to new servers.  We later check
		 * for a clean shutdown.
		 */
		if (FUNC7(&old_cluster, false))
			FUNC8(false);
		else
		{
			if (!user_opts.check)
				FUNC4("There seems to be a postmaster servicing the old cluster.\n"
						 "Please shutdown that postmaster and try again.\n");
			else
				*live_check = true;
		}
	}

	/* same goes for the new postmaster */
	if (FUNC6(new_cluster.pgdata))
	{
		if (FUNC7(&new_cluster, false))
			FUNC8(false);
		else
			FUNC4("There seems to be a postmaster servicing the new cluster.\n"
					 "Please shutdown that postmaster and try again.\n");
	}
}