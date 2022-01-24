#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  plan; } ;
struct TYPE_10__ {int /*<<< orphan*/  groupClause; int /*<<< orphan*/  qual; int /*<<< orphan*/  path; int /*<<< orphan*/  subpath; } ;
struct TYPE_9__ {int /*<<< orphan*/  targetlist; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_1__ Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ GroupPath ;
typedef  TYPE_3__ Group ;

/* Variables and functions */
 int /*<<< orphan*/  CP_LABEL_TLIST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Group *
FUNC9(PlannerInfo *root, GroupPath *best_path)
{
	Group	   *plan;
	Plan	   *subplan;
	List	   *tlist;
	List	   *quals;

	/*
	 * Group can project, so no need to be terribly picky about child tlist,
	 * but we do need grouping columns to be available
	 */
	subplan = FUNC2(root, best_path->subpath, CP_LABEL_TLIST);

	tlist = FUNC0(root, &best_path->path);

	quals = FUNC8(root, best_path->qual);

	plan = FUNC7(tlist,
					  quals,
					  FUNC6(best_path->groupClause),
					  FUNC4(best_path->groupClause,
											subplan->targetlist),
					  FUNC5(best_path->groupClause),
					  FUNC3(best_path->groupClause,
												  subplan->targetlist),
					  subplan);

	FUNC1(&plan->plan, (Path *) best_path);

	return plan;
}