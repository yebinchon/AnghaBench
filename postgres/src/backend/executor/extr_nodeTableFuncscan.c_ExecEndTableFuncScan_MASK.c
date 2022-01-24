#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_5__ {scalar_t__ ss_ScanTupleSlot; TYPE_3__ ps; } ;
struct TYPE_6__ {int /*<<< orphan*/ * tupstore; TYPE_1__ ss; } ;
typedef  TYPE_2__ TableFuncScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(TableFuncScanState *node)
{
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
	 * Release tuplestore resources
	 */
	if (node->tupstore != NULL)
		FUNC2(node->tupstore);
	node->tupstore = NULL;
}