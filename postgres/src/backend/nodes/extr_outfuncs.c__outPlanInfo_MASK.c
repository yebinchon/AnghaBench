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
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allParam ; 
 int /*<<< orphan*/  extParam ; 
 int /*<<< orphan*/  initPlan ; 
 int /*<<< orphan*/  lefttree ; 
 int /*<<< orphan*/  parallel_aware ; 
 int /*<<< orphan*/  parallel_safe ; 
 int /*<<< orphan*/  plan_node_id ; 
 int /*<<< orphan*/  plan_rows ; 
 int /*<<< orphan*/  plan_width ; 
 int /*<<< orphan*/  qual ; 
 int /*<<< orphan*/  righttree ; 
 int /*<<< orphan*/  startup_cost ; 
 int /*<<< orphan*/  targetlist ; 
 int /*<<< orphan*/  total_cost ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const Plan *node)
{
	FUNC2(startup_cost, "%.2f");
	FUNC2(total_cost, "%.2f");
	FUNC2(plan_rows, "%.0f");
	FUNC3(plan_width);
	FUNC1(parallel_aware);
	FUNC1(parallel_safe);
	FUNC3(plan_node_id);
	FUNC4(targetlist);
	FUNC4(qual);
	FUNC4(lefttree);
	FUNC4(righttree);
	FUNC4(initPlan);
	FUNC0(extParam);
	FUNC0(allParam);
}