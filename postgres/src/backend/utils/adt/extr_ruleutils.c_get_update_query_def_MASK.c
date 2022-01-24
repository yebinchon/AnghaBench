#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  indentLevel; int /*<<< orphan*/  buf; } ;
typedef  TYPE_3__ deparse_context ;
struct TYPE_25__ {scalar_t__ returningList; TYPE_2__* jointree; int /*<<< orphan*/  targetList; int /*<<< orphan*/  rtable; int /*<<< orphan*/  resultRelation; } ;
struct TYPE_24__ {scalar_t__ rtekind; TYPE_1__* alias; int /*<<< orphan*/  relid; } ;
struct TYPE_22__ {int /*<<< orphan*/ * quals; } ;
struct TYPE_21__ {int /*<<< orphan*/  aliasname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_4__ RangeTblEntry ;
typedef  TYPE_5__ Query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  PRETTYINDENT_STD ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(Query *query, deparse_context *context)
{
	StringInfo	buf = context->buf;
	RangeTblEntry *rte;

	/* Insert the WITH clause if given */
	FUNC11(query, context);

	/*
	 * Start the query with UPDATE relname SET
	 */
	rte = FUNC14(query->resultRelation, query->rtable);
	FUNC0(rte->rtekind == RTE_RELATION);
	if (FUNC1(context))
	{
		FUNC4(buf, ' ');
		context->indentLevel += PRETTYINDENT_STD;
	}
	FUNC3(buf, "UPDATE %s%s",
					 FUNC12(rte),
					 FUNC6(rte->relid, NIL));
	if (rte->alias != NULL)
		FUNC3(buf, " %s",
						 FUNC13(rte->alias->aliasname));
	FUNC5(buf, " SET ");

	/* Deparse targetlist */
	FUNC10(query, query->targetList, context, rte);

	/* Add the FROM clause if needed */
	FUNC7(query, " FROM ", context);

	/* Add a WHERE clause if given */
	if (query->jointree->quals != NULL)
	{
		FUNC2(context, " WHERE ",
							 -PRETTYINDENT_STD, PRETTYINDENT_STD, 1);
		FUNC8(query->jointree->quals, context, false);
	}

	/* Add RETURNING if present */
	if (query->returningList)
	{
		FUNC2(context, " RETURNING",
							 -PRETTYINDENT_STD, PRETTYINDENT_STD, 1);
		FUNC9(query->returningList, context, NULL);
	}
}