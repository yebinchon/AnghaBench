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
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static backslashResult
FUNC7(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *fname = FUNC5(scan_state,
												   OT_NORMAL, NULL, true);

		if (!fname)
		{
			FUNC3("\\%s: missing required argument", cmd);
			success = false;
		}
		else
		{
			bool		include_relative;

			include_relative = (FUNC6(cmd, "ir") == 0
								|| FUNC6(cmd, "include_relative") == 0);
			FUNC0(&fname);
			success = (FUNC4(fname, include_relative) == EXIT_SUCCESS);
			FUNC1(fname);
		}
	}
	else
		FUNC2(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}