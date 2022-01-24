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
typedef  int /*<<< orphan*/  full_path ;

/* Variables and functions */
 char* DEVNULL ; 
 int MAXCMDLEN ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BACKEND_VERSIONSTR ; 
 char* datadir_target ; 
 scalar_t__ dry_run ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(const char *argv0)
{
	int			ret;
#define MAXCMDLEN (2 * MAXPGPATH)
	char		exec_path[MAXPGPATH];
	char		cmd[MAXCMDLEN];

	/* locate postgres binary */
	if ((ret = FUNC1(argv0, "postgres",
							   PG_BACKEND_VERSIONSTR,
							   exec_path)) < 0)
	{
		char		full_path[MAXPGPATH];

		if (FUNC0(argv0, full_path) < 0)
			FUNC6(full_path, progname, sizeof(full_path));

		if (ret == -1)
			FUNC2("The program \"%s\" is needed by %s but was\n"
					 "not found in the same directory as \"%s\".\n"
					 "Check your installation.",
					 "postgres", progname, full_path);
		else
			FUNC2("The program \"%s\" was found by \"%s\" but was\n"
					 "not the same version as %s.\n"
					 "Check your installation.",
					 "postgres", full_path, progname);
	}

	FUNC4("executing \"%s\" for target server to complete crash recovery",
				exec_path);

	/*
	 * Skip processing if requested, but only after ensuring presence of
	 * postgres.
	 */
	if (dry_run)
		return;

	/*
	 * Finally run postgres in single-user mode.  There is no need to use
	 * fsync here.  This makes the recovery faster, and the target data folder
	 * is synced at the end anyway.
	 */
	FUNC5(cmd, MAXCMDLEN, "\"%s\" --single -F -D \"%s\" template1 < \"%s\"",
			 exec_path, datadir_target, DEVNULL);

	if (FUNC7(cmd) != 0)
	{
		FUNC3("postgres single-user mode of target instance failed");
		FUNC2("Command was: %s", cmd);
	}
}