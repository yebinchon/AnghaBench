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
struct TYPE_6__ {int /*<<< orphan*/  path; int /*<<< orphan*/  subpath; } ;
typedef  TYPE_1__ ProjectSetPath ;
typedef  TYPE_2__ ProjectSet ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ProjectSet *
FUNC4(PlannerInfo *root, ProjectSetPath *best_path)
{
	ProjectSet *plan;
	Plan	   *subplan;
	List	   *tlist;

	/* Since we intend to project, we don't need to constrain child tlist */
	subplan = FUNC2(root, best_path->subpath, 0);

	tlist = FUNC0(root, &best_path->path);

	plan = FUNC3(tlist, subplan);

	FUNC1(&plan->plan, (Path *) best_path);

	return plan;
}