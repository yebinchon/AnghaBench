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
struct TYPE_2__ {int /*<<< orphan*/  vars; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,scalar_t__) ; 
 char* FUNC5 (char*) ; 
 TYPE_1__ pset ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static backslashResult
FUNC9(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt0 = FUNC6(scan_state,
												  OT_NORMAL, NULL, false);

		if (!opt0)
		{
			/* list all variables */
			FUNC0(pset.vars);
			success = true;
		}
		else
		{
			/*
			 * Set variable to the concatenation of the arguments.
			 */
			char	   *newval;
			char	   *opt;

			opt = FUNC6(scan_state,
										 OT_NORMAL, NULL, false);
			newval = FUNC5(opt ? opt : "");
			FUNC2(opt);

			while ((opt = FUNC6(scan_state,
												 OT_NORMAL, NULL, false)))
			{
				newval = FUNC4(newval, FUNC8(newval) + FUNC8(opt) + 1);
				FUNC7(newval, opt);
				FUNC2(opt);
			}

			if (!FUNC1(pset.vars, opt0, newval))
				success = false;

			FUNC2(newval);
		}
		FUNC2(opt0);
	}
	else
		FUNC3(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}