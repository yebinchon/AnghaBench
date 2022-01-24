#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_7__ {int /*<<< orphan*/  args; scalar_t__ useOr; int /*<<< orphan*/  opno; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ ScalarArrayOpExpr ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Form_pg_operator ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(ScalarArrayOpExpr *node, deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;
	HeapTuple	tuple;
	Form_pg_operator form;
	Expr	   *arg1;
	Expr	   *arg2;

	/* Retrieve information about the operator from system catalog. */
	tuple = FUNC5(OPEROID, FUNC3(node->opno));
	if (!FUNC2(tuple))
		FUNC10(ERROR, "cache lookup failed for operator %u", node->opno);
	form = (Form_pg_operator) FUNC1(tuple);

	/* Sanity check. */
	FUNC0(FUNC12(node->args) == 2);

	/* Always parenthesize the expression. */
	FUNC7(buf, '(');

	/* Deparse left operand. */
	arg1 = FUNC11(node->args);
	FUNC8(arg1, context);
	FUNC7(buf, ' ');

	/* Deparse operator name plus decoration. */
	FUNC9(buf, form);
	FUNC6(buf, " %s (", node->useOr ? "ANY" : "ALL");

	/* Deparse right operand. */
	arg2 = FUNC13(node->args);
	FUNC8(arg2, context);

	FUNC7(buf, ')');

	/* Always parenthesize the expression. */
	FUNC7(buf, ')');

	FUNC4(tuple);
}