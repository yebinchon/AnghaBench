#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_8__ {scalar_t__ ss_currentScanDesc; scalar_t__ ss_ScanTupleSlot; TYPE_5__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; TYPE_1__* tsmroutine; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* EndSampleScan ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ SampleScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(SampleScanState *node)
{
	/*
	 * Tell sampling function that we finished the scan.
	 */
	if (node->tsmroutine->EndSampleScan)
		node->tsmroutine->EndSampleScan(node);

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
	 * close heap scan
	 */
	if (node->ss.ss_currentScanDesc)
		FUNC3(node->ss.ss_currentScanDesc);
}