#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  indirection; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParseExprKind ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ A_Indirection ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC5(ParseState *pstate, A_Indirection *ind,
					  bool make_target_entry, ParseExprKind exprKind)
{
	Node	   *expr;

	/* Strip off the '*' to create a reference to the rowtype object */
	ind = FUNC1(ind);
	ind->indirection = FUNC3(ind->indirection,
									 FUNC2(ind->indirection) - 1);

	/* And transform that */
	expr = FUNC4(pstate, (Node *) ind, exprKind);

	/* Expand the rowtype expression into individual fields */
	return FUNC0(pstate, expr, make_target_entry);
}