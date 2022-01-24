#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_2__ {int /*<<< orphan*/  vars; int /*<<< orphan*/  inputfile; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__ pset ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static backslashResult
FUNC10(PsqlScanState scan_state, bool active_branch,
					const char *cmd)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt,
				   *prompt_text = NULL;
		char	   *arg1,
				   *arg2;

		arg1 = FUNC8(scan_state, OT_NORMAL, NULL, false);
		arg2 = FUNC8(scan_state, OT_NORMAL, NULL, false);

		if (!arg1)
		{
			FUNC6("\\%s: missing required argument", cmd);
			success = false;
		}
		else
		{
			char	   *result;

			if (arg2)
			{
				prompt_text = arg1;
				opt = arg2;
			}
			else
				opt = arg1;

			if (!pset.inputfile)
			{
				result = (char *) FUNC7(4096);
				FUNC9(prompt_text, result, 4096, true);
			}
			else
			{
				if (prompt_text)
				{
					FUNC2(prompt_text, stdout);
					FUNC1(stdout);
				}
				result = FUNC4(stdin);
				if (!result)
				{
					FUNC6("\\%s: could not read value for variable",
								 cmd);
					success = false;
				}
			}

			if (result &&
				!FUNC0(pset.vars, opt, result))
				success = false;

			if (result)
				FUNC3(result);
			if (prompt_text)
				FUNC3(prompt_text);
			FUNC3(opt);
		}
	}
	else
		FUNC5(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}