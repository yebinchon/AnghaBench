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
struct TYPE_2__ {int crosstab_flag; int /*<<< orphan*/ * ctv_args; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_SEND ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static backslashResult
FUNC3(PsqlScanState scan_state, bool active_branch)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		int			i;

		for (i = 0; i < FUNC1(pset.ctv_args); i++)
			pset.ctv_args[i] = FUNC2(scan_state,
													  OT_NORMAL, NULL, true);
		pset.crosstab_flag = true;
		status = PSQL_CMD_SEND;
	}
	else
		FUNC0(scan_state);

	return status;
}