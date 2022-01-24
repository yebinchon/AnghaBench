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
 int /*<<< orphan*/  FUNC3 (char*,char const* const,char*) ; 
 TYPE_1__ pset ; 
 char* FUNC4 (char const* const,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static backslashResult
FUNC6(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt0 = FUNC5(scan_state,
												  OT_NORMAL, NULL, false);
		char	   *opt1 = FUNC5(scan_state,
												  OT_NORMAL, NULL, false);

		if (!opt0)
		{
			/* list all variables */

			int			i;
			static const char *const my_list[] = {
				"border", "columns", "csv_fieldsep", "expanded", "fieldsep",
				"fieldsep_zero", "footer", "format", "linestyle", "null",
				"numericlocale", "pager", "pager_min_lines",
				"recordsep", "recordsep_zero",
				"tableattr", "title", "tuples_only",
				"unicode_border_linestyle",
				"unicode_column_linestyle",
				"unicode_header_linestyle",
				NULL
			};

			for (i = 0; my_list[i] != NULL; i++)
			{
				char	   *val = FUNC4(my_list[i], &pset.popt);

				FUNC3("%-24s %s\n", my_list[i], val);
				FUNC1(val);
			}

			success = true;
		}
		else
			success = FUNC0(opt0, opt1, &pset.popt, pset.quiet);

		FUNC1(opt0);
		FUNC1(opt1);
	}
	else
		FUNC2(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}