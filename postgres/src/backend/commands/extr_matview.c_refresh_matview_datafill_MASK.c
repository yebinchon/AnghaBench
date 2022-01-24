#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_10__ {TYPE_1__* estate; } ;
struct TYPE_9__ {int /*<<< orphan*/  es_processed; } ;
typedef  TYPE_2__ QueryDesc ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64
FUNC18(DestReceiver *dest, Query *query,
						 const char *queryString)
{
	List	   *rewritten;
	PlannedStmt *plan;
	QueryDesc  *queryDesc;
	Query	   *copied_query;
	uint64		processed;

	/* Lock and rewrite, using a copy to preserve the original query. */
	copied_query = FUNC13(query);
	FUNC0(copied_query, true, false);
	rewritten = FUNC11(copied_query);

	/* SELECT should never rewrite to more or less than one SELECT query */
	if (FUNC16(rewritten) != 1)
		FUNC14(ERROR, "unexpected rewrite result for REFRESH MATERIALIZED VIEW");
	query = (Query *) FUNC15(rewritten);

	/* Check for user-requested abort. */
	FUNC1();

	/* Plan the query which will generate data for the refresh. */
	plan = FUNC17(query, 0, NULL);

	/*
	 * Use a snapshot with an updated command ID to ensure this query sees
	 * results of any previously executed queries.  (This could only matter if
	 * the planner executed an allegedly-stable function that changed the
	 * database contents, but let's do it anyway to be safe.)
	 */
	FUNC10(FUNC8());
	FUNC12();

	/* Create a QueryDesc, redirecting output to our tuple receiver */
	queryDesc = FUNC2(plan, queryString,
								FUNC8(), InvalidSnapshot,
								dest, NULL, NULL, 0);

	/* call ExecutorStart to prepare the plan for execution */
	FUNC6(queryDesc, 0);

	/* run the plan */
	FUNC5(queryDesc, ForwardScanDirection, 0L, true);

	processed = queryDesc->estate->es_processed;

	/* and clean up */
	FUNC4(queryDesc);
	FUNC3(queryDesc);

	FUNC7(queryDesc);

	FUNC9();

	return processed;
}