#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  subroot; } ;
struct TYPE_8__ {void* qual; void* targetlist; } ;
struct TYPE_9__ {int scanrelid; TYPE_1__ plan; } ;
struct TYPE_10__ {TYPE_2__ scan; int /*<<< orphan*/  subplan; } ;
typedef  TYPE_3__ SubqueryScan ;
typedef  TYPE_4__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static Plan *
FUNC5(PlannerInfo *root,
							SubqueryScan *plan,
							int rtoffset)
{
	RelOptInfo *rel;
	Plan	   *result;

	/* Need to look up the subquery's RelOptInfo, since we need its subroot */
	rel = FUNC1(root, plan->scan.scanrelid);

	/* Recursively process the subplan */
	plan->subplan = FUNC3(rel->subroot, plan->subplan);

	if (FUNC4(plan))
	{
		/*
		 * We can omit the SubqueryScan node and just pull up the subplan.
		 */
		result = FUNC0((Plan *) plan, plan->subplan);
	}
	else
	{
		/*
		 * Keep the SubqueryScan node.  We have to do the processing that
		 * set_plan_references would otherwise have done on it.  Notice we do
		 * not do set_upper_references() here, because a SubqueryScan will
		 * always have been created with correct references to its subplan's
		 * outputs to begin with.
		 */
		plan->scan.scanrelid += rtoffset;
		plan->scan.plan.targetlist =
			FUNC2(root, plan->scan.plan.targetlist, rtoffset);
		plan->scan.plan.qual =
			FUNC2(root, plan->scan.plan.qual, rtoffset);

		result = (Plan *) plan;
	}

	return result;
}