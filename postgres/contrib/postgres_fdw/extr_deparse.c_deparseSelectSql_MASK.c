#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * root; TYPE_2__* foreignrel; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_15__ {int /*<<< orphan*/  attrs_used; } ;
struct TYPE_14__ {int /*<<< orphan*/  relid; } ;
struct TYPE_13__ {int /*<<< orphan*/  relid; scalar_t__ fdw_private; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_4__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(List *tlist, bool is_subquery, List **retrieved_attrs,
				 deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;
	RelOptInfo *foreignrel = context->foreignrel;
	PlannerInfo *root = context->root;
	PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;

	/*
	 * Construct SELECT list
	 */
	FUNC2(buf, "SELECT ");

	if (is_subquery)
	{
		/*
		 * For a relation that is deparsed as a subquery, emit expressions
		 * specified in the relation's reltarget.  Note that since this is for
		 * the subquery, no need to care about *retrieved_attrs.
		 */
		FUNC4(context);
	}
	else if (FUNC0(foreignrel) || FUNC1(foreignrel))
	{
		/*
		 * For a join or upper relation the input tlist gives the list of
		 * columns required to be fetched from the foreign server.
		 */
		FUNC3(tlist, false, retrieved_attrs, context);
	}
	else
	{
		/*
		 * For a base relation fpinfo->attrs_used gives the list of columns
		 * required to be fetched from the foreign server.
		 */
		RangeTblEntry *rte = FUNC6(foreignrel->relid, root);

		/*
		 * Core code already has some lock on each rel being planned, so we
		 * can use NoLock here.
		 */
		Relation	rel = FUNC8(rte->relid, NoLock);

		FUNC5(buf, rte, foreignrel->relid, rel, false,
						  fpinfo->attrs_used, false, retrieved_attrs);
		FUNC7(rel, NoLock);
	}
}