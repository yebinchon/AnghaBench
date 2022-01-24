#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  deparse_namespace ;
struct TYPE_16__ {int varprefix; int prettyFlags; int wrapColumn; int indentLevel; int /*<<< orphan*/  special_exprkind; int /*<<< orphan*/ * windowTList; int /*<<< orphan*/ * windowClause; int /*<<< orphan*/  namespaces; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_17__ {int commandType; int /*<<< orphan*/  rtable; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  CMD_DELETE 133 
#define  CMD_INSERT 132 
#define  CMD_NOTHING 131 
#define  CMD_SELECT 130 
#define  CMD_UPDATE 129 
#define  CMD_UTILITY 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXPR_KIND_NONE ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(Query *query, StringInfo buf, List *parentnamespace,
			  TupleDesc resultDesc,
			  int prettyFlags, int wrapColumn, int startIndent)
{
	deparse_context context;
	deparse_namespace dpns;

	/* Guard against excessively long or deeply-nested queries */
	FUNC1();
	FUNC3();

	/*
	 * Before we begin to examine the query, acquire locks on referenced
	 * relations, and fix up deleted columns in JOIN RTEs.  This ensures
	 * consistent results.  Note we assume it's OK to scribble on the passed
	 * querytree!
	 *
	 * We are only deparsing the query (we are not about to execute it), so we
	 * only need AccessShareLock on the relations it mentions.
	 */
	FUNC0(query, false, false);

	context.buf = buf;
	context.namespaces = FUNC10(&dpns, FUNC11(parentnamespace));
	context.windowClause = NIL;
	context.windowTList = NIL;
	context.varprefix = (parentnamespace != NIL ||
						 FUNC12(query->rtable) != 1);
	context.prettyFlags = prettyFlags;
	context.wrapColumn = wrapColumn;
	context.indentLevel = startIndent;
	context.special_exprkind = EXPR_KIND_NONE;

	FUNC13(&dpns, query, parentnamespace);

	switch (query->commandType)
	{
		case CMD_SELECT:
			FUNC7(query, &context, resultDesc);
			break;

		case CMD_UPDATE:
			FUNC8(query, &context);
			break;

		case CMD_INSERT:
			FUNC6(query, &context);
			break;

		case CMD_DELETE:
			FUNC5(query, &context);
			break;

		case CMD_NOTHING:
			FUNC2(buf, "NOTHING");
			break;

		case CMD_UTILITY:
			FUNC9(query, &context);
			break;

		default:
			FUNC4(ERROR, "unrecognized query command type: %d",
				 query->commandType);
			break;
	}
}