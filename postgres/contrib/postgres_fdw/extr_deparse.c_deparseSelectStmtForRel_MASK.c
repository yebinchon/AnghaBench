#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ ** params_list; TYPE_2__* scanrel; TYPE_2__* foreignrel; int /*<<< orphan*/ * root; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_17__ {int /*<<< orphan*/ * remote_conds; TYPE_2__* outerrel; } ;
struct TYPE_16__ {scalar_t__ fdw_private; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,TYPE_1__*) ; 

void
FUNC12(StringInfo buf, PlannerInfo *root, RelOptInfo *rel,
						List *tlist, List *remote_conds, List *pathkeys,
						bool has_final_sort, bool has_limit, bool is_subquery,
						List **retrieved_attrs, List **params_list)
{
	deparse_expr_cxt context;
	PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) rel->fdw_private;
	List	   *quals;

	/*
	 * We handle relations for foreign tables, joins between those and upper
	 * relations.
	 */
	FUNC0(FUNC1(rel) || FUNC2(rel) || FUNC3(rel));

	/* Fill portions of context common to upper, join and base relation */
	context.buf = buf;
	context.root = root;
	context.foreignrel = rel;
	context.scanrel = FUNC3(rel) ? fpinfo->outerrel : rel;
	context.params_list = params_list;

	/* Construct SELECT clause */
	FUNC11(tlist, is_subquery, retrieved_attrs, &context);

	/*
	 * For upper relations, the WHERE clause is built from the remote
	 * conditions of the underlying scan relation; otherwise, we can use the
	 * supplied list of remote conditions directly.
	 */
	if (FUNC3(rel))
	{
		PgFdwRelationInfo *ofpinfo;

		ofpinfo = (PgFdwRelationInfo *) fpinfo->outerrel->fdw_private;
		quals = ofpinfo->remote_conds;
	}
	else
		quals = remote_conds;

	/* Construct FROM and WHERE clauses */
	FUNC9(quals, &context);

	if (FUNC3(rel))
	{
		/* Append GROUP BY clause */
		FUNC5(tlist, &context);

		/* Append HAVING clause */
		if (remote_conds)
		{
			FUNC8(buf, " HAVING ");
			FUNC4(remote_conds, &context);
		}
	}

	/* Add ORDER BY clause if we found any useful pathkeys */
	if (pathkeys)
		FUNC7(pathkeys, has_final_sort, &context);

	/* Add LIMIT clause if necessary */
	if (has_limit)
		FUNC6(&context);

	/* Add any necessary FOR UPDATE/SHARE. */
	FUNC10(&context);
}