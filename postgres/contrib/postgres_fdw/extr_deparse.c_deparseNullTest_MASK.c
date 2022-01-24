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
struct TYPE_7__ {scalar_t__ nulltesttype; scalar_t__ arg; scalar_t__ argisrow; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ NullTest ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(NullTest *node, deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;

	FUNC0(buf, '(');
	FUNC2(node->arg, context);

	/*
	 * For scalar inputs, we prefer to print as IS [NOT] NULL, which is
	 * shorter and traditional.  If it's a rowtype input but we're applying a
	 * scalar test, must print IS [NOT] DISTINCT FROM NULL to be semantically
	 * correct.
	 */
	if (node->argisrow || !FUNC4(FUNC3((Node *) node->arg)))
	{
		if (node->nulltesttype == IS_NULL)
			FUNC1(buf, " IS NULL)");
		else
			FUNC1(buf, " IS NOT NULL)");
	}
	else
	{
		if (node->nulltesttype == IS_NULL)
			FUNC1(buf, " IS NOT DISTINCT FROM NULL)");
		else
			FUNC1(buf, " IS DISTINCT FROM NULL)");
	}
}