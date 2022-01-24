#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  varno; } ;
typedef  TYPE_1__ Var ;
struct TYPE_12__ {scalar_t__ make_innerrel_subquery; scalar_t__ make_outerrel_subquery; int /*<<< orphan*/  lower_subquery_rels; TYPE_2__* innerrel; TYPE_2__* outerrel; } ;
struct TYPE_11__ {int /*<<< orphan*/  relids; scalar_t__ fdw_private; } ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ PgFdwRelationInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int*,int*) ; 

__attribute__((used)) static bool
FUNC5(Var *node, RelOptInfo *foreignrel, int *relno, int *colno)
{
	PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;
	RelOptInfo *outerrel = fpinfo->outerrel;
	RelOptInfo *innerrel = fpinfo->innerrel;

	/* Should only be called in these cases. */
	FUNC0(FUNC2(foreignrel) || FUNC1(foreignrel));

	/*
	 * If the given relation isn't a join relation, it doesn't have any lower
	 * subqueries, so the Var isn't a subquery output column.
	 */
	if (!FUNC1(foreignrel))
		return false;

	/*
	 * If the Var doesn't belong to any lower subqueries, it isn't a subquery
	 * output column.
	 */
	if (!FUNC3(node->varno, fpinfo->lower_subquery_rels))
		return false;

	if (FUNC3(node->varno, outerrel->relids))
	{
		/*
		 * If outer relation is deparsed as a subquery, the Var is an output
		 * column of the subquery; get the IDs for the relation/column alias.
		 */
		if (fpinfo->make_outerrel_subquery)
		{
			FUNC4(node, outerrel, relno, colno);
			return true;
		}

		/* Otherwise, recurse into the outer relation. */
		return FUNC5(node, outerrel, relno, colno);
	}
	else
	{
		FUNC0(FUNC3(node->varno, innerrel->relids));

		/*
		 * If inner relation is deparsed as a subquery, the Var is an output
		 * column of the subquery; get the IDs for the relation/column alias.
		 */
		if (fpinfo->make_innerrel_subquery)
		{
			FUNC4(node, innerrel, relno, colno);
			return true;
		}

		/* Otherwise, recurse into the inner relation. */
		return FUNC5(node, innerrel, relno, colno);
	}
}