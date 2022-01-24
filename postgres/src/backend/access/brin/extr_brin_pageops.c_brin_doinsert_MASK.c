#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ offnum; void* pagesPerRange; void* heapBlk; } ;
typedef  TYPE_1__ xl_brin_insert ;
typedef  int uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  void* BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BRIN_PAGETYPE_REGULAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  BrinMaxItemSize ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BRIN_ID ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  SizeOfBrinInsert ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int XLOG_BRIN_INIT_PAGE ; 
 int XLOG_BRIN_INSERT ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OffsetNumber
FUNC33(Relation idxrel, BlockNumber pagesPerRange,
			  BrinRevmap *revmap, Buffer *buffer, BlockNumber heapBlk,
			  BrinTuple *tup, Size itemsz)
{
	Page		page;
	BlockNumber blk;
	OffsetNumber off;
	Size		freespace = 0;
	Buffer		revmapbuf;
	ItemPointerData tid;
	bool		extended;

	FUNC0(itemsz == FUNC9(itemsz));

	/* If the item is oversized, don't even bother. */
	if (itemsz > BrinMaxItemSize)
	{
		FUNC30(ERROR,
				(FUNC31(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC32("index row size %zu exceeds maximum %zu for index \"%s\"",
						itemsz, BrinMaxItemSize, FUNC14(idxrel))));
		return InvalidOffsetNumber; /* keep compiler quiet */
	}

	/* Make sure the revmap is long enough to contain the entry we need */
	FUNC25(revmap, heapBlk);

	/*
	 * Acquire lock on buffer supplied by caller, if any.  If it doesn't have
	 * enough space, unpin it to obtain a new one below.
	 */
	if (FUNC4(*buffer))
	{
		/*
		 * It's possible that another backend (or ourselves!) extended the
		 * revmap over the page we held a pin on, so we cannot assume that
		 * it's still a regular page.
		 */
		FUNC8(*buffer, BUFFER_LOCK_EXCLUSIVE);
		if (FUNC23(FUNC3(*buffer)) < itemsz)
		{
			FUNC17(*buffer);
			*buffer = InvalidBuffer;
		}
	}

	/*
	 * If we still don't have a usable buffer, have brin_getinsertbuffer
	 * obtain one for us.
	 */
	if (!FUNC4(*buffer))
	{
		do
			*buffer = FUNC27(idxrel, InvalidBuffer, itemsz, &extended);
		while (!FUNC4(*buffer));
	}
	else
		extended = false;

	/* Now obtain lock on revmap buffer */
	revmapbuf = FUNC24(revmap, heapBlk);

	page = FUNC3(*buffer);
	blk = FUNC2(*buffer);

	/* Execute the actual insertion */
	FUNC16();
	if (extended)
		FUNC28(page, BRIN_PAGETYPE_REGULAR);
	off = FUNC11(page, (Item) tup, itemsz, InvalidOffsetNumber,
					  false, false);
	if (off == InvalidOffsetNumber)
		FUNC29(ERROR, "failed to add BRIN tuple to new page");
	FUNC10(*buffer);

	/* needed to update FSM below */
	if (extended)
		freespace = FUNC23(page);

	FUNC7(&tid, blk, off);
	FUNC26(revmapbuf, pagesPerRange, heapBlk, tid);
	FUNC10(revmapbuf);

	/* XLOG stuff */
	if (FUNC15(idxrel))
	{
		xl_brin_insert xlrec;
		XLogRecPtr	recptr;
		uint8		info;

		info = XLOG_BRIN_INSERT | (extended ? XLOG_BRIN_INIT_PAGE : 0);
		xlrec.heapBlk = heapBlk;
		xlrec.pagesPerRange = pagesPerRange;
		xlrec.offnum = off;

		FUNC18();
		FUNC22((char *) &xlrec, SizeOfBrinInsert);

		FUNC21(0, *buffer, REGBUF_STANDARD | (extended ? REGBUF_WILL_INIT : 0));
		FUNC20(0, (char *) tup, itemsz);

		FUNC21(1, revmapbuf, 0);

		recptr = FUNC19(RM_BRIN_ID, info);

		FUNC12(page, recptr);
		FUNC12(FUNC3(revmapbuf), recptr);
	}

	FUNC5();

	/* Tuple is firmly on buffer; we can release our locks */
	FUNC8(*buffer, BUFFER_LOCK_UNLOCK);
	FUNC8(revmapbuf, BUFFER_LOCK_UNLOCK);

	FUNC1((DEBUG2, "inserted tuple (%u,%u) for range starting at %u",
			   blk, off, heapBlk));

	if (extended)
	{
		FUNC13(idxrel, blk, freespace);
		FUNC6(idxrel, blk, blk + 1);
	}

	return off;
}