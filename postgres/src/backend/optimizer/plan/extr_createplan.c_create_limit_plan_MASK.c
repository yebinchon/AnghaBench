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
struct TYPE_6__ {int /*<<< orphan*/  limitCount; int /*<<< orphan*/  limitOffset; int /*<<< orphan*/  subpath; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  TYPE_1__ LimitPath ;
typedef  TYPE_2__ Limit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Limit *
FUNC3(PlannerInfo *root, LimitPath *best_path, int flags)
{
	Limit	   *plan;
	Plan	   *subplan;

	/* Limit doesn't project, so tlist requirements pass through */
	subplan = FUNC1(root, best_path->subpath, flags);

	plan = FUNC2(subplan,
					  best_path->limitOffset,
					  best_path->limitCount);

	FUNC0(&plan->plan, (Path *) best_path);

	return plan;
}