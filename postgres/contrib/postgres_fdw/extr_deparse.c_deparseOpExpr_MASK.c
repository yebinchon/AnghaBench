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
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_10__ {char oprkind; } ;
struct TYPE_9__ {int /*<<< orphan*/  args; int /*<<< orphan*/  opno; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ OpExpr ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(OpExpr *node, deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;
	HeapTuple	tuple;
	Form_pg_operator form;
	char		oprkind;
	ListCell   *arg;

	/* Retrieve information about the operator from system catalog. */
	tuple = FUNC5(OPEROID, FUNC3(node->opno));
	if (!FUNC2(tuple))
		FUNC9(ERROR, "cache lookup failed for operator %u", node->opno);
	form = (Form_pg_operator) FUNC1(tuple);
	oprkind = form->oprkind;

	/* Sanity check. */
	FUNC0((oprkind == 'r' && FUNC12(node->args) == 1) ||
		   (oprkind == 'l' && FUNC12(node->args) == 1) ||
		   (oprkind == 'b' && FUNC12(node->args) == 2));

	/* Always parenthesize the expression. */
	FUNC6(buf, '(');

	/* Deparse left operand. */
	if (oprkind == 'r' || oprkind == 'b')
	{
		arg = FUNC11(node->args);
		FUNC7(FUNC10(arg), context);
		FUNC6(buf, ' ');
	}

	/* Deparse operator name. */
	FUNC8(buf, form);

	/* Deparse right operand. */
	if (oprkind == 'l' || oprkind == 'b')
	{
		arg = FUNC13(node->args);
		FUNC6(buf, ' ');
		FUNC7(FUNC10(arg), context);
	}

	FUNC6(buf, ')');

	FUNC4(tuple);
}