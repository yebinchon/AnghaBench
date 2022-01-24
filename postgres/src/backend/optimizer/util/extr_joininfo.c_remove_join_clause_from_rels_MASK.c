#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  joininfo; } ;
typedef  int /*<<< orphan*/  RestrictInfo ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(PlannerInfo *root,
							 RestrictInfo *restrictinfo,
							 Relids join_relids)
{
	int			cur_relid;

	cur_relid = -1;
	while ((cur_relid = FUNC1(join_relids, cur_relid)) >= 0)
	{
		RelOptInfo *rel = FUNC2(root, cur_relid);

		/*
		 * Remove the restrictinfo from the list.  Pointer comparison is
		 * sufficient.
		 */
		FUNC0(FUNC4(rel->joininfo, restrictinfo));
		rel->joininfo = FUNC3(rel->joininfo, restrictinfo);
	}
}