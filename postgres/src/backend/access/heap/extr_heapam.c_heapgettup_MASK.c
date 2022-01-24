#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_8__ {int rs_flags; int /*<<< orphan*/  rs_rd; int /*<<< orphan*/ * rs_parallel; int /*<<< orphan*/  rs_snapshot; } ;
struct TYPE_9__ {int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_self; void* t_len; } ;
struct TYPE_10__ {int rs_inited; scalar_t__ rs_nblocks; scalar_t__ rs_numblocks; scalar_t__ rs_startblock; scalar_t__ rs_cblock; TYPE_1__ rs_base; int /*<<< orphan*/  rs_cbuf; TYPE_2__ rs_ctup; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/ * ScanKey ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  ParallelBlockTableScanDesc ;
typedef  scalar_t__ Page ;
typedef  int OffsetNumber ;
typedef  scalar_t__ ItemId ;
typedef  void* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* HeapScanDesc ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 void* FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int SO_ALLOW_SYNC ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC26(HeapScanDesc scan,
		   ScanDirection dir,
		   int nkeys,
		   ScanKey key)
{
	HeapTuple	tuple = &(scan->rs_ctup);
	Snapshot	snapshot = scan->rs_base.rs_snapshot;
	bool		backward = FUNC19(dir);
	BlockNumber page;
	bool		finished;
	Page		dp;
	int			lines;
	OffsetNumber lineoff;
	int			linesleft;
	ItemId		lpp;

	/*
	 * calculate next starting lineoff, given scan direction
	 */
	if (FUNC20(dir))
	{
		if (!scan->rs_inited)
		{
			/*
			 * return null immediately if relation is empty
			 */
			if (scan->rs_nblocks == 0 || scan->rs_numblocks == 0)
			{
				FUNC0(!FUNC2(scan->rs_cbuf));
				tuple->t_data = NULL;
				return;
			}
			if (scan->rs_base.rs_parallel != NULL)
			{
				ParallelBlockTableScanDesc pbscan =
				(ParallelBlockTableScanDesc) scan->rs_base.rs_parallel;

				FUNC25(scan->rs_base.rs_rd,
														 pbscan);

				page = FUNC24(scan->rs_base.rs_rd,
														 pbscan);

				/* Other processes might have already finished the scan. */
				if (page == InvalidBlockNumber)
				{
					FUNC0(!FUNC2(scan->rs_cbuf));
					tuple->t_data = NULL;
					return;
				}
			}
			else
				page = scan->rs_startblock; /* first page */
			FUNC22((TableScanDesc) scan, page);
			lineoff = FirstOffsetNumber;	/* first offnum */
			scan->rs_inited = true;
		}
		else
		{
			/* continue from previously returned page/tuple */
			page = scan->rs_cblock; /* current page */
			lineoff =			/* next offnum */
				FUNC12(FUNC9(&(tuple->t_self)));
		}

		FUNC11(scan->rs_cbuf, BUFFER_LOCK_SHARE);

		dp = FUNC1(scan->rs_cbuf);
		FUNC21(snapshot, scan->rs_base.rs_rd, dp);
		lines = FUNC16(dp);
		/* page and lineoff now reference the physically next tid */

		linesleft = lines - lineoff + 1;
	}
	else if (backward)
	{
		/* backward parallel scan not supported */
		FUNC0(scan->rs_base.rs_parallel == NULL);

		if (!scan->rs_inited)
		{
			/*
			 * return null immediately if relation is empty
			 */
			if (scan->rs_nblocks == 0 || scan->rs_numblocks == 0)
			{
				FUNC0(!FUNC2(scan->rs_cbuf));
				tuple->t_data = NULL;
				return;
			}

			/*
			 * Disable reporting to syncscan logic in a backwards scan; it's
			 * not very likely anyone else is doing the same thing at the same
			 * time, and much more likely that we'll just bollix things for
			 * forward scanners.
			 */
			scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;
			/* start from last page of the scan */
			if (scan->rs_startblock > 0)
				page = scan->rs_startblock - 1;
			else
				page = scan->rs_nblocks - 1;
			FUNC22((TableScanDesc) scan, page);
		}
		else
		{
			/* continue from previously returned page/tuple */
			page = scan->rs_cblock; /* current page */
		}

		FUNC11(scan->rs_cbuf, BUFFER_LOCK_SHARE);

		dp = FUNC1(scan->rs_cbuf);
		FUNC21(snapshot, scan->rs_base.rs_rd, dp);
		lines = FUNC16(dp);

		if (!scan->rs_inited)
		{
			lineoff = lines;	/* final offnum */
			scan->rs_inited = true;
		}
		else
		{
			lineoff =			/* previous offnum */
				FUNC13(FUNC9(&(tuple->t_self)));
		}
		/* page and lineoff now reference the physically previous tid */

		linesleft = lineoff;
	}
	else
	{
		/*
		 * ``no movement'' scan direction: refetch prior tuple
		 */
		if (!scan->rs_inited)
		{
			FUNC0(!FUNC2(scan->rs_cbuf));
			tuple->t_data = NULL;
			return;
		}

		page = FUNC8(&(tuple->t_self));
		if (page != scan->rs_cblock)
			FUNC22((TableScanDesc) scan, page);

		/* Since the tuple was previously fetched, needn't lock page here */
		dp = FUNC1(scan->rs_cbuf);
		FUNC21(snapshot, scan->rs_base.rs_rd, dp);
		lineoff = FUNC9(&(tuple->t_self));
		lpp = FUNC15(dp, lineoff);
		FUNC0(FUNC7(lpp));

		tuple->t_data = (HeapTupleHeader) FUNC14((Page) dp, lpp);
		tuple->t_len = FUNC6(lpp);

		return;
	}

	/*
	 * advance the scan until we find a qualifying tuple or run out of stuff
	 * to scan
	 */
	lpp = FUNC15(dp, lineoff);
	for (;;)
	{
		while (linesleft > 0)
		{
			if (FUNC7(lpp))
			{
				bool		valid;

				tuple->t_data = (HeapTupleHeader) FUNC14((Page) dp, lpp);
				tuple->t_len = FUNC6(lpp);
				FUNC10(&(tuple->t_self), page, lineoff);

				/*
				 * if current tuple qualifies, return it.
				 */
				valid = FUNC5(tuple,
													 snapshot,
													 scan->rs_cbuf);

				FUNC3(valid, scan->rs_base.rs_rd,
												tuple, scan->rs_cbuf,
												snapshot);

				if (valid && key != NULL)
					FUNC4(tuple, FUNC17(scan->rs_base.rs_rd),
								nkeys, key, valid);

				if (valid)
				{
					FUNC11(scan->rs_cbuf, BUFFER_LOCK_UNLOCK);
					return;
				}
			}

			/*
			 * otherwise move to the next item on the page
			 */
			--linesleft;
			if (backward)
			{
				--lpp;			/* move back in this page's ItemId array */
				--lineoff;
			}
			else
			{
				++lpp;			/* move forward in this page's ItemId array */
				++lineoff;
			}
		}

		/*
		 * if we get here, it means we've exhausted the items on this page and
		 * it's time to move to the next.
		 */
		FUNC11(scan->rs_cbuf, BUFFER_LOCK_UNLOCK);

		/*
		 * advance to next/prior page and detect end of scan
		 */
		if (backward)
		{
			finished = (page == scan->rs_startblock) ||
				(scan->rs_numblocks != InvalidBlockNumber ? --scan->rs_numblocks == 0 : false);
			if (page == 0)
				page = scan->rs_nblocks;
			page--;
		}
		else if (scan->rs_base.rs_parallel != NULL)
		{
			ParallelBlockTableScanDesc pbscan =
			(ParallelBlockTableScanDesc) scan->rs_base.rs_parallel;

			page = FUNC24(scan->rs_base.rs_rd,
													 pbscan);
			finished = (page == InvalidBlockNumber);
		}
		else
		{
			page++;
			if (page >= scan->rs_nblocks)
				page = 0;
			finished = (page == scan->rs_startblock) ||
				(scan->rs_numblocks != InvalidBlockNumber ? --scan->rs_numblocks == 0 : false);

			/*
			 * Report our new scan position for synchronization purposes. We
			 * don't do that when moving backwards, however. That would just
			 * mess up any other forward-moving scanners.
			 *
			 * Note: we do this before checking for end of scan so that the
			 * final state of the position hint is back at the start of the
			 * rel.  That's not strictly necessary, but otherwise when you run
			 * the same query multiple times the starting position would shift
			 * a little bit backwards on every invocation, which is confusing.
			 * We don't guarantee any specific ordering in general, though.
			 */
			if (scan->rs_base.rs_flags & SO_ALLOW_SYNC)
				FUNC23(scan->rs_base.rs_rd, page);
		}

		/*
		 * return NULL if we've exhausted all the pages
		 */
		if (finished)
		{
			if (FUNC2(scan->rs_cbuf))
				FUNC18(scan->rs_cbuf);
			scan->rs_cbuf = InvalidBuffer;
			scan->rs_cblock = InvalidBlockNumber;
			tuple->t_data = NULL;
			scan->rs_inited = false;
			return;
		}

		FUNC22((TableScanDesc) scan, page);

		FUNC11(scan->rs_cbuf, BUFFER_LOCK_SHARE);

		dp = FUNC1(scan->rs_cbuf);
		FUNC21(snapshot, scan->rs_base.rs_rd, dp);
		lines = FUNC16((Page) dp);
		linesleft = lines;
		if (backward)
		{
			lineoff = lines;
			lpp = FUNC15(dp, lines);
		}
		else
		{
			lineoff = FirstOffsetNumber;
			lpp = FUNC15(dp, FirstOffsetNumber);
		}
	}
}