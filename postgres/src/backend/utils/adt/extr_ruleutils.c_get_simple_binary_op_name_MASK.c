#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  opno; int /*<<< orphan*/ * args; } ;
typedef  TYPE_1__ OpExpr ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static const char *
FUNC6(OpExpr *expr)
{
	List	   *args = expr->args;

	if (FUNC3(args) == 2)
	{
		/* binary operator */
		Node	   *arg1 = (Node *) FUNC2(args);
		Node	   *arg2 = (Node *) FUNC4(args);
		const char *op;

		op = FUNC1(expr->opno, FUNC0(arg1), FUNC0(arg2));
		if (FUNC5(op) == 1)
			return op;
	}
	return NULL;
}