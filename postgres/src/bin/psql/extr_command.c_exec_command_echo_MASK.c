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
struct TYPE_2__ {int /*<<< orphan*/ * queryFout; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static backslashResult
FUNC6(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	if (active_branch)
	{
		char	   *value;
		char		quoted;
		bool		no_newline = false;
		bool		first = true;
		FILE	   *fout;

		if (FUNC5(cmd, "qecho") == 0)
			fout = pset.queryFout;
		else if (FUNC5(cmd, "warn") == 0)
			fout = stderr;
		else
			fout = stdout;

		while ((value = FUNC4(scan_state,
											   OT_NORMAL, &quoted, false)))
		{
			if (first && !no_newline && !quoted && FUNC5(value, "-n") == 0)
				no_newline = true;
			else
			{
				if (first)
					first = false;
				else
					FUNC0(' ', fout);
				FUNC1(value, fout);
			}
			FUNC2(value);
		}
		if (!no_newline)
			FUNC1("\n", fout);
	}
	else
		FUNC3(scan_state);

	return PSQL_CMD_SKIP_LINE;
}