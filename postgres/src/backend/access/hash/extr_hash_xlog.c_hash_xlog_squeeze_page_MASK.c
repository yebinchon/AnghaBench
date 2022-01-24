#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ntups; void* prevblkno; void* nextblkno; scalar_t__ is_prev_bucket_same_wrt; scalar_t__ is_prim_bucket_same_wrt; } ;
typedef  TYPE_1__ xl_hash_squeeze_page ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  size_t uint16 ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_15__ {int /*<<< orphan*/  hashm_firstfree; } ;
struct TYPE_14__ {int hasho_bucket; void* hasho_prevblkno; void* hasho_nextblkno; int /*<<< orphan*/  hasho_page_id; int /*<<< orphan*/  hasho_flag; } ;
typedef  int Size ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_3__* HashPageOpaque ;
typedef  TYPE_4__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASHO_PAGE_ID ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 TYPE_4__* FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 void* InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  LH_UNUSED_PAGE ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC16 (TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC21(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_hash_squeeze_page *xldata = (xl_hash_squeeze_page *) FUNC17(record);
	Buffer		bucketbuf = InvalidBuffer;
	Buffer		writebuf;
	Buffer		ovflbuf;
	Buffer		prevbuf = InvalidBuffer;
	Buffer		mapbuf;
	XLogRedoAction action;

	/*
	 * Ensure we have a cleanup lock on primary bucket page before we start
	 * with the actual replay operation.  This is to ensure that neither a
	 * scan can start nor a scan can be already-in-progress during the replay
	 * of this operation.  If we allow scans during this operation, then they
	 * can miss some records or show the same record multiple times.
	 */
	if (xldata->is_prim_bucket_same_wrt)
		action = FUNC15(record, 1, RBM_NORMAL, true, &writebuf);
	else
	{
		/*
		 * we don't care for return value as the purpose of reading bucketbuf
		 * is to ensure a cleanup lock on primary bucket page.
		 */
		(void) FUNC15(record, 0, RBM_NORMAL, true, &bucketbuf);

		action = FUNC14(record, 1, &writebuf);
	}

	/* replay the record for adding entries in overflow buffer */
	if (action == BLK_NEEDS_REDO)
	{
		Page		writepage;
		char	   *begin;
		char	   *data;
		Size		datalen;
		uint16		ninserted = 0;

		data = begin = FUNC16(record, 1, &datalen);

		writepage = (Page) FUNC1(writebuf);

		if (xldata->ntups > 0)
		{
			OffsetNumber *towrite = (OffsetNumber *) data;

			data += sizeof(OffsetNumber) * xldata->ntups;

			while (data - begin < datalen)
			{
				IndexTuple	itup = (IndexTuple) data;
				Size		itemsz;
				OffsetNumber l;

				itemsz = FUNC7(itup);
				itemsz = FUNC8(itemsz);

				data += itemsz;

				l = FUNC10(writepage, (Item) itup, itemsz, towrite[ninserted], false, false);
				if (l == InvalidOffsetNumber)
					FUNC20(ERROR, "hash_xlog_squeeze_page: failed to add item to hash index page, size %d bytes",
						 (int) itemsz);

				ninserted++;
			}
		}

		/*
		 * number of tuples inserted must be same as requested in REDO record.
		 */
		FUNC0(ninserted == xldata->ntups);

		/*
		 * if the page on which are adding tuples is a page previous to freed
		 * overflow page, then update its nextblkno.
		 */
		if (xldata->is_prev_bucket_same_wrt)
		{
			HashPageOpaque writeopaque = (HashPageOpaque) FUNC11(writepage);

			writeopaque->hasho_nextblkno = xldata->nextblkno;
		}

		FUNC12(writepage, lsn);
		FUNC9(writebuf);
	}

	/* replay the record for initializing overflow buffer */
	if (FUNC14(record, 2, &ovflbuf) == BLK_NEEDS_REDO)
	{
		Page		ovflpage;
		HashPageOpaque ovflopaque;

		ovflpage = FUNC1(ovflbuf);

		FUNC19(ovflpage, FUNC2(ovflbuf));

		ovflopaque = (HashPageOpaque) FUNC11(ovflpage);

		ovflopaque->hasho_prevblkno = InvalidBlockNumber;
		ovflopaque->hasho_nextblkno = InvalidBlockNumber;
		ovflopaque->hasho_bucket = -1;
		ovflopaque->hasho_flag = LH_UNUSED_PAGE;
		ovflopaque->hasho_page_id = HASHO_PAGE_ID;

		FUNC12(ovflpage, lsn);
		FUNC9(ovflbuf);
	}
	if (FUNC3(ovflbuf))
		FUNC13(ovflbuf);

	/* replay the record for page previous to the freed overflow page */
	if (!xldata->is_prev_bucket_same_wrt &&
		FUNC14(record, 3, &prevbuf) == BLK_NEEDS_REDO)
	{
		Page		prevpage = FUNC1(prevbuf);
		HashPageOpaque prevopaque = (HashPageOpaque) FUNC11(prevpage);

		prevopaque->hasho_nextblkno = xldata->nextblkno;

		FUNC12(prevpage, lsn);
		FUNC9(prevbuf);
	}
	if (FUNC3(prevbuf))
		FUNC13(prevbuf);

	/* replay the record for page next to the freed overflow page */
	if (FUNC18(record, 4))
	{
		Buffer		nextbuf;

		if (FUNC14(record, 4, &nextbuf) == BLK_NEEDS_REDO)
		{
			Page		nextpage = FUNC1(nextbuf);
			HashPageOpaque nextopaque = (HashPageOpaque) FUNC11(nextpage);

			nextopaque->hasho_prevblkno = xldata->prevblkno;

			FUNC12(nextpage, lsn);
			FUNC9(nextbuf);
		}
		if (FUNC3(nextbuf))
			FUNC13(nextbuf);
	}

	if (FUNC3(writebuf))
		FUNC13(writebuf);

	if (FUNC3(bucketbuf))
		FUNC13(bucketbuf);

	/*
	 * Note: in normal operation, we'd update the bitmap and meta page while
	 * still holding lock on the primary bucket page and overflow pages.  But
	 * during replay it's not necessary to hold those locks, since no other
	 * index updates can be happening concurrently.
	 */
	/* replay the record for bitmap page */
	if (FUNC14(record, 5, &mapbuf) == BLK_NEEDS_REDO)
	{
		Page		mappage = (Page) FUNC1(mapbuf);
		uint32	   *freep = NULL;
		char	   *data;
		uint32	   *bitmap_page_bit;
		Size		datalen;

		freep = FUNC5(mappage);

		data = FUNC16(record, 5, &datalen);
		bitmap_page_bit = (uint32 *) data;

		FUNC4(freep, *bitmap_page_bit);

		FUNC12(mappage, lsn);
		FUNC9(mapbuf);
	}
	if (FUNC3(mapbuf))
		FUNC13(mapbuf);

	/* replay the record for meta page */
	if (FUNC18(record, 6))
	{
		Buffer		metabuf;

		if (FUNC14(record, 6, &metabuf) == BLK_NEEDS_REDO)
		{
			HashMetaPage metap;
			Page		page;
			char	   *data;
			uint32	   *firstfree_ovflpage;
			Size		datalen;

			data = FUNC16(record, 6, &datalen);
			firstfree_ovflpage = (uint32 *) data;

			page = FUNC1(metabuf);
			metap = FUNC6(page);
			metap->hashm_firstfree = *firstfree_ovflpage;

			FUNC12(page, lsn);
			FUNC9(metabuf);
		}
		if (FUNC3(metabuf))
			FUNC13(metabuf);
	}
}