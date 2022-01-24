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
struct TYPE_4__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int /*<<< orphan*/  encoding; int /*<<< orphan*/  vars; TYPE_2__ popt; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_3__ pset ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC9(PsqlScanState scan_state, bool active_branch)
{
	if (active_branch)
	{
		char	   *encoding = FUNC7(scan_state,
													  OT_NORMAL, NULL, false);

		if (!encoding)
		{
			/* show encoding */
			FUNC8(FUNC5(pset.encoding));
		}
		else
		{
			/* set encoding */
			if (FUNC1(pset.db, encoding) == -1)
				FUNC6("%s: invalid encoding name or conversion procedure not found", encoding);
			else
			{
				/* save encoding info into psql internal data */
				pset.encoding = FUNC0(pset.db);
				pset.popt.topt.encoding = pset.encoding;
				FUNC2(pset.vars, "ENCODING",
							FUNC5(pset.encoding));
			}
			FUNC3(encoding);
		}
	}
	else
		FUNC4(scan_state);

	return PSQL_CMD_SKIP_LINE;
}