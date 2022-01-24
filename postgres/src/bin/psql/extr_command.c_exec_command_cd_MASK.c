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
typedef  scalar_t__ uid_t ;
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  backslashResult ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 struct passwd* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static backslashResult
FUNC10(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt = FUNC8(scan_state,
												 OT_NORMAL, NULL, true);
		char	   *dir;

		if (opt)
			dir = opt;
		else
		{
#ifndef WIN32
			struct passwd *pw;
			uid_t		user_id = FUNC4();

			errno = 0;			/* clear errno before call */
			pw = FUNC5(user_id);
			if (!pw)
			{
				FUNC7("could not get home directory for user ID %ld: %s",
							 (long) user_id,
							 errno ? FUNC9(errno) : FUNC0("user does not exist"));
				FUNC2(EXIT_FAILURE);
			}
			dir = pw->pw_dir;
#else							/* WIN32 */

			/*
			 * On Windows, 'cd' without arguments prints the current
			 * directory, so if someone wants to code this here instead...
			 */
			dir = "/";
#endif							/* WIN32 */
		}

		if (FUNC1(dir) == -1)
		{
			FUNC7("\\%s: could not change directory to \"%s\": %m",
						 cmd, dir);
			success = false;
		}

		if (opt)
			FUNC3(opt);
	}
	else
		FUNC6(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}