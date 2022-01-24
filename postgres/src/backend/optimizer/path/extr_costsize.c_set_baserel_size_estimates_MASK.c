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
struct TYPE_4__ {scalar_t__ relid; double tuples; int /*<<< orphan*/  baserestrictinfo; int /*<<< orphan*/  baserestrictcost; int /*<<< orphan*/  rows; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  JOIN_INNER ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 double FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC5(PlannerInfo *root, RelOptInfo *rel)
{
	double		nrows;

	/* Should only be applied to base relations */
	FUNC0(rel->relid > 0);

	nrows = rel->tuples *
		FUNC2(root,
							   rel->baserestrictinfo,
							   0,
							   JOIN_INNER,
							   NULL);

	rel->rows = FUNC1(nrows);

	FUNC3(&rel->baserestrictcost, rel->baserestrictinfo, root);

	FUNC4(root, rel);
}