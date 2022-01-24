#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_6__ {scalar_t__ commandType; int /*<<< orphan*/  utilityStmt; } ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  IntoClause ;
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 scalar_t__ CMD_UTILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(Query *query, int cursorOptions,
				IntoClause *into, ExplainState *es,
				const char *queryString, ParamListInfo params,
				QueryEnvironment *queryEnv)
{
	/* planner will not cope with utility statements */
	if (query->commandType == CMD_UTILITY)
	{
		FUNC2(query->utilityStmt, into, es, queryString, params,
						  queryEnv);
		return;
	}

	/* if an advisor plugin is present, let it manage things */
	if (&ExplainOneQuery_hook)
		FUNC1) (query, cursorOptions, into, es,
								 queryString, params, queryEnv);
	else
	{
		PlannedStmt *plan;
		instr_time	planstart,
					planduration;

		FUNC3(planstart);

		/* plan the query */
		plan = FUNC5(query, cursorOptions, params);

		FUNC3(planduration);
		FUNC4(planduration, planstart);

		/* run it (if needed) and produce output */
		FUNC0(plan, into, es, queryString, params, queryEnv,
					   &planduration);
	}
}