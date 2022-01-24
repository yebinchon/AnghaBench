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
struct TYPE_3__ {int boolop; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ BoolExpr ;

/* Variables and functions */
#define  AND_EXPR 130 
#define  NOT_EXPR 129 
#define  OR_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const BoolExpr *node)
{
	char	   *opstr = NULL;

	FUNC2("BOOLEXPR");

	/* do-it-yourself enum representation */
	switch (node->boolop)
	{
		case AND_EXPR:
			opstr = "and";
			break;
		case OR_EXPR:
			opstr = "or";
			break;
		case NOT_EXPR:
			opstr = "not";
			break;
	}
	FUNC3(str, " :boolop ");
	FUNC4(str, opstr);

	FUNC1(args);
	FUNC0(location);
}