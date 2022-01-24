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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_6__ {int rs_flags; int /*<<< orphan*/  rs_rd; int /*<<< orphan*/  rs_snapshot; int /*<<< orphan*/ * rs_parallel; } ;
struct TYPE_7__ {int /*<<< orphan*/ * t_data; int /*<<< orphan*/  t_self; void* t_len; } ;
struct TYPE_8__ {int rs_inited; scalar_t__ rs_nblocks; scalar_t__ rs_numblocks; scalar_t__ rs_startblock; scalar_t__ rs_cblock; int rs_cindex; int rs_ntuples; scalar_t__* rs_vistuples; TYPE_1__ rs_base; int /*<<< orphan*/  rs_cbuf; TYPE_2__ rs_ctup; } ;
typedef  int /*<<< orphan*/ * ScanKey ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  ParallelBlockTableScanDesc ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  void* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* HeapScanDesc ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int SO_ALLOW_SYNC ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(HeapScanDesc scan,
					ScanDirection dir,
					int nkeys,
					ScanKey key)
{
	HeapTuple	tuple = &(scan->rs_ctup);
	bool		backward = FUNC13(dir);
	BlockNumber page;
	bool		finished;
	Page		dp;
	int			lines;
	int			lineindex;
	OffsetNumber lineoff;
	int			linesleft;
	ItemId		lpp;

	/*
	 * calculate next starting lineindex, given scan direction
	 */
	if (FUNC14(dir))
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

				FUNC19(scan->rs_base.rs_rd,
														 pbscan);

				page = FUNC18(scan->rs_base.rs_rd,
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
			FUNC16((TableScanDesc) scan, page);
			lineindex = 0;
			scan->rs_inited = true;
		}
		else
		{
			/* continue from previously returned page/tuple */
			page = scan->rs_cblock; /* current page */
			lineindex = scan->rs_cindex + 1;
		}

		dp = FUNC1(scan->rs_cbuf);
		FUNC15(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
		lines = scan->rs_ntuples;
		/* page and lineindex now reference the next visible tid */

		linesleft = lines - lineindex;
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
			FUNC16((TableScanDesc) scan, page);
		}
		else
		{
			/* continue from previously returned page/tuple */
			page = scan->rs_cblock; /* current page */
		}

		dp = FUNC1(scan->rs_cbuf);
		FUNC15(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
		lines = scan->rs_ntuples;

		if (!scan->rs_inited)
		{
			lineindex = lines - 1;
			scan->rs_inited = true;
		}
		else
		{
			lineindex = scan->rs_cindex - 1;
		}
		/* page and lineindex now reference the previous visible tid */

		linesleft = lineindex + 1;
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

		page = FUNC6(&(tuple->t_self));
		if (page != scan->rs_cblock)
			FUNC16((TableScanDesc) scan, page);

		/* Since the tuple was previously fetched, needn't lock page here */
		dp = FUNC1(scan->rs_cbuf);
		FUNC15(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
		lineoff = FUNC7(&(tuple->t_self));
		lpp = FUNC10(dp, lineoff);
		FUNC0(FUNC5(lpp));

		tuple->t_data = (HeapTupleHeader) FUNC9((Page) dp, lpp);
		tuple->t_len = FUNC4(lpp);

		/* check that rs_cindex is in sync */
		FUNC0(scan->rs_cindex < scan->rs_ntuples);
		FUNC0(lineoff == scan->rs_vistuples[scan->rs_cindex]);

		return;
	}

	/*
	 * advance the scan until we find a qualifying tuple or run out of stuff
	 * to scan
	 */
	for (;;)
	{
		while (linesleft > 0)
		{
			lineoff = scan->rs_vistuples[lineindex];
			lpp = FUNC10(dp, lineoff);
			FUNC0(FUNC5(lpp));

			tuple->t_data = (HeapTupleHeader) FUNC9((Page) dp, lpp);
			tuple->t_len = FUNC4(lpp);
			FUNC8(&(tuple->t_self), page, lineoff);

			/*
			 * if current tuple qualifies, return it.
			 */
			if (key != NULL)
			{
				bool		valid;

				FUNC3(tuple, FUNC11(scan->rs_base.rs_rd),
							nkeys, key, valid);
				if (valid)
				{
					scan->rs_cindex = lineindex;
					return;
				}
			}
			else
			{
				scan->rs_cindex = lineindex;
				return;
			}

			/*
			 * otherwise move to the next item on the page
			 */
			--linesleft;
			if (backward)
				--lineindex;
			else
				++lineindex;
		}

		/*
		 * if we get here, it means we've exhausted the items on this page and
		 * it's time to move to the next.
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

			page = FUNC18(scan->rs_base.rs_rd,
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
				FUNC17(scan->rs_base.rs_rd, page);
		}

		/*
		 * return NULL if we've exhausted all the pages
		 */
		if (finished)
		{
			if (FUNC2(scan->rs_cbuf))
				FUNC12(scan->rs_cbuf);
			scan->rs_cbuf = InvalidBuffer;
			scan->rs_cblock = InvalidBlockNumber;
			tuple->t_data = NULL;
			scan->rs_inited = false;
			return;
		}

		FUNC16((TableScanDesc) scan, page);

		dp = FUNC1(scan->rs_cbuf);
		FUNC15(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
		lines = scan->rs_ntuples;
		linesleft = lines;
		if (backward)
			lineindex = lines - 1;
		else
			lineindex = 0;
	}
}