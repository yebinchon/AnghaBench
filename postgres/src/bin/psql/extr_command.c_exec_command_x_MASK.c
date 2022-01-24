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
struct TYPE_2__ {int /*<<< orphan*/  quiet; int /*<<< orphan*/  popt; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static backslashResult
FUNC4(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt = FUNC3(scan_state,
												 OT_NORMAL, NULL, true);

		success = FUNC0("expanded", opt, &pset.popt, pset.quiet);
		FUNC1(opt);
	}
	else
		FUNC2(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}