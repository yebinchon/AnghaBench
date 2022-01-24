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
 int /*<<< orphan*/  PSQL_CMD_UNKNOWN ; 
 int FUNC0 (char*,char*) ; 
 int FUNC1 (char*,char*) ; 
 int FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static backslashResult
FUNC10(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;
	bool		success = true;

	if (active_branch)
	{
		char	   *opt1,
				   *opt2;

		opt1 = FUNC8(scan_state,
									  OT_NORMAL, NULL, true);
		opt2 = FUNC8(scan_state,
									  OT_NORMAL, NULL, true);

		if (FUNC9(cmd + 3, "export") == 0)
		{
			if (!opt2)
			{
				FUNC7("\\%s: missing required argument", cmd);
				success = false;
			}
			else
			{
				FUNC4(&opt2);
				success = FUNC0(opt1, opt2);
			}
		}

		else if (FUNC9(cmd + 3, "import") == 0)
		{
			if (!opt1)
			{
				FUNC7("\\%s: missing required argument", cmd);
				success = false;
			}
			else
			{
				FUNC4(&opt1);
				success = FUNC1(opt1, opt2);
			}
		}

		else if (FUNC9(cmd + 3, "list") == 0)
			success = FUNC2();

		else if (FUNC9(cmd + 3, "unlink") == 0)
		{
			if (!opt1)
			{
				FUNC7("\\%s: missing required argument", cmd);
				success = false;
			}
			else
				success = FUNC3(opt1);
		}

		else
			status = PSQL_CMD_UNKNOWN;

		FUNC5(opt1);
		FUNC5(opt2);
	}
	else
		FUNC6(scan_state);

	if (!success)
		status = PSQL_CMD_ERROR;

	return status;
}