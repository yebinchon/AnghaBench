#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PlannedStmt ;

/* Variables and functions */
 int /*<<< orphan*/  CmdType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  canSetTag ; 
 int /*<<< orphan*/  commandType ; 
 int /*<<< orphan*/  dependsOnRole ; 
 int /*<<< orphan*/  hasModifyingCTE ; 
 int /*<<< orphan*/  hasReturning ; 
 int /*<<< orphan*/  invalItems ; 
 int /*<<< orphan*/  jitFlags ; 
 int /*<<< orphan*/  parallelModeNeeded ; 
 int /*<<< orphan*/  paramExecTypes ; 
 int /*<<< orphan*/  planTree ; 
 int /*<<< orphan*/  queryId ; 
 int /*<<< orphan*/  relationOids ; 
 int /*<<< orphan*/  resultRelations ; 
 int /*<<< orphan*/  rewindPlanIDs ; 
 int /*<<< orphan*/  rootResultRelations ; 
 int /*<<< orphan*/  rowMarks ; 
 int /*<<< orphan*/  rtable ; 
 int /*<<< orphan*/  stmt_len ; 
 int /*<<< orphan*/  stmt_location ; 
 int /*<<< orphan*/  subplans ; 
 int /*<<< orphan*/  transientPlan ; 
 int /*<<< orphan*/  utilityStmt ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const PlannedStmt *node)
{
	FUNC6("PLANNEDSTMT");

	FUNC2(commandType, CmdType);
	FUNC7(queryId);
	FUNC1(hasReturning);
	FUNC1(hasModifyingCTE);
	FUNC1(canSetTag);
	FUNC1(transientPlan);
	FUNC1(dependsOnRole);
	FUNC1(parallelModeNeeded);
	FUNC3(jitFlags);
	FUNC5(planTree);
	FUNC5(rtable);
	FUNC5(resultRelations);
	FUNC5(rootResultRelations);
	FUNC5(subplans);
	FUNC0(rewindPlanIDs);
	FUNC5(rowMarks);
	FUNC5(relationOids);
	FUNC5(invalItems);
	FUNC5(paramExecTypes);
	FUNC5(utilityStmt);
	FUNC4(stmt_location);
	FUNC4(stmt_len);
}