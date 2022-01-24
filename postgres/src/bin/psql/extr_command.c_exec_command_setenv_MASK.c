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
typedef  int /*<<< orphan*/  backslashResult ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static backslashResult
FUNC8(PsqlScanState scan_state, bool active_branch,
					const char *cmd)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *envvar = FUNC4(scan_state,
													OT_NORMAL, NULL, false);
		char	   *envval = FUNC4(scan_state,
													OT_NORMAL, NULL, false);

		if (!envvar)
		{
			FUNC2("\\%s: missing required argument", cmd);
			success = false;
		}
		else if (FUNC6(envvar, '=') != NULL)
		{
			FUNC2("\\%s: environment variable name must not contain \"=\"",
						 cmd);
			success = false;
		}
		else if (!envval)
		{
			/* No argument - unset the environment variable */
			FUNC7(envvar);
			success = true;
		}
		else
		{
			/* Set variable to the value of the next argument */
			char	   *newval;

			newval = FUNC3("%s=%s", envvar, envval);
			FUNC5(newval);
			success = true;

			/*
			 * Do not free newval here, it will screw up the environment if
			 * you do. See putenv man page for details. That means we leak a
			 * bit of memory here, but not enough to worry about.
			 */
		}
		FUNC0(envvar);
		FUNC0(envval);
	}
	else
		FUNC1(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}