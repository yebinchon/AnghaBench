#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ local_conds; int relation_index; int /*<<< orphan*/  remote_conds; } ;
struct TYPE_10__ {TYPE_1__* reltarget; int /*<<< orphan*/  relids; scalar_t__ fdw_private; } ;
struct TYPE_9__ {int /*<<< orphan*/  exprs; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  SUBQUERY_COL_ALIAS_PREFIX ; 
 int /*<<< orphan*/  SUBQUERY_REL_ALIAS_PREFIX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(StringInfo buf, PlannerInfo *root, RelOptInfo *foreignrel,
				   bool make_subquery, Index ignore_rel, List **ignore_conds,
				   List **params_list)
{
	PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;

	/* Should only be called in these cases. */
	FUNC0(FUNC2(foreignrel) || FUNC1(foreignrel));

	FUNC0(fpinfo->local_conds == NIL);

	/* If make_subquery is true, deparse the relation as a subquery. */
	if (make_subquery)
	{
		List	   *retrieved_attrs;
		int			ncols;

		/*
		 * The given relation shouldn't contain the target relation, because
		 * this should only happen for input relations for a full join, and
		 * such relations can never contain an UPDATE/DELETE target.
		 */
		FUNC0(ignore_rel == 0 ||
			   !FUNC6(ignore_rel, foreignrel->relids));

		/* Deparse the subquery representing the relation. */
		FUNC4(buf, '(');
		FUNC8(buf, root, foreignrel, NIL,
								fpinfo->remote_conds, NIL,
								false, false, true,
								&retrieved_attrs, params_list);
		FUNC4(buf, ')');

		/* Append the relation alias. */
		FUNC3(buf, " %s%d", SUBQUERY_REL_ALIAS_PREFIX,
						 fpinfo->relation_index);

		/*
		 * Append the column aliases if needed.  Note that the subquery emits
		 * expressions specified in the relation's reltarget (see
		 * deparseSubqueryTargetList).
		 */
		ncols = FUNC9(foreignrel->reltarget->exprs);
		if (ncols > 0)
		{
			int			i;

			FUNC4(buf, '(');
			for (i = 1; i <= ncols; i++)
			{
				if (i > 1)
					FUNC5(buf, ", ");

				FUNC3(buf, "%s%d", SUBQUERY_COL_ALIAS_PREFIX, i);
			}
			FUNC4(buf, ')');
		}
	}
	else
		FUNC7(buf, root, foreignrel, true, ignore_rel,
							  ignore_conds, params_list);
}