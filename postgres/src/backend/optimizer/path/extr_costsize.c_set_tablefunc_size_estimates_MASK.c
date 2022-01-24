#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rtekind; } ;
struct TYPE_5__ {scalar_t__ relid; int tuples; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTE_TABLEFUNC ; 
 TYPE_4__* FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3(PlannerInfo *root, RelOptInfo *rel)
{
	/* Should only be applied to base relations that are functions */
	FUNC0(rel->relid > 0);
	FUNC0(FUNC1(rel->relid, root)->rtekind == RTE_TABLEFUNC);

	rel->tuples = 100;

	/* Now estimate number of output rows, etc */
	FUNC2(root, rel);
}