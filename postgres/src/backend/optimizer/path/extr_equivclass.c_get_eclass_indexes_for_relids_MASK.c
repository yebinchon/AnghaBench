#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__** simple_rel_array; int /*<<< orphan*/  ec_merging_done; } ;
struct TYPE_4__ {int /*<<< orphan*/  eclass_indexes; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Bitmapset *
FUNC3(PlannerInfo *root, Relids relids)
{
	Bitmapset  *ec_indexes = NULL;
	int			i = -1;

	/* Should be OK to rely on eclass_indexes */
	FUNC0(root->ec_merging_done);

	while ((i = FUNC2(relids, i)) > 0)
	{
		RelOptInfo *rel = root->simple_rel_array[i];

		ec_indexes = FUNC1(ec_indexes, rel->eclass_indexes);
	}
	return ec_indexes;
}