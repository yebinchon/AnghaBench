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
struct TYPE_2__ {int timing; int /*<<< orphan*/  quiet; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int FUNC0 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC6(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt = FUNC4(scan_state,
												 OT_NORMAL, NULL, false);

		if (opt)
			success = FUNC0(opt, "\\timing", &pset.timing);
		else
			pset.timing = !pset.timing;
		if (!pset.quiet)
		{
			if (pset.timing)
				FUNC5(FUNC1("Timing is on."));
			else
				FUNC5(FUNC1("Timing is off."));
		}
		FUNC2(opt);
	}
	else
		FUNC3(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}