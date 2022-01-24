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
struct TYPE_6__ {int /*<<< orphan*/  firstFlag; int /*<<< orphan*/  flagColIdx; int /*<<< orphan*/  distinctList; int /*<<< orphan*/  strategy; int /*<<< orphan*/  cmd; int /*<<< orphan*/  numGroups; int /*<<< orphan*/  subpath; } ;
typedef  TYPE_1__ SetOpPath ;
typedef  TYPE_2__ SetOp ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int CP_LABEL_TLIST ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static SetOp *
FUNC4(PlannerInfo *root, SetOpPath *best_path, int flags)
{
	SetOp	   *plan;
	Plan	   *subplan;
	long		numGroups;

	/*
	 * SetOp doesn't project, so tlist requirements pass through; moreover we
	 * need grouping columns to be labeled.
	 */
	subplan = FUNC2(root, best_path->subpath,
								  flags | CP_LABEL_TLIST);

	/* Convert numGroups to long int --- but 'ware overflow! */
	numGroups = (long) FUNC0(best_path->numGroups, (double) LONG_MAX);

	plan = FUNC3(best_path->cmd,
					  best_path->strategy,
					  subplan,
					  best_path->distinctList,
					  best_path->flagColIdx,
					  best_path->firstFlag,
					  numGroups);

	FUNC1(&plan->plan, (Path *) best_path);

	return plan;
}