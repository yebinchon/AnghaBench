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
struct TYPE_6__ {TYPE_2__* addrs; int /*<<< orphan*/  rtables; } ;
typedef  TYPE_1__ find_expr_references_context ;
struct TYPE_7__ {int /*<<< orphan*/  numrefs; int /*<<< orphan*/  refs; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DependencyType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(const ObjectAddress *depender,
					   Node *expr, List *rtable,
					   DependencyType behavior)
{
	find_expr_references_context context;

	context.addrs = FUNC4();

	/* Set up interpretation for Vars at varlevelsup = 0 */
	context.rtables = FUNC3(rtable);

	/* Scan the expression tree for referenceable objects */
	FUNC1(expr, &context);

	/* Remove any duplicates */
	FUNC0(context.addrs);

	/* And record 'em */
	FUNC5(depender,
							   context.addrs->refs, context.addrs->numrefs,
							   behavior);

	FUNC2(context.addrs);
}