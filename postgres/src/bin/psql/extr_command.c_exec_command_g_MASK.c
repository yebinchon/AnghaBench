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
struct TYPE_2__ {int g_expanded; int /*<<< orphan*/ * gfname; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_FILEPIPE ; 
 int /*<<< orphan*/  PSQL_CMD_SEND ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 TYPE_1__ pset ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static backslashResult
FUNC6(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		char	   *fname = FUNC4(scan_state,
												   OT_FILEPIPE, NULL, false);

		if (!fname)
			pset.gfname = NULL;
		else
		{
			FUNC0(&fname);
			pset.gfname = FUNC3(fname);
		}
		FUNC1(fname);
		if (FUNC5(cmd, "gx") == 0)
			pset.g_expanded = true;
		status = PSQL_CMD_SEND;
	}
	else
		FUNC2(scan_state);

	return status;
}