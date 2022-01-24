#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t nEnd; size_t nStart; scalar_t__* notFullPage; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  size_t OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  GenericXLogState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BloomTuple ;
typedef  int /*<<< orphan*/  BloomState ;
typedef  TYPE_1__ BloomMetaPageData ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ BLOOM_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GENERIC_XLOG_FULL_IMAGE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC23(Relation index, Datum *values, bool *isnull,
		 ItemPointer ht_ctid, Relation heapRel,
		 IndexUniqueCheck checkUnique,
		 IndexInfo *indexInfo)
{
	BloomState	blstate;
	BloomTuple *itup;
	MemoryContext oldCtx;
	MemoryContext insertCtx;
	BloomMetaPageData *metaData;
	Buffer		buffer,
				metaBuffer;
	Page		page,
				metaPage;
	BlockNumber blkno = InvalidBlockNumber;
	OffsetNumber nStart;
	GenericXLogState *state;

	insertCtx = FUNC0(CurrentMemoryContext,
									  "Bloom insert temporary context",
									  ALLOCSET_DEFAULT_SIZES);

	oldCtx = FUNC16(insertCtx);

	FUNC22(&blstate, index);
	itup = FUNC2(&blstate, ht_ctid, values, isnull);

	/*
	 * At first, try to insert new tuple to the first page in notFullPage
	 * array.  If successful, we don't need to modify the meta page.
	 */
	metaBuffer = FUNC18(index, BLOOM_METAPAGE_BLKNO);
	FUNC14(metaBuffer, BUFFER_LOCK_SHARE);
	metaData = FUNC6(FUNC9(metaBuffer));

	if (metaData->nEnd > metaData->nStart)
	{
		Page		page;

		blkno = metaData->notFullPage[metaData->nStart];
		FUNC1(blkno != InvalidBlockNumber);

		/* Don't hold metabuffer lock while doing insert */
		FUNC14(metaBuffer, BUFFER_LOCK_UNLOCK);

		buffer = FUNC18(index, blkno);
		FUNC14(buffer, BUFFER_LOCK_EXCLUSIVE);

		state = FUNC13(index);
		page = FUNC12(state, buffer, 0);

		/*
		 * We might have found a page that was recently deleted by VACUUM.  If
		 * so, we can reuse it, but we must reinitialize it.
		 */
		if (FUNC17(page) || FUNC7(page))
			FUNC3(page, 0);

		if (FUNC5(&blstate, page, itup))
		{
			/* Success!  Apply the change, clean up, and exit */
			FUNC11(state);
			FUNC20(buffer);
			FUNC19(metaBuffer);
			FUNC16(oldCtx);
			FUNC15(insertCtx);
			return false;
		}

		/* Didn't fit, must try other pages */
		FUNC10(state);
		FUNC20(buffer);
	}
	else
	{
		/* No entries in notFullPage */
		FUNC14(metaBuffer, BUFFER_LOCK_UNLOCK);
	}

	/*
	 * Try other pages in notFullPage array.  We will have to change nStart in
	 * metapage.  Thus, grab exclusive lock on metapage.
	 */
	FUNC14(metaBuffer, BUFFER_LOCK_EXCLUSIVE);

	/* nStart might have changed while we didn't have lock */
	nStart = metaData->nStart;

	/* Skip first page if we already tried it above */
	if (nStart < metaData->nEnd &&
		blkno == metaData->notFullPage[nStart])
		nStart++;

	/*
	 * This loop iterates for each page we try from the notFullPage array, and
	 * will also initialize a GenericXLogState for the fallback case of having
	 * to allocate a new page.
	 */
	for (;;)
	{
		state = FUNC13(index);

		/* get modifiable copy of metapage */
		metaPage = FUNC12(state, metaBuffer, 0);
		metaData = FUNC6(metaPage);

		if (nStart >= metaData->nEnd)
			break;				/* no more entries in notFullPage array */

		blkno = metaData->notFullPage[nStart];
		FUNC1(blkno != InvalidBlockNumber);

		buffer = FUNC18(index, blkno);
		FUNC14(buffer, BUFFER_LOCK_EXCLUSIVE);
		page = FUNC12(state, buffer, 0);

		/* Basically same logic as above */
		if (FUNC17(page) || FUNC7(page))
			FUNC3(page, 0);

		if (FUNC5(&blstate, page, itup))
		{
			/* Success!  Apply the changes, clean up, and exit */
			metaData->nStart = nStart;
			FUNC11(state);
			FUNC20(buffer);
			FUNC20(metaBuffer);
			FUNC16(oldCtx);
			FUNC15(insertCtx);
			return false;
		}

		/* Didn't fit, must try other pages */
		FUNC10(state);
		FUNC20(buffer);
		nStart++;
	}

	/*
	 * Didn't find place to insert in notFullPage array.  Allocate new page.
	 * (XXX is it good to do this while holding ex-lock on the metapage??)
	 */
	buffer = FUNC4(index);

	page = FUNC12(state, buffer, GENERIC_XLOG_FULL_IMAGE);
	FUNC3(page, 0);

	if (!FUNC5(&blstate, page, itup))
	{
		/* We shouldn't be here since we're inserting to an empty page */
		FUNC21(ERROR, "could not add new bloom tuple to empty page");
	}

	/* Reset notFullPage array to contain just this new page */
	metaData->nStart = 0;
	metaData->nEnd = 1;
	metaData->notFullPage[0] = FUNC8(buffer);

	/* Apply the changes, clean up, and exit */
	FUNC11(state);

	FUNC20(buffer);
	FUNC20(metaBuffer);

	FUNC16(oldCtx);
	FUNC15(insertCtx);

	return false;
}