#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ commandType; } ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CMD_UTILITY ; 
 int /*<<< orphan*/  Debug_pretty_print ; 
 scalar_t__ Debug_print_plan ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ log_planner_stats ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 

PlannedStmt *
FUNC14(Query *querytree, int cursorOptions, ParamListInfo boundParams)
{
	PlannedStmt *plan;

	/* Utility commands have no plans. */
	if (querytree->commandType == CMD_UTILITY)
		return NULL;

	/* Planner must have a snapshot in case it calls user-defined functions. */
	FUNC1(FUNC0());

	FUNC5();

	if (log_planner_stats)
		FUNC2();

	/* call the optimizer */
	plan = FUNC12(querytree, cursorOptions, boundParams);

	if (log_planner_stats)
		FUNC3("PLANNER STATISTICS");

#ifdef COPY_PARSE_PLAN_TREES
	/* Optional debugging check: pass plan tree through copyObject() */
	{
		PlannedStmt *new_plan = copyObject(plan);

		/*
		 * equal() currently does not have routines to compare Plan nodes, so
		 * don't try to test equality here.  Perhaps fix someday?
		 */
#ifdef NOT_USED
		/* This checks both copyObject() and the equal() routines... */
		if (!equal(new_plan, plan))
			elog(WARNING, "copyObject() failed to produce an equal plan tree");
		else
#endif
			plan = new_plan;
	}
#endif

#ifdef WRITE_READ_PARSE_PLAN_TREES
	/* Optional debugging check: pass plan tree through outfuncs/readfuncs */
	{
		char	   *str;
		PlannedStmt *new_plan;

		str = nodeToString(plan);
		new_plan = stringToNodeWithLocations(str);
		pfree(str);

		/*
		 * equal() currently does not have routines to compare Plan nodes, so
		 * don't try to test equality here.  Perhaps fix someday?
		 */
#ifdef NOT_USED
		/* This checks both outfuncs/readfuncs and the equal() routines... */
		if (!equal(new_plan, plan))
			elog(WARNING, "outfuncs/readfuncs failed to produce an equal plan tree");
		else
#endif
			plan = new_plan;
	}
#endif

	/*
	 * Print plan if debugging.
	 */
	if (Debug_print_plan)
		FUNC8(LOG, "plan", plan, Debug_pretty_print);

	FUNC4();

	return plan;
}