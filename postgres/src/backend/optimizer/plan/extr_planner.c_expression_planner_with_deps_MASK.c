#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  root ;
typedef  int /*<<< orphan*/  glob ;
struct TYPE_6__ {int /*<<< orphan*/ * invalItems; int /*<<< orphan*/ * relationOids; struct TYPE_6__* glob; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  TYPE_1__ PlannerGlobal ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* NIL ; 
 int /*<<< orphan*/  T_PlannerGlobal ; 
 int /*<<< orphan*/  T_PlannerInfo ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

Expr *
FUNC4(Expr *expr,
							 List **relationOids,
							 List **invalItems)
{
	Node	   *result;
	PlannerGlobal glob;
	PlannerInfo root;

	/* Make up dummy planner state so we can use setrefs machinery */
	FUNC0(&glob, 0, sizeof(glob));
	glob.type = T_PlannerGlobal;
	glob.relationOids = NIL;
	glob.invalItems = NIL;

	FUNC0(&root, 0, sizeof(root));
	root.type = T_PlannerInfo;
	root.glob = &glob;

	/*
	 * Convert named-argument function calls, insert default arguments and
	 * simplify constant subexprs.  Collect identities of inlined functions
	 * and elided domains, too.
	 */
	result = FUNC1(&root, (Node *) expr);

	/* Fill in opfuncid values if missing */
	FUNC3(result);

	/*
	 * Now walk the finished expression to find anything else we ought to
	 * record as an expression dependency.
	 */
	(void) FUNC2(result, &root);

	*relationOids = glob.relationOids;
	*invalItems = glob.invalItems;

	return (Expr *) result;
}