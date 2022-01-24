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
struct TYPE_7__ {scalar_t__ rtekind; int /*<<< orphan*/  values_lists; } ;
struct TYPE_6__ {scalar_t__ relid; int /*<<< orphan*/  tuples; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTE_VALUES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(PlannerInfo *root, RelOptInfo *rel)
{
	RangeTblEntry *rte;

	/* Should only be applied to base relations that are values lists */
	FUNC0(rel->relid > 0);
	rte = FUNC2(rel->relid, root);
	FUNC0(rte->rtekind == RTE_VALUES);

	/*
	 * Estimate number of rows the values list will return. We know this
	 * precisely based on the list length (well, barring set-returning
	 * functions in list items, but that's a refinement not catered for
	 * anywhere else either).
	 */
	rel->tuples = FUNC1(rte->values_lists);

	/* Now estimate number of output rows, etc */
	FUNC3(root, rel);
}