#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_19__ {long allocatedMemory; TYPE_2__* ginstate; } ;
struct TYPE_18__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_17__ {int /*<<< orphan*/  index; } ;
struct TYPE_16__ {int maxvalues; } ;
struct TYPE_15__ {scalar_t__ rightlink; } ;
typedef  long Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ KeyArray ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  IndexBulkDeleteResult ;
typedef  TYPE_2__ GinState ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_3__ GinMetaPageData ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ BuildAccumulator ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 scalar_t__ GIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_13__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int autovacuum_work_mem ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int) ; 
 int maintenance_work_mem ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 long work_mem ; 

void
FUNC28(GinState *ginstate, bool full_clean,
				 bool fill_fsm, bool forceCleanup,
				 IndexBulkDeleteResult *stats)
{
	Relation	index = ginstate->index;
	Buffer		metabuffer,
				buffer;
	Page		metapage,
				page;
	GinMetaPageData *metadata;
	MemoryContext opCtx,
				oldCtx;
	BuildAccumulator accum;
	KeyArray	datums;
	BlockNumber blkno,
				blknoFinish;
	bool		cleanupFinish = false;
	bool		fsm_vac = false;
	Size		workMemory;

	/*
	 * We would like to prevent concurrent cleanup process. For that we will
	 * lock metapage in exclusive mode using LockPage() call. Nobody other
	 * will use that lock for metapage, so we keep possibility of concurrent
	 * insertion into pending list
	 */

	if (forceCleanup)
	{
		/*
		 * We are called from [auto]vacuum/analyze or gin_clean_pending_list()
		 * and we would like to wait concurrent cleanup to finish.
		 */
		FUNC11(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
		workMemory =
			(FUNC9() && autovacuum_work_mem != -1) ?
			autovacuum_work_mem : maintenance_work_mem;
	}
	else
	{
		/*
		 * We are called from regular insert and if we see concurrent cleanup
		 * just exit in hope that concurrent process will clean up pending
		 * list.
		 */
		if (!FUNC3(index, GIN_METAPAGE_BLKNO, ExclusiveLock))
			return;
		workMemory = work_mem;
	}

	metabuffer = FUNC16(index, GIN_METAPAGE_BLKNO);
	FUNC10(metabuffer, GIN_SHARE);
	metapage = FUNC2(metabuffer);
	metadata = FUNC4(metapage);

	if (metadata->head == InvalidBlockNumber)
	{
		/* Nothing to do */
		FUNC19(metabuffer);
		FUNC18(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
		return;
	}

	/*
	 * Remember a tail page to prevent infinite cleanup if other backends add
	 * new tuples faster than we can cleanup.
	 */
	blknoFinish = metadata->tail;

	/*
	 * Read and lock head of pending list
	 */
	blkno = metadata->head;
	buffer = FUNC16(index, blkno);
	FUNC10(buffer, GIN_SHARE);
	page = FUNC2(buffer);

	FUNC10(metabuffer, GIN_UNLOCK);

	/*
	 * Initialize.  All temporary space will be in opCtx
	 */
	opCtx = FUNC0(CurrentMemoryContext,
								  "GIN insert cleanup temporary context",
								  ALLOCSET_DEFAULT_SIZES);

	oldCtx = FUNC14(opCtx);

	FUNC24(&datums, 128);
	FUNC23(&accum);
	accum.ginstate = ginstate;

	/*
	 * At the top of this loop, we have pin and lock on the current page of
	 * the pending list.  However, we'll release that before exiting the loop.
	 * Note we also have pin but not lock on the metapage.
	 */
	for (;;)
	{
		FUNC1(!FUNC7(page));

		/*
		 * Are we walk through the page which as we remember was a tail when
		 * we start our cleanup?  But if caller asks us to clean up whole
		 * pending list then ignore old tail, we will work until list becomes
		 * empty.
		 */
		if (blkno == blknoFinish && full_clean == false)
			cleanupFinish = true;

		/*
		 * read page's datums into accum
		 */
		FUNC25(&accum, &datums, page, FirstOffsetNumber);

		FUNC27();

		/*
		 * Is it time to flush memory to disk?	Flush if we are at the end of
		 * the pending list, or if we have a full row and memory is getting
		 * full.
		 */
		if (FUNC5(page)->rightlink == InvalidBlockNumber ||
			(FUNC6(page) &&
			 (accum.allocatedMemory >= workMemory * 1024L)))
		{
			ItemPointerData *list;
			uint32		nlist;
			Datum		key;
			GinNullCategory category;
			OffsetNumber maxoff,
						attnum;

			/*
			 * Unlock current page to increase performance. Changes of page
			 * will be checked later by comparing maxoff after completion of
			 * memory flush.
			 */
			maxoff = FUNC15(page);
			FUNC10(buffer, GIN_UNLOCK);

			/*
			 * Moving collected data into regular structure can take
			 * significant amount of time - so, run it without locking pending
			 * list.
			 */
			FUNC20(&accum);
			while ((list = FUNC22(&accum,
										 &attnum, &key, &category, &nlist)) != NULL)
			{
				FUNC21(ginstate, attnum, key, category,
							   list, nlist, NULL);
				FUNC27();
			}

			/*
			 * Lock the whole list to remove pages
			 */
			FUNC10(metabuffer, GIN_EXCLUSIVE);
			FUNC10(buffer, GIN_SHARE);

			FUNC1(!FUNC7(page));

			/*
			 * While we left the page unlocked, more stuff might have gotten
			 * added to it.  If so, process those entries immediately.  There
			 * shouldn't be very many, so we don't worry about the fact that
			 * we're doing this with exclusive lock. Insertion algorithm
			 * guarantees that inserted row(s) will not continue on next page.
			 * NOTE: intentionally no vacuum_delay_point in this loop.
			 */
			if (FUNC15(page) != maxoff)
			{
				FUNC23(&accum);
				FUNC25(&accum, &datums, page, maxoff + 1);

				FUNC20(&accum);
				while ((list = FUNC22(&accum,
											 &attnum, &key, &category, &nlist)) != NULL)
					FUNC21(ginstate, attnum, key, category,
								   list, nlist, NULL);
			}

			/*
			 * Remember next page - it will become the new list head
			 */
			blkno = FUNC5(page)->rightlink;
			FUNC19(buffer);	/* shiftList will do exclusive
											 * locking */

			/*
			 * remove read pages from pending list, at this point all content
			 * of read pages is in regular structure
			 */
			FUNC26(index, metabuffer, blkno, fill_fsm, stats);

			/* At this point, some pending pages have been freed up */
			fsm_vac = true;

			FUNC1(blkno == metadata->head);
			FUNC10(metabuffer, GIN_UNLOCK);

			/*
			 * if we removed the whole pending list or we cleanup tail (which
			 * we remembered on start our cleanup process) then just exit
			 */
			if (blkno == InvalidBlockNumber || cleanupFinish)
				break;

			/*
			 * release memory used so far and reinit state
			 */
			FUNC13(opCtx);
			FUNC24(&datums, datums.maxvalues);
			FUNC23(&accum);
		}
		else
		{
			blkno = FUNC5(page)->rightlink;
			FUNC19(buffer);
		}

		/*
		 * Read next page in pending list
		 */
		FUNC27();
		buffer = FUNC16(index, blkno);
		FUNC10(buffer, GIN_SHARE);
		page = FUNC2(buffer);
	}

	FUNC18(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
	FUNC17(metabuffer);

	/*
	 * As pending list pages can have a high churn rate, it is desirable to
	 * recycle them immediately to the FreeSpaceMap when ordinary backends
	 * clean the list.
	 */
	if (fsm_vac && fill_fsm)
		FUNC8(index);

	/* Clean up temporary space */
	FUNC14(oldCtx);
	FUNC12(opCtx);
}