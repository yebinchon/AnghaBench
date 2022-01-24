#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_8__ {int /*<<< orphan*/ * tstore; scalar_t__ func_slot; } ;
struct TYPE_6__ {scalar_t__ ss_ScanTupleSlot; TYPE_4__ ps; } ;
struct TYPE_7__ {int nfuncs; TYPE_3__* funcstates; TYPE_1__ ss; } ;
typedef  TYPE_2__ FunctionScanState ;
typedef  TYPE_3__ FunctionScanPerFuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(FunctionScanState *node)
{
	int			i;

	/*
	 * Free the exprcontext
	 */
	FUNC1(&node->ss.ps);

	/*
	 * clean out the tuple table
	 */
	if (node->ss.ps.ps_ResultTupleSlot)
		FUNC0(node->ss.ps.ps_ResultTupleSlot);
	FUNC0(node->ss.ss_ScanTupleSlot);

	/*
	 * Release slots and tuplestore resources
	 */
	for (i = 0; i < node->nfuncs; i++)
	{
		FunctionScanPerFuncState *fs = &node->funcstates[i];

		if (fs->func_slot)
			FUNC0(fs->func_slot);

		if (fs->tstore != NULL)
		{
			FUNC2(node->funcstates[i].tstore);
			fs->tstore = NULL;
		}
	}
}