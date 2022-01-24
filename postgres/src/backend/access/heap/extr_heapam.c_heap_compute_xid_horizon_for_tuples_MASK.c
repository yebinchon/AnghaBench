#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  io_concurrency ;
struct TYPE_10__ {int nitems; int /*<<< orphan*/ * tids; scalar_t__ next_item; scalar_t__ cur_hblkno; } ;
typedef  TYPE_2__ XidHorizonPrefetchState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {int /*<<< orphan*/  reltablespace; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/ * Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ ItemPointerCompare ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_IO_CONCURRENCY ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int effective_io_concurrency ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*,int,int,int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,TYPE_2__*,int) ; 

TransactionId
FUNC22(Relation rel,
									ItemPointerData *tids,
									int nitems)
{
	TransactionId latestRemovedXid = InvalidTransactionId;
	BlockNumber hblkno;
	Buffer		buf = InvalidBuffer;
	Page		hpage;
#ifdef USE_PREFETCH
	XidHorizonPrefetchState prefetch_state;
	int			io_concurrency;
	int			prefetch_distance;
#endif

	/*
	 * Sort to avoid repeated lookups for the same page, and to make it more
	 * likely to access items in an efficient order. In particular, this
	 * ensures that if there are multiple pointers to the same page, they all
	 * get processed looking up and locking the page just once.
	 */
	FUNC20((void *) tids, nitems, sizeof(ItemPointerData),
		  (int (*) (const void *, const void *)) ItemPointerCompare);

#ifdef USE_PREFETCH
	/* Initialize prefetch state. */
	prefetch_state.cur_hblkno = InvalidBlockNumber;
	prefetch_state.next_item = 0;
	prefetch_state.nitems = nitems;
	prefetch_state.tids = tids;

	/*
	 * Compute the prefetch distance that we will attempt to maintain.
	 *
	 * We don't use the regular formula to determine how much to prefetch
	 * here, but instead just add a constant to effective_io_concurrency.
	 * That's because it seems best to do some prefetching here even when
	 * effective_io_concurrency is set to 0, but if the DBA thinks it's OK to
	 * do more prefetching for other operations, then it's probably OK to do
	 * more prefetching in this case, too. It may be that this formula is too
	 * simplistic, but at the moment there is no evidence of that or any idea
	 * about what would work better.
	 *
	 * Since the caller holds a buffer lock somewhere in rel, we'd better make
	 * sure that isn't a catalog relation before we call code that does
	 * syscache lookups, to avoid risk of deadlock.
	 */
	if (IsCatalogRelation(rel))
		io_concurrency = effective_io_concurrency;
	else
		io_concurrency = get_tablespace_io_concurrency(rel->rd_rel->reltablespace);
	prefetch_distance = Min((io_concurrency) + 10, MAX_IO_CONCURRENCY);

	/* Start prefetching. */
	xid_horizon_prefetch_buffer(rel, &prefetch_state, prefetch_distance);
#endif

	/* Iterate over all tids, and check their horizon */
	hblkno = InvalidBlockNumber;
	hpage = NULL;
	for (int i = 0; i < nitems; i++)
	{
		ItemPointer htid = &tids[i];
		ItemId		hitemid;
		OffsetNumber hoffnum;

		/*
		 * Read heap buffer, but avoid refetching if it's the same block as
		 * required for the last tid.
		 */
		if (hblkno == InvalidBlockNumber ||
			FUNC11(htid) != hblkno)
		{
			/* release old buffer */
			if (FUNC2(buf))
			{
				FUNC13(buf, BUFFER_LOCK_UNLOCK);
				FUNC18(buf);
			}

			hblkno = FUNC11(htid);

			buf = FUNC17(rel, hblkno);

#ifdef USE_PREFETCH

			/*
			 * To maintain the prefetch distance, prefetch one more page for
			 * each page we read.
			 */
			xid_horizon_prefetch_buffer(rel, &prefetch_state, 1);
#endif

			hpage = FUNC1(buf);

			FUNC13(buf, BUFFER_LOCK_SHARE);
		}

		hoffnum = FUNC12(htid);
		hitemid = FUNC16(hpage, hoffnum);

		/*
		 * Follow any redirections until we find something useful.
		 */
		while (FUNC9(hitemid))
		{
			hoffnum = FUNC6(hitemid);
			hitemid = FUNC16(hpage, hoffnum);
			FUNC3();
		}

		/*
		 * If the heap item has storage, then read the header and use that to
		 * set latestRemovedXid.
		 *
		 * Some LP_DEAD items may not be accessible, so we ignore them.
		 */
		if (FUNC7(hitemid))
		{
			HeapTupleHeader htuphdr;

			htuphdr = (HeapTupleHeader) FUNC15(hpage, hitemid);

			FUNC4(htuphdr, &latestRemovedXid);
		}
		else if (FUNC8(hitemid))
		{
			/*
			 * Conjecture: if hitemid is dead then it had xids before the xids
			 * marked on LP_NORMAL items. So we just ignore this item and move
			 * onto the next, for the purposes of calculating
			 * latestRemovedXid.
			 */
		}
		else
			FUNC0(!FUNC10(hitemid));

	}

	if (FUNC2(buf))
	{
		FUNC13(buf, BUFFER_LOCK_UNLOCK);
		FUNC18(buf);
	}

	/*
	 * If all heap tuples were LP_DEAD then we will be returning
	 * InvalidTransactionId here, which avoids conflicts. This matches
	 * existing logic which assumes that LP_DEAD tuples must already be older
	 * than the latestRemovedXid on the cleanup record that set them as
	 * LP_DEAD, hence must already have generated a conflict.
	 */

	return latestRemovedXid;
}