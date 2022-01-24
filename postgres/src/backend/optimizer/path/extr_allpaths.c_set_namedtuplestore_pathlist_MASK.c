#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lateral_relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(PlannerInfo *root, RelOptInfo *rel,
							 RangeTblEntry *rte)
{
	Relids		required_outer;

	/* Mark rel with estimated output rows, width, etc */
	FUNC3(root, rel);

	/*
	 * We don't support pushing join clauses into the quals of a tuplestore
	 * scan, but it could still have required parameterization due to LATERAL
	 * refs in its tlist.
	 */
	required_outer = rel->lateral_relids;

	/* Generate appropriate path */
	FUNC0(rel, FUNC1(root, rel, required_outer));

	/* Select cheapest path (pretty easy in this case...) */
	FUNC2(rel);
}