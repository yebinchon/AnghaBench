#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
struct TYPE_25__ {int nEnd; scalar_t__ nStart; int /*<<< orphan*/  notFullPage; } ;
struct TYPE_24__ {int /*<<< orphan*/  sizeOfBloomTuple; } ;
struct TYPE_23__ {int /*<<< orphan*/  heapPtr; } ;
struct TYPE_22__ {int tuples_removed; } ;
struct TYPE_21__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
struct TYPE_20__ {scalar_t__ pd_lower; } ;
struct TYPE_19__ {int /*<<< orphan*/  maxoff; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Pointer ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__ IndexBulkDeleteResult ;
typedef  scalar_t__ (* IndexBulkDeleteCallback ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  GenericXLogState ;
typedef  scalar_t__* FreeBlockNumberArray ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_4__ BloomTuple ;
typedef  TYPE_5__ BloomState ;
typedef  TYPE_6__ BloomMetaPageData ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLOOM_HEAD_BLKNO ; 
 int /*<<< orphan*/  BLOOM_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int BloomMetaBlockN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_6__* FUNC3 (scalar_t__) ; 
 TYPE_4__* FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_13__* FUNC5 (scalar_t__) ; 
 TYPE_4__* FUNC6 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

IndexBulkDeleteResult *
FUNC25(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
			 IndexBulkDeleteCallback callback, void *callback_state)
{
	Relation	index = info->index;
	BlockNumber blkno,
				npages;
	FreeBlockNumberArray notFullPage;
	int			countPage = 0;
	BloomState	state;
	Buffer		buffer;
	Page		page;
	BloomMetaPageData *metaData;
	GenericXLogState *gxlogState;

	if (stats == NULL)
		stats = (IndexBulkDeleteResult *) FUNC23(sizeof(IndexBulkDeleteResult));

	FUNC20(&state, index);

	/*
	 * Iterate over the pages. We don't care about concurrently added pages,
	 * they can't contain tuples to delete.
	 */
	npages = FUNC18(index);
	for (blkno = BLOOM_HEAD_BLKNO; blkno < npages; blkno++)
	{
		BloomTuple *itup,
				   *itupPtr,
				   *itupEnd;

		FUNC24();

		buffer = FUNC17(index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, info->strategy);

		FUNC13(buffer, BUFFER_LOCK_EXCLUSIVE);
		gxlogState = FUNC12(index);
		page = FUNC11(gxlogState, buffer, 0);

		/* Ignore empty/deleted pages until blvacuumcleanup() */
		if (FUNC15(page) || FUNC7(page))
		{
			FUNC19(buffer);
			FUNC9(gxlogState);
			continue;
		}

		/*
		 * Iterate over the tuples.  itup points to current tuple being
		 * scanned, itupPtr points to where to save next non-deleted tuple.
		 */
		itup = itupPtr = FUNC6(&state, page, FirstOffsetNumber);
		itupEnd = FUNC6(&state, page,
									FUNC14(FUNC2(page)));
		while (itup < itupEnd)
		{
			/* Do we have to delete this tuple? */
			if (callback(&itup->heapPtr, callback_state))
			{
				/* Yes; adjust count of tuples that will be left on page */
				FUNC5(page)->maxoff--;
				stats->tuples_removed += 1;
			}
			else
			{
				/* No; copy it to itupPtr++, but skip copy if not needed */
				if (itupPtr != itup)
					FUNC22((Pointer) itupPtr, (Pointer) itup,
							state.sizeOfBloomTuple);
				itupPtr = FUNC4(&state, itupPtr);
			}

			itup = FUNC4(&state, itup);
		}

		/* Assert that we counted correctly */
		FUNC0(itupPtr == FUNC6(&state, page,
											FUNC14(FUNC2(page))));

		/*
		 * Add page to new notFullPage list if we will not mark page as
		 * deleted and there is free space on it
		 */
		if (FUNC2(page) != 0 &&
			FUNC1(&state, page) >= state.sizeOfBloomTuple &&
			countPage < BloomMetaBlockN)
			notFullPage[countPage++] = blkno;

		/* Did we delete something? */
		if (itupPtr != itup)
		{
			/* Is it empty page now? */
			if (FUNC2(page) == 0)
				FUNC8(page);
			/* Adjust pd_lower */
			((PageHeader) page)->pd_lower = (Pointer) itupPtr - page;
			/* Finish WAL-logging */
			FUNC10(gxlogState);
		}
		else
		{
			/* Didn't change anything: abort WAL-logging */
			FUNC9(gxlogState);
		}
		FUNC19(buffer);
	}

	/*
	 * Update the metapage's notFullPage list with whatever we found.  Our
	 * info could already be out of date at this point, but blinsert() will
	 * cope if so.
	 */
	buffer = FUNC16(index, BLOOM_METAPAGE_BLKNO);
	FUNC13(buffer, BUFFER_LOCK_EXCLUSIVE);

	gxlogState = FUNC12(index);
	page = FUNC11(gxlogState, buffer, 0);

	metaData = FUNC3(page);
	FUNC21(metaData->notFullPage, notFullPage, sizeof(BlockNumber) * countPage);
	metaData->nStart = 0;
	metaData->nEnd = countPage;

	FUNC10(gxlogState);
	FUNC19(buffer);

	return stats;
}