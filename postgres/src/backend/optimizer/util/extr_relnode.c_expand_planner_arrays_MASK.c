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
struct TYPE_3__ {int simple_rel_array_size; int /*<<< orphan*/ ** append_rel_array; int /*<<< orphan*/ ** simple_rte_array; int /*<<< orphan*/ ** simple_rel_array; } ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ PlannerInfo ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int) ; 

void
FUNC4(PlannerInfo *root, int add_size)
{
	int			new_size;

	FUNC0(add_size > 0);

	new_size = root->simple_rel_array_size + add_size;

	root->simple_rel_array = (RelOptInfo **)
		FUNC3(root->simple_rel_array,
				 sizeof(RelOptInfo *) * new_size);
	FUNC1(root->simple_rel_array + root->simple_rel_array_size,
		   0, sizeof(RelOptInfo *) * add_size);

	root->simple_rte_array = (RangeTblEntry **)
		FUNC3(root->simple_rte_array,
				 sizeof(RangeTblEntry *) * new_size);
	FUNC1(root->simple_rte_array + root->simple_rel_array_size,
		   0, sizeof(RangeTblEntry *) * add_size);

	if (root->append_rel_array)
	{
		root->append_rel_array = (AppendRelInfo **)
			FUNC3(root->append_rel_array,
					 sizeof(AppendRelInfo *) * new_size);
		FUNC1(root->append_rel_array + root->simple_rel_array_size,
			   0, sizeof(AppendRelInfo *) * add_size);
	}
	else
	{
		root->append_rel_array = (AppendRelInfo **)
			FUNC2(sizeof(AppendRelInfo *) * new_size);
	}

	root->simple_rel_array_size = new_size;
}