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
struct TYPE_5__ {int expanded; } ;
struct TYPE_6__ {TYPE_1__ topt; } ;
typedef  TYPE_2__ printQueryOpt ;
struct TYPE_7__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/ * queryFout; scalar_t__ gfname; scalar_t__ g_expanded; TYPE_2__ popt; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool
FUNC6(const PGresult *results)
{
	printQueryOpt my_popt = pset.popt;

	/* one-shot expanded output requested via \gx */
	if (pset.g_expanded)
		my_popt.topt.expanded = 1;

	/* write output to \g argument, if any */
	if (pset.gfname)
	{
		FILE	   *fout;
		bool		is_pipe;

		if (!FUNC2(pset.gfname, &fout, &is_pipe))
			return false;
		if (is_pipe)
			FUNC0();

		FUNC4(results, &my_popt, fout, false, pset.logfile);

		if (is_pipe)
		{
			FUNC3(fout);
			FUNC5();
		}
		else
			FUNC1(fout);
	}
	else
		FUNC4(results, &my_popt, pset.queryFout, false, pset.logfile);

	return true;
}