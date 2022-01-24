#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  parallel_safe; TYPE_10__* pathtarget; int /*<<< orphan*/  rows; int /*<<< orphan*/  total_cost; int /*<<< orphan*/  startup_cost; } ;
struct TYPE_13__ {int /*<<< orphan*/  parallel_safe; int /*<<< orphan*/  plan_width; int /*<<< orphan*/  plan_rows; int /*<<< orphan*/  total_cost; int /*<<< orphan*/  startup_cost; int /*<<< orphan*/ * targetlist; } ;
struct TYPE_12__ {TYPE_3__ path; int /*<<< orphan*/  subpath; } ;
struct TYPE_11__ {int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ ProjectionPath ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_2__ Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  CP_IGNORE_TLIST ; 
 int CP_LABEL_TLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

__attribute__((used)) static Plan *
FUNC8(PlannerInfo *root, ProjectionPath *best_path, int flags)
{
	Plan	   *plan;
	Plan	   *subplan;
	List	   *tlist;
	bool		needs_result_node = false;

	/*
	 * Convert our subpath to a Plan and determine whether we need a Result
	 * node.
	 *
	 * In most cases where we don't need to project, creation_projection_path
	 * will have set dummypp, but not always.  First, some createplan.c
	 * routines change the tlists of their nodes.  (An example is that
	 * create_merge_append_plan might add resjunk sort columns to a
	 * MergeAppend.)  Second, create_projection_path has no way of knowing
	 * what path node will be placed on top of the projection path and
	 * therefore can't predict whether it will require an exact tlist. For
	 * both of these reasons, we have to recheck here.
	 */
	if (FUNC7(root, &best_path->path, flags))
	{
		/*
		 * Our caller doesn't really care what tlist we return, so we don't
		 * actually need to project.  However, we may still need to ensure
		 * proper sortgroupref labels, if the caller cares about those.
		 */
		subplan = FUNC3(root, best_path->subpath, 0);
		tlist = subplan->targetlist;
		if (flags & CP_LABEL_TLIST)
			FUNC0(tlist,
											   best_path->path.pathtarget);
	}
	else if (FUNC4(best_path->subpath))
	{
		/*
		 * Our caller requires that we return the exact tlist, but no separate
		 * result node is needed because the subpath is projection-capable.
		 * Tell create_plan_recurse that we're going to ignore the tlist it
		 * produces.
		 */
		subplan = FUNC3(root, best_path->subpath,
									  CP_IGNORE_TLIST);
		tlist = FUNC1(root, &best_path->path);
	}
	else
	{
		/*
		 * It looks like we need a result node, unless by good fortune the
		 * requested tlist is exactly the one the child wants to produce.
		 */
		subplan = FUNC3(root, best_path->subpath, 0);
		tlist = FUNC1(root, &best_path->path);
		needs_result_node = !FUNC6(tlist, subplan->targetlist);
	}

	/*
	 * If we make a different decision about whether to include a Result node
	 * than create_projection_path did, we'll have made slightly wrong cost
	 * estimates; but label the plan with the cost estimates we actually used,
	 * not "corrected" ones.  (XXX this could be cleaned up if we moved more
	 * of the sortcolumn setup logic into Path creation, but that would add
	 * expense to creating Paths we might end up not using.)
	 */
	if (!needs_result_node)
	{
		/* Don't need a separate Result, just assign tlist to subplan */
		plan = subplan;
		plan->targetlist = tlist;

		/* Label plan with the estimated costs we actually used */
		plan->startup_cost = best_path->path.startup_cost;
		plan->total_cost = best_path->path.total_cost;
		plan->plan_rows = best_path->path.rows;
		plan->plan_width = best_path->path.pathtarget->width;
		plan->parallel_safe = best_path->path.parallel_safe;
		/* ... but don't change subplan's parallel_aware flag */
	}
	else
	{
		/* We need a Result node */
		plan = (Plan *) FUNC5(tlist, NULL, subplan);

		FUNC2(plan, (Path *) best_path);
	}

	return plan;
}