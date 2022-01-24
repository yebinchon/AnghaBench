#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  targetlist; } ;
struct TYPE_10__ {scalar_t__ plan_params; scalar_t__ curOuterParams; int /*<<< orphan*/  processed_tlist; int /*<<< orphan*/ * curOuterRels; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  TYPE_2__ Plan ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CP_EXACT_TLIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ModifyTable ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

Plan *
FUNC6(PlannerInfo *root, Path *best_path)
{
	Plan	   *plan;

	/* plan_params should not be in use in current query level */
	FUNC0(root->plan_params == NIL);

	/* Initialize this module's workspace in PlannerInfo */
	root->curOuterRels = NULL;
	root->curOuterParams = NIL;

	/* Recursively process the path tree, demanding the correct tlist result */
	plan = FUNC4(root, best_path, CP_EXACT_TLIST);

	/*
	 * Make sure the topmost plan node's targetlist exposes the original
	 * column names and other decorative info.  Targetlists generated within
	 * the planner don't bother with that stuff, but we must have it on the
	 * top-level tlist seen at execution time.  However, ModifyTable plan
	 * nodes don't have a tlist matching the querytree targetlist.
	 */
	if (!FUNC1(plan, ModifyTable))
		FUNC3(plan->targetlist, root->processed_tlist);

	/*
	 * Attach any initPlans created in this query level to the topmost plan
	 * node.  (In principle the initplans could go in any plan node at or
	 * above where they're referenced, but there seems no reason to put them
	 * any lower than the topmost node for the query level.  Also, see
	 * comments for SS_finalize_plan before you try to change this.)
	 */
	FUNC2(root, plan);

	/* Check we successfully assigned all NestLoopParams to plan nodes */
	if (root->curOuterParams != NIL)
		FUNC5(ERROR, "failed to assign all NestLoopParams to plan nodes");

	/*
	 * Reset plan_params to ensure param IDs used for nestloop params are not
	 * re-used later
	 */
	root->plan_params = NIL;

	return plan;
}