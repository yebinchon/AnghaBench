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
typedef  int /*<<< orphan*/  PlannerGlobal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dependsOnRole ; 
 int /*<<< orphan*/  finalrowmarks ; 
 int /*<<< orphan*/  finalrtable ; 
 int /*<<< orphan*/  invalItems ; 
 int /*<<< orphan*/  lastPHId ; 
 int /*<<< orphan*/  lastPlanNodeId ; 
 int /*<<< orphan*/  lastRowMarkId ; 
 int /*<<< orphan*/  maxParallelHazard ; 
 int /*<<< orphan*/  parallelModeNeeded ; 
 int /*<<< orphan*/  parallelModeOK ; 
 int /*<<< orphan*/  paramExecTypes ; 
 int /*<<< orphan*/  relationOids ; 
 int /*<<< orphan*/  resultRelations ; 
 int /*<<< orphan*/  rewindPlanIDs ; 
 int /*<<< orphan*/  rootResultRelations ; 
 int /*<<< orphan*/  subplans ; 
 int /*<<< orphan*/  transientPlan ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const PlannerGlobal *node)
{
	FUNC5("PLANNERGLOBAL");

	/* NB: this isn't a complete set of fields */
	FUNC4(subplans);
	FUNC0(rewindPlanIDs);
	FUNC4(finalrtable);
	FUNC4(finalrowmarks);
	FUNC4(resultRelations);
	FUNC4(rootResultRelations);
	FUNC4(relationOids);
	FUNC4(invalItems);
	FUNC4(paramExecTypes);
	FUNC6(lastPHId);
	FUNC6(lastRowMarkId);
	FUNC3(lastPlanNodeId);
	FUNC1(transientPlan);
	FUNC1(dependsOnRole);
	FUNC1(parallelModeOK);
	FUNC1(parallelModeNeeded);
	FUNC2(maxParallelHazard);
}