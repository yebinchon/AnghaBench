#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ relid; int rows; int /*<<< orphan*/  baserestrictinfo; int /*<<< orphan*/  baserestrictcost; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3(PlannerInfo *root, RelOptInfo *rel)
{
	/* Should only be applied to base relations */
	FUNC0(rel->relid > 0);

	rel->rows = 1000;			/* entirely bogus default estimate */

	FUNC1(&rel->baserestrictcost, rel->baserestrictinfo, root);

	FUNC2(root, rel);
}