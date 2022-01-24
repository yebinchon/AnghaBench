#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  chgParam; TYPE_1__* plan; } ;
struct TYPE_4__ {int /*<<< orphan*/  allParam; } ;
typedef  TYPE_2__ PlanState ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(PlanState *node, Bitmapset *newchg)
{
	Bitmapset  *parmset;

	/*
	 * The plan node only depends on params listed in its allParam set. Don't
	 * include anything else into its chgParam set.
	 */
	parmset = FUNC1(node->plan->allParam, newchg);

	/*
	 * Keep node->chgParam == NULL if there's not actually any members; this
	 * allows the simplest possible tests in executor node files.
	 */
	if (!FUNC2(parmset))
		node->chgParam = FUNC3(node->chgParam, parmset);
	else
		FUNC0(parmset);
}