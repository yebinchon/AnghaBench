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
struct TYPE_6__ {int /*<<< orphan*/  quiet; TYPE_2__ popt; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_3__ pset ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 

__attribute__((used)) static backslashResult
FUNC8(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *fname = FUNC6(scan_state,
												   OT_NORMAL, NULL, true);

		FUNC1(&fname);
		success = FUNC4(fname, pset.popt.topt.pager);
		if (success && !pset.quiet && fname)
			FUNC5(FUNC0("Wrote history to file \"%s\".\n"), fname);
		if (!fname)
			FUNC7('\n');
		FUNC2(fname);
	}
	else
		FUNC3(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}