#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_4__* bt_columns; } ;
struct TYPE_26__ {TYPE_1__* bd_tupdesc; } ;
struct TYPE_25__ {void* ii_AmCache; int /*<<< orphan*/ * ii_Context; } ;
struct TYPE_24__ {int /*<<< orphan*/ * rd_indcollation; } ;
struct TYPE_23__ {int natts; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  TYPE_3__ IndexInfo ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_4__ BrinValues ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  TYPE_5__ BrinMemTuple ;
typedef  TYPE_4__ BrinDesc ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  AVW_BRINSummarizeRange ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BRIN_PROCNUM_ADDVALUE ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * CurrentMemoryContext ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC23 (TYPE_2__*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC26 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC28 (TYPE_4__*,int,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC32 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

bool
FUNC33(Relation idxRel, Datum *values, bool *nulls,
		   ItemPointer heaptid, Relation heapRel,
		   IndexUniqueCheck checkUnique,
		   IndexInfo *indexInfo)
{
	BlockNumber pagesPerRange;
	BlockNumber origHeapBlk;
	BlockNumber heapBlk;
	BrinDesc   *bdesc = (BrinDesc *) indexInfo->ii_AmCache;
	BrinRevmap *revmap;
	Buffer		buf = InvalidBuffer;
	MemoryContext tupcxt = NULL;
	MemoryContext oldcxt = CurrentMemoryContext;
	bool		autosummarize = FUNC2(idxRel);

	revmap = FUNC21(idxRel, &pagesPerRange, NULL);

	/*
	 * origHeapBlk is the block number where the insertion occurred.  heapBlk
	 * is the first block in the corresponding page range.
	 */
	origHeapBlk = FUNC9(heaptid);
	heapBlk = (origHeapBlk / pagesPerRange) * pagesPerRange;

	for (;;)
	{
		bool		need_insert = false;
		OffsetNumber off;
		BrinTuple  *brtup;
		BrinMemTuple *dtup;
		int			keyno;

		FUNC5();

		/*
		 * If auto-summarization is enabled and we just inserted the first
		 * tuple into the first block of a new non-first page range, request a
		 * summarization run of the previous range.
		 */
		if (autosummarize &&
			heapBlk > 0 &&
			heapBlk == origHeapBlk &&
			FUNC10(heaptid) == FirstOffsetNumber)
		{
			BlockNumber lastPageRange = heapBlk - 1;
			BrinTuple  *lastPageTuple;

			lastPageTuple =
				FUNC20(revmap, lastPageRange, &buf, &off,
										 NULL, BUFFER_LOCK_SHARE, NULL);
			if (!lastPageTuple)
			{
				bool		recorded;

				recorded = FUNC1(AVW_BRINSummarizeRange,
												 FUNC18(idxRel),
												 lastPageRange);
				if (!recorded)
					FUNC29(LOG,
							(FUNC30(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
							 FUNC31("request for BRIN range summarization for index \"%s\" page %u was not recorded",
									FUNC17(idxRel),
									lastPageRange)));
			}
			else
				FUNC11(buf, BUFFER_LOCK_UNLOCK);
		}

		brtup = FUNC20(revmap, heapBlk, &buf, &off,
										 NULL, BUFFER_LOCK_SHARE, NULL);

		/* if range is unsummarized, there's nothing to do */
		if (!brtup)
			break;

		/* First time through in this statement? */
		if (bdesc == NULL)
		{
			FUNC14(indexInfo->ii_Context);
			bdesc = FUNC23(idxRel);
			indexInfo->ii_AmCache = (void *) bdesc;
			FUNC14(oldcxt);
		}
		/* First time through in this brininsert call? */
		if (tupcxt == NULL)
		{
			tupcxt = FUNC0(CurrentMemoryContext,
										   "brininsert cxt",
										   ALLOCSET_DEFAULT_SIZES);
			FUNC14(tupcxt);
		}

		dtup = FUNC26(bdesc, brtup, NULL);

		/*
		 * Compare the key values of the new tuple to the stored index values;
		 * our deformed tuple will get updated if the new tuple doesn't fit
		 * the original range (note this means we can't break out of the loop
		 * early). Make a note of whether this happens, so that we know to
		 * insert the modified tuple later.
		 */
		for (keyno = 0; keyno < bdesc->bd_tupdesc->natts; keyno++)
		{
			Datum		result;
			BrinValues *bval;
			FmgrInfo   *addValue;

			bval = &dtup->bt_columns[keyno];
			addValue = FUNC32(idxRel, keyno + 1,
										 BRIN_PROCNUM_ADDVALUE);
			result = FUNC7(addValue,
									   idxRel->rd_indcollation[keyno],
									   FUNC16(bdesc),
									   FUNC16(bval),
									   values[keyno],
									   nulls[keyno]);
			/* if that returned true, we need to insert the updated tuple */
			need_insert |= FUNC6(result);
		}

		if (!need_insert)
		{
			/*
			 * The tuple is consistent with the new values, so there's nothing
			 * to do.
			 */
			FUNC11(buf, BUFFER_LOCK_UNLOCK);
		}
		else
		{
			Page		page = FUNC3(buf);
			ItemId		lp = FUNC15(page, off);
			Size		origsz;
			BrinTuple  *origtup;
			Size		newsz;
			BrinTuple  *newtup;
			bool		samepage;

			/*
			 * Make a copy of the old tuple, so that we can compare it after
			 * re-acquiring the lock.
			 */
			origsz = FUNC8(lp);
			origtup = FUNC25(brtup, origsz, NULL, NULL);

			/*
			 * Before releasing the lock, check if we can attempt a same-page
			 * update.  Another process could insert a tuple concurrently in
			 * the same page though, so downstream we must be prepared to cope
			 * if this turns out to not be possible after all.
			 */
			newtup = FUNC28(bdesc, heapBlk, dtup, &newsz);
			samepage = FUNC24(buf, origsz, newsz);
			FUNC11(buf, BUFFER_LOCK_UNLOCK);

			/*
			 * Try to update the tuple.  If this doesn't work for whatever
			 * reason, we need to restart from the top; the revmap might be
			 * pointing at a different tuple for this block now, so we need to
			 * recompute to ensure both our new heap tuple and the other
			 * inserter's are covered by the combined tuple.  It might be that
			 * we don't need to update at all.
			 */
			if (!FUNC27(idxRel, pagesPerRange, revmap, heapBlk,
							   buf, off, origtup, origsz, newtup, newsz,
							   samepage))
			{
				/* no luck; start over */
				FUNC13(tupcxt);
				continue;
			}
		}

		/* success! */
		break;
	}

	FUNC22(revmap);
	if (FUNC4(buf))
		FUNC19(buf);
	FUNC14(oldcxt);
	if (tupcxt != NULL)
		FUNC12(tupcxt);

	return false;
}