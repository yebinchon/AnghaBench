#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_4__ {int /*<<< orphan*/  pager; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {TYPE_2__ popt; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC7(PsqlScanState scan_state, bool active_branch)
{
	if (active_branch)
	{
		char	   *opt0 = FUNC3(scan_state,
												  OT_NORMAL, NULL, false);

		if (!opt0 || FUNC5(opt0, "commands") == 0)
			FUNC4(pset.popt.topt.pager);
		else if (FUNC5(opt0, "options") == 0)
			FUNC6(pset.popt.topt.pager);
		else if (FUNC5(opt0, "variables") == 0)
			FUNC1(pset.popt.topt.pager);
		else
			FUNC4(pset.popt.topt.pager);

		if (opt0)
			FUNC0(opt0);
	}
	else
		FUNC2(scan_state);

	return PSQL_CMD_SKIP_LINE;
}