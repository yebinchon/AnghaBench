#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* line; } ;
struct TYPE_5__ {int /*<<< orphan*/  topt; } ;
struct TYPE_6__ {TYPE_1__ popt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* cur_hist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_2__ pset ; 
 int /*<<< orphan*/  useHistory ; 

bool
FUNC8(const char *fname, unsigned short int pager)
{
#ifdef USE_READLINE
	FILE	   *output;
	bool		is_pager;

	if (!useHistory)
		return false;

	if (fname == NULL)
	{
		/* use pager, if enabled, when printing to console */
		output = PageOutput(INT_MAX, pager ? &(pset.popt.topt) : NULL);
		is_pager = true;
	}
	else
	{
		output = fopen(fname, "w");
		if (output == NULL)
		{
			pg_log_error("could not save history to file \"%s\": %m", fname);
			return false;
		}
		is_pager = false;
	}

	BEGIN_ITERATE_HISTORY(cur_hist);
	{
		fprintf(output, "%s\n", cur_hist->line);
	}
	END_ITERATE_HISTORY();

	if (is_pager)
		ClosePager(output);
	else
		fclose(output);

	return true;
#else
	FUNC7("history is not supported by this installation");
	return false;
#endif
}