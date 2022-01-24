#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_10__ {int rs_flags; int /*<<< orphan*/  rs_rd; TYPE_2__* rs_snapshot; } ;
struct TYPE_13__ {scalar_t__ rs_nblocks; int* rs_vistuples; int rs_ntuples; TYPE_1__ rs_base; int /*<<< orphan*/  rs_cbuf; scalar_t__ rs_cblock; int /*<<< orphan*/  rs_strategy; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; scalar_t__ t_data; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_11__ {int /*<<< orphan*/  takenDuringRecovery; } ;
typedef  TYPE_2__* Snapshot ;
typedef  scalar_t__ Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_3__ HeapTupleData ;
typedef  TYPE_4__* HeapScanDesc ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FirstOffsetNumber ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int MaxHeapTuplesPerPage ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int SO_ALLOW_PAGEMODE ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19(TableScanDesc sscan, BlockNumber page)
{
	HeapScanDesc scan = (HeapScanDesc) sscan;
	Buffer		buffer;
	Snapshot	snapshot;
	Page		dp;
	int			lines;
	int			ntup;
	OffsetNumber lineoff;
	ItemId		lpp;
	bool		all_visible;

	FUNC0(page < scan->rs_nblocks);

	/* release previous scan buffer, if any */
	if (FUNC2(scan->rs_cbuf))
	{
		FUNC16(scan->rs_cbuf);
		scan->rs_cbuf = InvalidBuffer;
	}

	/*
	 * Be sure to check for interrupts at least once per page.  Checks at
	 * higher code levels won't be able to stop a seqscan that encounters many
	 * pages' worth of consecutive dead tuples.
	 */
	FUNC3();

	/* read page using selected strategy */
	scan->rs_cbuf = FUNC14(scan->rs_base.rs_rd, MAIN_FORKNUM, page,
									   RBM_NORMAL, scan->rs_strategy);
	scan->rs_cblock = page;

	if (!(scan->rs_base.rs_flags & SO_ALLOW_PAGEMODE))
		return;

	buffer = scan->rs_cbuf;
	snapshot = scan->rs_base.rs_snapshot;

	/*
	 * Prune and repair fragmentation for the whole page, if possible.
	 */
	FUNC18(scan->rs_base.rs_rd, buffer);

	/*
	 * We must hold share lock on the buffer content while examining tuple
	 * visibility.  Afterwards, however, the tuples we have found to be
	 * visible are guaranteed good as long as we hold the buffer pin.
	 */
	FUNC9(buffer, BUFFER_LOCK_SHARE);

	dp = FUNC1(buffer);
	FUNC17(snapshot, scan->rs_base.rs_rd, dp);
	lines = FUNC12(dp);
	ntup = 0;

	/*
	 * If the all-visible flag indicates that all tuples on the page are
	 * visible to everyone, we can skip the per-tuple visibility tests.
	 *
	 * Note: In hot standby, a tuple that's already visible to all
	 * transactions in the master might still be invisible to a read-only
	 * transaction in the standby. We partly handle this problem by tracking
	 * the minimum xmin of visible tuples as the cut-off XID while marking a
	 * page all-visible on master and WAL log that along with the visibility
	 * map SET operation. In hot standby, we wait for (or abort) all
	 * transactions that can potentially may not see one or more tuples on the
	 * page. That's how index-only scans work fine in hot standby. A crucial
	 * difference between index-only scans and heap scans is that the
	 * index-only scan completely relies on the visibility map where as heap
	 * scan looks at the page-level PD_ALL_VISIBLE flag. We are not sure if
	 * the page-level flag can be trusted in the same way, because it might
	 * get propagated somehow without being explicitly WAL-logged, e.g. via a
	 * full page write. Until we can prove that beyond doubt, let's check each
	 * tuple for visibility the hard way.
	 */
	all_visible = FUNC13(dp) && !snapshot->takenDuringRecovery;

	for (lineoff = FirstOffsetNumber, lpp = FUNC11(dp, lineoff);
		 lineoff <= lines;
		 lineoff++, lpp++)
	{
		if (FUNC7(lpp))
		{
			HeapTupleData loctup;
			bool		valid;

			loctup.t_tableOid = FUNC15(scan->rs_base.rs_rd);
			loctup.t_data = (HeapTupleHeader) FUNC10((Page) dp, lpp);
			loctup.t_len = FUNC6(lpp);
			FUNC8(&(loctup.t_self), page, lineoff);

			if (all_visible)
				valid = true;
			else
				valid = FUNC5(&loctup, snapshot, buffer);

			FUNC4(valid, scan->rs_base.rs_rd,
											&loctup, buffer, snapshot);

			if (valid)
				scan->rs_vistuples[ntup++] = lineoff;
		}
	}

	FUNC9(buffer, BUFFER_LOCK_UNLOCK);

	FUNC0(ntup <= MaxHeapTuplesPerPage);
	scan->rs_ntuples = ntup;
}