#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int delta_sublevels_up; int min_sublevels_up; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ IncrementVarSublevelsUp_context ;

/* Variables and functions */
 int /*<<< orphan*/  IncrementVarSublevelsUp_walker ; 
 int /*<<< orphan*/  QTW_EXAMINE_RTES_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void
FUNC1(Node *node, int delta_sublevels_up,
						int min_sublevels_up)
{
	IncrementVarSublevelsUp_context context;

	context.delta_sublevels_up = delta_sublevels_up;
	context.min_sublevels_up = min_sublevels_up;

	/*
	 * Must be prepared to start with a Query or a bare expression tree; if
	 * it's a Query, we don't want to increment sublevels_up.
	 */
	FUNC0(node,
									IncrementVarSublevelsUp_walker,
									(void *) &context,
									QTW_EXAMINE_RTES_BEFORE);
}