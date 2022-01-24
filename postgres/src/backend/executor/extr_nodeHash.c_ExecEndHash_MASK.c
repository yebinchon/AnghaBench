#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ps; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_1__ HashState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

void
FUNC3(HashState *node)
{
	PlanState  *outerPlan;

	/*
	 * free exprcontext
	 */
	FUNC1(&node->ps);

	/*
	 * shut down the subplan
	 */
	outerPlan = FUNC2(node);
	FUNC0(outerPlan);
}