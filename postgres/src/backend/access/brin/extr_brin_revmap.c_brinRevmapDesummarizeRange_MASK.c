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
struct TYPE_8__ {scalar_t__ regOffset; int /*<<< orphan*/  heapBlk; int /*<<< orphan*/  pagesPerRange; } ;
typedef  TYPE_1__ xl_brin_desummarize ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  rm_pagesPerRange; } ;
struct TYPE_9__ {int /*<<< orphan*/ * rm_tids; } ;
typedef  TYPE_2__ RevmapContents ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  TYPE_3__ BrinRevmap ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_BRIN_ID ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  SizeOfBrinDesummarize ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  XLOG_BRIN_DESUMMARIZE ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,...) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_3__*,int /*<<< orphan*/ ) ; 

bool
FUNC36(Relation idxrel, BlockNumber heapBlk)
{
	BrinRevmap *revmap;
	BlockNumber pagesPerRange;
	RevmapContents *contents;
	ItemPointerData *iptr;
	ItemPointerData invalidIptr;
	BlockNumber revmapBlk;
	Buffer		revmapBuf;
	Buffer		regBuf;
	Page		revmapPg;
	Page		regPg;
	OffsetNumber revmapOffset;
	OffsetNumber regOffset;
	ItemId		lp;
	BrinTuple  *tup;

	revmap = FUNC29(idxrel, &pagesPerRange, NULL);

	revmapBlk = FUNC35(revmap, heapBlk);
	if (!FUNC1(revmapBlk))
	{
		/* revmap page doesn't exist: range not summarized, we're done */
		FUNC30(revmap);
		return true;
	}

	/* Lock the revmap page, obtain the index tuple pointer from it */
	revmapBuf = FUNC28(revmap, heapBlk);
	revmapPg = FUNC3(revmapBuf);
	revmapOffset = FUNC5(revmap->rm_pagesPerRange, heapBlk);

	contents = (RevmapContents *) FUNC13(revmapPg);
	iptr = contents->rm_tids;
	iptr += revmapOffset;

	if (!FUNC9(iptr))
	{
		/* no index tuple: range not summarized, we're done */
		FUNC11(revmapBuf, BUFFER_LOCK_UNLOCK);
		FUNC30(revmap);
		return true;
	}

	regBuf = FUNC19(idxrel, FUNC7(iptr));
	FUNC11(regBuf, BUFFER_LOCK_EXCLUSIVE);
	regPg = FUNC3(regBuf);

	/* if this is no longer a regular page, tell caller to start over */
	if (!FUNC0(regPg))
	{
		FUNC11(revmapBuf, BUFFER_LOCK_UNLOCK);
		FUNC11(regBuf, BUFFER_LOCK_UNLOCK);
		FUNC30(revmap);
		return false;
	}

	regOffset = FUNC8(iptr);
	if (regOffset > FUNC16(regPg))
		FUNC32(ERROR,
				(FUNC33(ERRCODE_INDEX_CORRUPTED),
				 FUNC34("corrupted BRIN index: inconsistent range map")));

	lp = FUNC15(regPg, regOffset);
	if (!FUNC6(lp))
		FUNC32(ERROR,
				(FUNC33(ERRCODE_INDEX_CORRUPTED),
				 FUNC34("corrupted BRIN index: inconsistent range map")));
	tup = (BrinTuple *) FUNC14(regPg, lp);
	/* XXX apply sanity checks?  Might as well delete a bogus tuple ... */

	/*
	 * We're only removing data, not reading it, so there's no need to
	 * TestForOldSnapshot here.
	 */

	/*
	 * Because of ShareUpdateExclusive lock, this function shouldn't run
	 * concurrently with summarization.  Placeholder tuples can only exist as
	 * leftovers from crashed summarization, so if we detect any, we complain
	 * but proceed.
	 */
	if (FUNC2(tup))
		FUNC32(WARNING,
				(FUNC34("leftover placeholder tuple detected in BRIN index \"%s\", deleting",
						FUNC20(idxrel))));

	FUNC22();

	FUNC10(&invalidIptr);
	FUNC31(revmapBuf, revmap->rm_pagesPerRange, heapBlk,
							invalidIptr);
	FUNC17(regPg, regOffset);
	/* XXX record free space in FSM? */

	FUNC12(regBuf);
	FUNC12(revmapBuf);

	if (FUNC21(idxrel))
	{
		xl_brin_desummarize xlrec;
		XLogRecPtr	recptr;

		xlrec.pagesPerRange = revmap->rm_pagesPerRange;
		xlrec.heapBlk = heapBlk;
		xlrec.regOffset = regOffset;

		FUNC24();
		FUNC27((char *) &xlrec, SizeOfBrinDesummarize);
		FUNC26(0, revmapBuf, 0);
		FUNC26(1, regBuf, REGBUF_STANDARD);
		recptr = FUNC25(RM_BRIN_ID, XLOG_BRIN_DESUMMARIZE);
		FUNC18(revmapPg, recptr);
		FUNC18(regPg, recptr);
	}

	FUNC4();

	FUNC23(regBuf);
	FUNC11(revmapBuf, BUFFER_LOCK_UNLOCK);
	FUNC30(revmap);

	return true;
}