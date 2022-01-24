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
struct TYPE_3__ {int /*<<< orphan*/ * subst_nodes; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ convert_testexpr_context ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Node *
FUNC1(PlannerInfo *root,
				 Node *testexpr,
				 List *subst_nodes)
{
	convert_testexpr_context context;

	context.root = root;
	context.subst_nodes = subst_nodes;
	return FUNC0(testexpr, &context);
}