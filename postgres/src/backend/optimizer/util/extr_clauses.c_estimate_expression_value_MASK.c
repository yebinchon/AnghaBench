#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int estimate; int /*<<< orphan*/ * case_val; int /*<<< orphan*/  active_fns; int /*<<< orphan*/ * root; int /*<<< orphan*/  boundParams; } ;
typedef  TYPE_2__ eval_const_expressions_context ;
struct TYPE_8__ {TYPE_1__* glob; } ;
struct TYPE_6__ {int /*<<< orphan*/  boundParams; } ;
typedef  TYPE_3__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 

Node *
FUNC1(PlannerInfo *root, Node *node)
{
	eval_const_expressions_context context;

	context.boundParams = root->glob->boundParams;	/* bound Params */
	/* we do not need to mark the plan as depending on inlined functions */
	context.root = NULL;
	context.active_fns = NIL;	/* nothing being recursively simplified */
	context.case_val = NULL;	/* no CASE being examined */
	context.estimate = true;	/* unsafe transformations OK */
	return FUNC0(node, &context);
}