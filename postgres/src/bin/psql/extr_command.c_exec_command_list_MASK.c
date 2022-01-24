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
 int FUNC2 (char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char const*,char) ; 

__attribute__((used)) static backslashResult
FUNC5(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *pattern;
		bool		show_verbose;

		pattern = FUNC3(scan_state,
										 OT_NORMAL, NULL, true);

		show_verbose = FUNC4(cmd, '+') ? true : false;

		success = FUNC2(pattern, show_verbose);

		if (pattern)
			FUNC0(pattern);
	}
	else
		FUNC1(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}