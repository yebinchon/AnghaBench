#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
struct TYPE_10__ {int oprkind; } ;
struct TYPE_9__ {int opno; int /*<<< orphan*/ * args; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ OpExpr ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(OpExpr *expr, deparse_context *context)
{
	StringInfo	buf = context->buf;
	Oid			opno = expr->opno;
	List	   *args = expr->args;

	if (!FUNC3(context))
		FUNC7(buf, '(');
	if (FUNC13(args) == 2)
	{
		/* binary operator */
		Node	   *arg1 = (Node *) FUNC12(args);
		Node	   *arg2 = (Node *) FUNC14(args);

		FUNC11(arg1, context, true, (Node *) expr);
		FUNC6(buf, " %s ",
						 FUNC10(opno,
												FUNC9(arg1),
												FUNC9(arg2)));
		FUNC11(arg2, context, true, (Node *) expr);
	}
	else
	{
		/* unary operator --- but which side? */
		Node	   *arg = (Node *) FUNC12(args);
		HeapTuple	tp;
		Form_pg_operator optup;

		tp = FUNC5(OPEROID, FUNC2(opno));
		if (!FUNC1(tp))
			FUNC8(ERROR, "cache lookup failed for operator %u", opno);
		optup = (Form_pg_operator) FUNC0(tp);
		switch (optup->oprkind)
		{
			case 'l':
				FUNC6(buf, "%s ",
								 FUNC10(opno,
														InvalidOid,
														FUNC9(arg)));
				FUNC11(arg, context, true, (Node *) expr);
				break;
			case 'r':
				FUNC11(arg, context, true, (Node *) expr);
				FUNC6(buf, " %s",
								 FUNC10(opno,
														FUNC9(arg),
														InvalidOid));
				break;
			default:
				FUNC8(ERROR, "bogus oprkind: %d", optup->oprkind);
		}
		FUNC4(tp);
	}
	if (!FUNC3(context))
		FUNC7(buf, ')');
}