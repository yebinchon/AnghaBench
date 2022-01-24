#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  plan; } ;
struct TYPE_6__ {int /*<<< orphan*/  distinctList; int /*<<< orphan*/  wtParam; int /*<<< orphan*/  numGroups; int /*<<< orphan*/  path; int /*<<< orphan*/  rightpath; int /*<<< orphan*/  leftpath; } ;
typedef  TYPE_1__ RecursiveUnionPath ;
typedef  TYPE_2__ RecursiveUnion ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  CP_EXACT_TLIST ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static RecursiveUnion *
FUNC5(PlannerInfo *root, RecursiveUnionPath *best_path)
{
	RecursiveUnion *plan;
	Plan	   *leftplan;
	Plan	   *rightplan;
	List	   *tlist;
	long		numGroups;

	/* Need both children to produce same tlist, so force it */
	leftplan = FUNC3(root, best_path->leftpath, CP_EXACT_TLIST);
	rightplan = FUNC3(root, best_path->rightpath, CP_EXACT_TLIST);

	tlist = FUNC1(root, &best_path->path);

	/* Convert numGroups to long int --- but 'ware overflow! */
	numGroups = (long) FUNC0(best_path->numGroups, (double) LONG_MAX);

	plan = FUNC4(tlist,
								leftplan,
								rightplan,
								best_path->wtParam,
								best_path->distinctList,
								numGroups);

	FUNC2(&plan->plan, (Path *) best_path);

	return plan;
}