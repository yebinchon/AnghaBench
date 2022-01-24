#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  plan; } ;
struct TYPE_9__ {TYPE_2__* parent; int /*<<< orphan*/  pathkeys; } ;
struct TYPE_11__ {TYPE_1__ path; TYPE_8__* subpath; } ;
struct TYPE_10__ {int /*<<< orphan*/ * relids; } ;
typedef  TYPE_3__ SortPath ;
typedef  TYPE_4__ Sort ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int CP_SMALL_TLIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_8__*,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Sort *
FUNC4(PlannerInfo *root, SortPath *best_path, int flags)
{
	Sort	   *plan;
	Plan	   *subplan;

	/*
	 * We don't want any excess columns in the sorted tuples, so request a
	 * smaller tlist.  Otherwise, since Sort doesn't project, tlist
	 * requirements pass through.
	 */
	subplan = FUNC2(root, best_path->subpath,
								  flags | CP_SMALL_TLIST);

	/*
	 * make_sort_from_pathkeys() indirectly calls find_ec_member_for_tle(),
	 * which will ignore any child EC members that don't belong to the given
	 * relids. Thus, if this sort path is based on a child relation, we must
	 * pass its relids.
	 */
	plan = FUNC3(subplan, best_path->path.pathkeys,
								   FUNC0(best_path->subpath->parent) ?
								   best_path->path.parent->relids : NULL);

	FUNC1(&plan->plan, (Path *) best_path);

	return plan;
}