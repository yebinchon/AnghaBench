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
struct TYPE_6__ {int /*<<< orphan*/  ss_ScanTupleSlot; int /*<<< orphan*/  ps; } ;
struct TYPE_8__ {int numtrans; TYPE_1__ ss; scalar_t__ hashcontext; scalar_t__* aggcontexts; TYPE_2__* pertrans; scalar_t__ sort_out; scalar_t__ sort_in; int /*<<< orphan*/  maxsets; } ;
struct TYPE_7__ {scalar_t__* sortstates; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_2__* AggStatePerTrans ;
typedef  TYPE_3__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(AggState *node)
{
	PlanState  *outerPlan;
	int			transno;
	int			numGroupingSets = FUNC3(node->maxsets, 1);
	int			setno;

	/* Make sure we have closed any open tuplesorts */

	if (node->sort_in)
		FUNC6(node->sort_in);
	if (node->sort_out)
		FUNC6(node->sort_out);

	for (transno = 0; transno < node->numtrans; transno++)
	{
		AggStatePerTrans pertrans = &node->pertrans[transno];

		for (setno = 0; setno < numGroupingSets; setno++)
		{
			if (pertrans->sortstates[setno])
				FUNC6(pertrans->sortstates[setno]);
		}
	}

	/* And ensure any agg shutdown callbacks have been called */
	for (setno = 0; setno < numGroupingSets; setno++)
		FUNC4(node->aggcontexts[setno]);
	if (node->hashcontext)
		FUNC4(node->hashcontext);

	/*
	 * We don't actually free any ExprContexts here (see comment in
	 * ExecFreeExprContext), just unlinking the output one from the plan node
	 * suffices.
	 */
	FUNC2(&node->ss.ps);

	/* clean up tuple table */
	FUNC0(node->ss.ss_ScanTupleSlot);

	outerPlan = FUNC5(node);
	FUNC1(outerPlan);
}