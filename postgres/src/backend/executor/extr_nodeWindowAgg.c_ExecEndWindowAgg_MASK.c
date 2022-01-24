#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ps_ExprContext; } ;
struct TYPE_8__ {TYPE_6__ ps; scalar_t__ ss_ScanTupleSlot; } ;
struct TYPE_9__ {int numaggs; scalar_t__ aggcontext; scalar_t__ partcontext; TYPE_4__* peragg; TYPE_4__* perfunc; TYPE_1__ ss; int /*<<< orphan*/  tmpcontext; scalar_t__ frametail_slot; scalar_t__ framehead_slot; scalar_t__ temp_slot_2; scalar_t__ temp_slot_1; scalar_t__ agg_row_slot; scalar_t__ first_part_slot; } ;
typedef  TYPE_2__ WindowAggState ;
struct TYPE_10__ {scalar_t__ aggcontext; } ;
typedef  int /*<<< orphan*/  PlanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(WindowAggState *node)
{
	PlanState  *outerPlan;
	int			i;

	FUNC6(node);

	FUNC0(node->ss.ss_ScanTupleSlot);
	FUNC0(node->first_part_slot);
	FUNC0(node->agg_row_slot);
	FUNC0(node->temp_slot_1);
	FUNC0(node->temp_slot_2);
	if (node->framehead_slot)
		FUNC0(node->framehead_slot);
	if (node->frametail_slot)
		FUNC0(node->frametail_slot);

	/*
	 * Free both the expr contexts.
	 */
	FUNC2(&node->ss.ps);
	node->ss.ps.ps_ExprContext = node->tmpcontext;
	FUNC2(&node->ss.ps);

	for (i = 0; i < node->numaggs; i++)
	{
		if (node->peragg[i].aggcontext != node->aggcontext)
			FUNC3(node->peragg[i].aggcontext);
	}
	FUNC3(node->partcontext);
	FUNC3(node->aggcontext);

	FUNC5(node->perfunc);
	FUNC5(node->peragg);

	outerPlan = FUNC4(node);
	FUNC1(outerPlan);
}