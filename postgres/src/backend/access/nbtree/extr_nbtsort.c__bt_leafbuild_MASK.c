#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  index; int /*<<< orphan*/  heap; int /*<<< orphan*/  sortstate; } ;
struct TYPE_8__ {int btws_use_wal; int /*<<< orphan*/ * btws_zeropage; scalar_t__ btws_pages_written; scalar_t__ btws_pages_alloced; int /*<<< orphan*/  index; int /*<<< orphan*/  inskey; int /*<<< orphan*/  heap; } ;
typedef  TYPE_1__ BTWriteState ;
typedef  TYPE_2__ BTSpool ;

/* Variables and functions */
 scalar_t__ BTREE_METAPAGE ; 
 int /*<<< orphan*/  PROGRESS_BTREE_PHASE_LEAF_LOAD ; 
 int /*<<< orphan*/  PROGRESS_BTREE_PHASE_PERFORMSORT_1 ; 
 int /*<<< orphan*/  PROGRESS_BTREE_PHASE_PERFORMSORT_2 ; 
 int /*<<< orphan*/  PROGRESS_CREATEIDX_SUBPHASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ log_btree_build_stats ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(BTSpool *btspool, BTSpool *btspool2)
{
	BTWriteState wstate;

#ifdef BTREE_BUILD_STATS
	if (log_btree_build_stats)
	{
		ShowUsage("BTREE BUILD (Spool) STATISTICS");
		ResetUsage();
	}
#endif							/* BTREE_BUILD_STATS */

	FUNC6(PROGRESS_CREATEIDX_SUBPHASE,
								 PROGRESS_BTREE_PHASE_PERFORMSORT_1);
	FUNC7(btspool->sortstate);
	if (btspool2)
	{
		FUNC6(PROGRESS_CREATEIDX_SUBPHASE,
									 PROGRESS_BTREE_PHASE_PERFORMSORT_2);
		FUNC7(btspool2->sortstate);
	}

	wstate.heap = btspool->heap;
	wstate.index = btspool->index;
	wstate.inskey = FUNC5(wstate.index, NULL);

	/*
	 * We need to log index creation in WAL iff WAL archiving/streaming is
	 * enabled UNLESS the index isn't WAL-logged anyway.
	 */
	wstate.btws_use_wal = FUNC3() && FUNC0(wstate.index);

	/* reserve the metapage */
	wstate.btws_pages_alloced = BTREE_METAPAGE + 1;
	wstate.btws_pages_written = 0;
	wstate.btws_zeropage = NULL;	/* until needed */

	FUNC6(PROGRESS_CREATEIDX_SUBPHASE,
								 PROGRESS_BTREE_PHASE_LEAF_LOAD);
	FUNC4(&wstate, btspool, btspool2);
}