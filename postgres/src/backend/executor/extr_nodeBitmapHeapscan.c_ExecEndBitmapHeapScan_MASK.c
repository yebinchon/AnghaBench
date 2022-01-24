#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_8__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_6__ {scalar_t__ ss_ScanTupleSlot; TYPE_4__ ps; int /*<<< orphan*/  ss_currentScanDesc; } ;
struct TYPE_7__ {scalar_t__ vmbuffer; scalar_t__ pvmbuffer; scalar_t__ shared_prefetch_iterator; scalar_t__ shared_tbmiterator; scalar_t__ tbm; scalar_t__ prefetch_iterator; scalar_t__ tbmiterator; TYPE_1__ ss; } ;
typedef  TYPE_2__ BitmapHeapScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void
FUNC9(BitmapHeapScanState *node)
{
	TableScanDesc scanDesc;

	/*
	 * extract information from the node
	 */
	scanDesc = node->ss.ss_currentScanDesc;

	/*
	 * Free the exprcontext
	 */
	FUNC2(&node->ss.ps);

	/*
	 * clear out tuple table slots
	 */
	if (node->ss.ps.ps_ResultTupleSlot)
		FUNC0(node->ss.ps.ps_ResultTupleSlot);
	FUNC0(node->ss.ss_ScanTupleSlot);

	/*
	 * close down subplans
	 */
	FUNC1(FUNC4(node));

	/*
	 * release bitmaps and buffers if any
	 */
	if (node->tbmiterator)
		FUNC6(node->tbmiterator);
	if (node->prefetch_iterator)
		FUNC6(node->prefetch_iterator);
	if (node->tbm)
		FUNC8(node->tbm);
	if (node->shared_tbmiterator)
		FUNC7(node->shared_tbmiterator);
	if (node->shared_prefetch_iterator)
		FUNC7(node->shared_prefetch_iterator);
	if (node->vmbuffer != InvalidBuffer)
		FUNC3(node->vmbuffer);
	if (node->pvmbuffer != InvalidBuffer)
		FUNC3(node->pvmbuffer);

	/*
	 * close heap scan
	 */
	FUNC5(scanDesc);
}