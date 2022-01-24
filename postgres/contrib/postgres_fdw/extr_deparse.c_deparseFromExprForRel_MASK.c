#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ ** params_list; int /*<<< orphan*/ * root; TYPE_3__* scanrel; TYPE_3__* foreignrel; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_17__ {scalar_t__ jointype; scalar_t__ joinclauses; int /*<<< orphan*/  make_innerrel_subquery; int /*<<< orphan*/  make_outerrel_subquery; TYPE_3__* innerrel; TYPE_3__* outerrel; } ;
struct TYPE_16__ {int /*<<< orphan*/  relid; } ;
struct TYPE_15__ {int /*<<< orphan*/  relid; int /*<<< orphan*/  relids; scalar_t__ fdw_private; } ;
struct TYPE_14__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_3__ RelOptInfo ;
typedef  TYPE_4__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_5__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ JOIN_INNER ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  REL_ALIAS_PREFIX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(StringInfo buf, PlannerInfo *root, RelOptInfo *foreignrel,
					  bool use_alias, Index ignore_rel, List **ignore_conds,
					  List **params_list)
{
	PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;

	if (FUNC1(foreignrel))
	{
		StringInfoData join_sql_o;
		StringInfoData join_sql_i;
		RelOptInfo *outerrel = fpinfo->outerrel;
		RelOptInfo *innerrel = fpinfo->innerrel;
		bool		outerrel_is_target = false;
		bool		innerrel_is_target = false;

		if (ignore_rel > 0 && FUNC7(ignore_rel, foreignrel->relids))
		{
			/*
			 * If this is an inner join, add joinclauses to *ignore_conds and
			 * set it to empty so that those can be deparsed into the WHERE
			 * clause.  Note that since the target relation can never be
			 * within the nullable side of an outer join, those could safely
			 * be pulled up into the WHERE clause (see foreign_join_ok()).
			 * Note also that since the target relation is only inner-joined
			 * to any other relation in the query, all conditions in the join
			 * tree mentioning the target relation could be deparsed into the
			 * WHERE clause by doing this recursively.
			 */
			if (fpinfo->jointype == JOIN_INNER)
			{
				*ignore_conds = FUNC12(*ignore_conds,
											fpinfo->joinclauses);
				fpinfo->joinclauses = NIL;
			}

			/*
			 * Check if either of the input relations is the target relation.
			 */
			if (outerrel->relid == ignore_rel)
				outerrel_is_target = true;
			else if (innerrel->relid == ignore_rel)
				innerrel_is_target = true;
		}

		/* Deparse outer relation if not the target relation. */
		if (!outerrel_is_target)
		{
			FUNC11(&join_sql_o);
			FUNC8(&join_sql_o, root, outerrel,
							   fpinfo->make_outerrel_subquery,
							   ignore_rel, ignore_conds, params_list);

			/*
			 * If inner relation is the target relation, skip deparsing it.
			 * Note that since the join of the target relation with any other
			 * relation in the query is an inner join and can never be within
			 * the nullable side of an outer join, the join could be
			 * interchanged with higher-level joins (cf. identity 1 on outer
			 * join reordering shown in src/backend/optimizer/README), which
			 * means it's safe to skip the target-relation deparsing here.
			 */
			if (innerrel_is_target)
			{
				FUNC0(fpinfo->jointype == JOIN_INNER);
				FUNC0(fpinfo->joinclauses == NIL);
				FUNC2(buf, join_sql_o.data, join_sql_o.len);
				return;
			}
		}

		/* Deparse inner relation if not the target relation. */
		if (!innerrel_is_target)
		{
			FUNC11(&join_sql_i);
			FUNC8(&join_sql_i, root, innerrel,
							   fpinfo->make_innerrel_subquery,
							   ignore_rel, ignore_conds, params_list);

			/*
			 * If outer relation is the target relation, skip deparsing it.
			 * See the above note about safety.
			 */
			if (outerrel_is_target)
			{
				FUNC0(fpinfo->jointype == JOIN_INNER);
				FUNC0(fpinfo->joinclauses == NIL);
				FUNC2(buf, join_sql_i.data, join_sql_i.len);
				return;
			}
		}

		/* Neither of the relations is the target relation. */
		FUNC0(!outerrel_is_target && !innerrel_is_target);

		/*
		 * For a join relation FROM clause entry is deparsed as
		 *
		 * ((outer relation) <join type> (inner relation) ON (joinclauses))
		 */
		FUNC4(buf, "(%s %s JOIN %s ON ", join_sql_o.data,
						 FUNC10(fpinfo->jointype), join_sql_i.data);

		/* Append join clause; (TRUE) if no join clause */
		if (fpinfo->joinclauses)
		{
			deparse_expr_cxt context;

			context.buf = buf;
			context.foreignrel = foreignrel;
			context.scanrel = foreignrel;
			context.root = root;
			context.params_list = params_list;

			FUNC5(buf, '(');
			FUNC3(fpinfo->joinclauses, &context);
			FUNC5(buf, ')');
		}
		else
			FUNC6(buf, "(TRUE)");

		/* End the FROM clause entry. */
		FUNC5(buf, ')');
	}
	else
	{
		RangeTblEntry *rte = FUNC13(foreignrel->relid, root);

		/*
		 * Core code already has some lock on each rel being planned, so we
		 * can use NoLock here.
		 */
		Relation	rel = FUNC15(rte->relid, NoLock);

		FUNC9(buf, rel);

		/*
		 * Add a unique alias to avoid any conflict in relation names due to
		 * pulled up subqueries in the query being built for a pushed down
		 * join.
		 */
		if (use_alias)
			FUNC4(buf, " %s%d", REL_ALIAS_PREFIX, foreignrel->relid);

		FUNC14(rel, NoLock);
	}
}