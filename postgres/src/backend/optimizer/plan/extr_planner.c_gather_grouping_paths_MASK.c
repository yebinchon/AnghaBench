#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {double rows; double parallel_workers; int /*<<< orphan*/  pathkeys; } ;
struct TYPE_18__ {int /*<<< orphan*/  group_pathkeys; } ;
struct TYPE_17__ {int /*<<< orphan*/  reltarget; int /*<<< orphan*/  partial_pathlist; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  TYPE_3__ Path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(PlannerInfo *root, RelOptInfo *rel)
{
	Path	   *cheapest_partial_path;

	/* Try Gather for unordered paths and Gather Merge for ordered ones. */
	FUNC3(root, rel, true);

	/* Try cheapest partial path + explicit Sort + Gather Merge. */
	cheapest_partial_path = FUNC4(rel->partial_pathlist);
	if (!FUNC5(root->group_pathkeys,
							   cheapest_partial_path->pathkeys))
	{
		Path	   *path;
		double		total_groups;

		total_groups =
			cheapest_partial_path->rows * cheapest_partial_path->parallel_workers;
		path = (Path *) FUNC2(root, rel, cheapest_partial_path,
										 root->group_pathkeys,
										 -1.0);
		path = (Path *)
			FUNC1(root,
									 rel,
									 path,
									 rel->reltarget,
									 root->group_pathkeys,
									 NULL,
									 &total_groups);

		FUNC0(rel, path);
	}
}