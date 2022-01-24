#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ntups; int is_prim_bucket_same_wrt; } ;
typedef  TYPE_1__ xl_hash_move_page_contents ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_4__ {scalar_t__ hasho_nextblkno; scalar_t__ hasho_bucket; scalar_t__ hasho_prevblkno; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ Bucket ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  HASH_WRITE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int MaxIndexTuplesPerPage ; 
 int MaxOffsetNumber ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_NO_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  SizeOfHashMovePageContents ; 
 int /*<<< orphan*/  XLOG_HASH_MOVE_PAGE_CONTENTS ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 

void
FUNC32(Relation rel,
					Bucket bucket,
					BlockNumber bucket_blkno,
					Buffer bucket_buf,
					BufferAccessStrategy bstrategy)
{
	BlockNumber wblkno;
	BlockNumber rblkno;
	Buffer		wbuf;
	Buffer		rbuf;
	Page		wpage;
	Page		rpage;
	HashPageOpaque wopaque;
	HashPageOpaque ropaque;

	/*
	 * start squeezing into the primary bucket page.
	 */
	wblkno = bucket_blkno;
	wbuf = bucket_buf;
	wpage = FUNC2(wbuf);
	wopaque = (HashPageOpaque) FUNC15(wpage);

	/*
	 * if there aren't any overflow pages, there's nothing to squeeze. caller
	 * is responsible for releasing the pin on primary bucket page.
	 */
	if (!FUNC1(wopaque->hasho_nextblkno))
	{
		FUNC7(wbuf, BUFFER_LOCK_UNLOCK);
		return;
	}

	/*
	 * Find the last page in the bucket chain by starting at the base bucket
	 * page and working forward.  Note: we assume that a hash bucket chain is
	 * usually smaller than the buffer ring being used by VACUUM, else using
	 * the access strategy here would be counterproductive.
	 */
	rbuf = InvalidBuffer;
	ropaque = wopaque;
	do
	{
		rblkno = ropaque->hasho_nextblkno;
		if (rbuf != InvalidBuffer)
			FUNC30(rel, rbuf);
		rbuf = FUNC28(rel,
										  rblkno,
										  HASH_WRITE,
										  LH_OVERFLOW_PAGE,
										  bstrategy);
		rpage = FUNC2(rbuf);
		ropaque = (HashPageOpaque) FUNC15(rpage);
		FUNC0(ropaque->hasho_bucket == bucket);
	} while (FUNC1(ropaque->hasho_nextblkno));

	/*
	 * squeeze the tuples.
	 */
	for (;;)
	{
		OffsetNumber roffnum;
		OffsetNumber maxroffnum;
		OffsetNumber deletable[MaxOffsetNumber];
		IndexTuple	itups[MaxIndexTuplesPerPage];
		Size		tups_size[MaxIndexTuplesPerPage];
		OffsetNumber itup_offsets[MaxIndexTuplesPerPage];
		uint16		ndeletable = 0;
		uint16		nitups = 0;
		Size		all_tups_size = 0;
		int			i;
		bool		retain_pin = false;

readpage:
		/* Scan each tuple in "read" page */
		maxroffnum = FUNC14(rpage);
		for (roffnum = FirstOffsetNumber;
			 roffnum <= maxroffnum;
			 roffnum = FUNC10(roffnum))
		{
			IndexTuple	itup;
			Size		itemsz;

			/* skip dead tuples */
			if (FUNC6(FUNC13(rpage, roffnum)))
				continue;

			itup = (IndexTuple) FUNC12(rpage,
											FUNC13(rpage, roffnum));
			itemsz = FUNC5(itup);
			itemsz = FUNC8(itemsz);

			/*
			 * Walk up the bucket chain, looking for a page big enough for
			 * this item and all other accumulated items.  Exit if we reach
			 * the read page.
			 */
			while (FUNC11(wpage, nitups + 1) < (all_tups_size + itemsz))
			{
				Buffer		next_wbuf = InvalidBuffer;
				bool		tups_moved = false;

				FUNC0(!FUNC17(wpage));

				if (wblkno == bucket_blkno)
					retain_pin = true;

				wblkno = wopaque->hasho_nextblkno;
				FUNC0(FUNC1(wblkno));

				/* don't need to move to next page if we reached the read page */
				if (wblkno != rblkno)
					next_wbuf = FUNC28(rel,
														   wblkno,
														   HASH_WRITE,
														   LH_OVERFLOW_PAGE,
														   bstrategy);

				if (nitups > 0)
				{
					FUNC0(nitups == ndeletable);

					/*
					 * This operation needs to log multiple tuples, prepare
					 * WAL for that.
					 */
					if (FUNC19(rel))
						FUNC22(0, 3 + nitups);

					FUNC20();

					/*
					 * we have to insert tuples on the "write" page, being
					 * careful to preserve hashkey ordering.  (If we insert
					 * many tuples into the same "write" page it would be
					 * worth qsort'ing them).
					 */
					FUNC29(rel, wbuf, itups, itup_offsets, nitups);
					FUNC9(wbuf);

					/* Delete tuples we already moved off read page */
					FUNC16(rpage, deletable, ndeletable);
					FUNC9(rbuf);

					/* XLOG stuff */
					if (FUNC19(rel))
					{
						XLogRecPtr	recptr;
						xl_hash_move_page_contents xlrec;

						xlrec.ntups = nitups;
						xlrec.is_prim_bucket_same_wrt = (wbuf == bucket_buf) ? true : false;

						FUNC21();
						FUNC26((char *) &xlrec, SizeOfHashMovePageContents);

						/*
						 * bucket buffer needs to be registered to ensure that
						 * we can acquire a cleanup lock on it during replay.
						 */
						if (!xlrec.is_prim_bucket_same_wrt)
							FUNC25(0, bucket_buf, REGBUF_STANDARD | REGBUF_NO_IMAGE);

						FUNC25(1, wbuf, REGBUF_STANDARD);
						FUNC24(1, (char *) itup_offsets,
											nitups * sizeof(OffsetNumber));
						for (i = 0; i < nitups; i++)
							FUNC24(1, (char *) itups[i], tups_size[i]);

						FUNC25(2, rbuf, REGBUF_STANDARD);
						FUNC24(2, (char *) deletable,
											ndeletable * sizeof(OffsetNumber));

						recptr = FUNC23(RM_HASH_ID, XLOG_HASH_MOVE_PAGE_CONTENTS);

						FUNC18(FUNC2(wbuf), recptr);
						FUNC18(FUNC2(rbuf), recptr);
					}

					FUNC4();

					tups_moved = true;
				}

				/*
				 * release the lock on previous page after acquiring the lock
				 * on next page
				 */
				if (retain_pin)
					FUNC7(wbuf, BUFFER_LOCK_UNLOCK);
				else
					FUNC30(rel, wbuf);

				/* nothing more to do if we reached the read page */
				if (rblkno == wblkno)
				{
					FUNC30(rel, rbuf);
					return;
				}

				wbuf = next_wbuf;
				wpage = FUNC2(wbuf);
				wopaque = (HashPageOpaque) FUNC15(wpage);
				FUNC0(wopaque->hasho_bucket == bucket);
				retain_pin = false;

				/* be tidy */
				for (i = 0; i < nitups; i++)
					FUNC31(itups[i]);
				nitups = 0;
				all_tups_size = 0;
				ndeletable = 0;

				/*
				 * after moving the tuples, rpage would have been compacted,
				 * so we need to rescan it.
				 */
				if (tups_moved)
					goto readpage;
			}

			/* remember tuple for deletion from "read" page */
			deletable[ndeletable++] = roffnum;

			/*
			 * we need a copy of index tuples as they can be freed as part of
			 * overflow page, however we need them to write a WAL record in
			 * _hash_freeovflpage.
			 */
			itups[nitups] = FUNC3(itup);
			tups_size[nitups++] = itemsz;
			all_tups_size += itemsz;
		}

		/*
		 * If we reach here, there are no live tuples on the "read" page ---
		 * it was empty when we got to it, or we moved them all.  So we can
		 * just free the page without bothering with deleting tuples
		 * individually.  Then advance to the previous "read" page.
		 *
		 * Tricky point here: if our read and write pages are adjacent in the
		 * bucket chain, our write lock on wbuf will conflict with
		 * _hash_freeovflpage's attempt to update the sibling links of the
		 * removed page.  In that case, we don't need to lock it again.
		 */
		rblkno = ropaque->hasho_prevblkno;
		FUNC0(FUNC1(rblkno));

		/* free this overflow page (releases rbuf) */
		FUNC27(rel, bucket_buf, rbuf, wbuf, itups, itup_offsets,
						   tups_size, nitups, bstrategy);

		/* be tidy */
		for (i = 0; i < nitups; i++)
			FUNC31(itups[i]);

		/* are we freeing the page adjacent to wbuf? */
		if (rblkno == wblkno)
		{
			/* retain the pin on primary bucket page till end of bucket scan */
			if (wblkno == bucket_blkno)
				FUNC7(wbuf, BUFFER_LOCK_UNLOCK);
			else
				FUNC30(rel, wbuf);
			return;
		}

		rbuf = FUNC28(rel,
										  rblkno,
										  HASH_WRITE,
										  LH_OVERFLOW_PAGE,
										  bstrategy);
		rpage = FUNC2(rbuf);
		ropaque = (HashPageOpaque) FUNC15(rpage);
		FUNC0(ropaque->hasho_bucket == bucket);
	}

	/* NOTREACHED */
}