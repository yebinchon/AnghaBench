#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_19__ ;

/* Type definitions */
struct TYPE_24__ {int ntuples; scalar_t__ newRightlink; scalar_t__ prevTail; char metadata; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ ginxlogUpdateMeta ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_29__ {scalar_t__ head; scalar_t__ tailFreeSize; scalar_t__ tail; int nPendingPages; scalar_t__ nPendingHeapTuples; } ;
struct TYPE_28__ {TYPE_2__* index; } ;
struct TYPE_27__ {int ntuples; scalar_t__ sumsize; TYPE_6__** tuples; } ;
struct TYPE_26__ {int pd_lower; } ;
struct TYPE_25__ {int /*<<< orphan*/  rd_node; } ;
struct TYPE_23__ {scalar_t__ rightlink; scalar_t__ maxoff; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PageHeader ;
typedef  int /*<<< orphan*/ * Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_4__ GinTupleCollector ;
typedef  TYPE_5__ GinState ;
typedef  TYPE_6__ GinMetaPageData ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 scalar_t__ GIN_METAPAGE_BLKNO ; 
 int GIN_PAGE_FREESIZE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ GinListPageSize ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_19__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_6__*) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 scalar_t__ FUNC16 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  XLOG_GIN_UPDATE_META_PAGE ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,TYPE_6__**,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC29 (char*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 

void
FUNC32(GinState *ginstate, GinTupleCollector *collector)
{
	Relation	index = ginstate->index;
	Buffer		metabuffer;
	Page		metapage;
	GinMetaPageData *metadata = NULL;
	Buffer		buffer = InvalidBuffer;
	Page		page = NULL;
	ginxlogUpdateMeta data;
	bool		separateList = false;
	bool		needCleanup = false;
	int			cleanupSize;
	bool		needWal;

	if (collector->ntuples == 0)
		return;

	needWal = FUNC18(index);

	data.node = index->rd_node;
	data.ntuples = 0;
	data.newRightlink = data.prevTail = InvalidBlockNumber;

	metabuffer = FUNC16(index, GIN_METAPAGE_BLKNO);
	metapage = FUNC1(metabuffer);

	/*
	 * An insertion to the pending list could logically belong anywhere in the
	 * tree, so it conflicts with all serializable scans.  All scans acquire a
	 * predicate lock on the metabuffer to represent that.
	 */
	FUNC2(index, NULL, metabuffer);

	if (collector->sumsize + collector->ntuples * sizeof(ItemIdData) > GinListPageSize)
	{
		/*
		 * Total size is greater than one page => make sublist
		 */
		separateList = true;
	}
	else
	{
		FUNC8(metabuffer, GIN_EXCLUSIVE);
		metadata = FUNC5(metapage);

		if (metadata->head == InvalidBlockNumber ||
			collector->sumsize + collector->ntuples * sizeof(ItemIdData) > metadata->tailFreeSize)
		{
			/*
			 * Pending list is empty or total size is greater than freespace
			 * on tail page => make sublist
			 *
			 * We unlock metabuffer to keep high concurrency
			 */
			separateList = true;
			FUNC8(metabuffer, GIN_UNLOCK);
		}
	}

	if (separateList)
	{
		/*
		 * We should make sublist separately and append it to the tail
		 */
		GinMetaPageData sublist;

		FUNC30(&sublist, 0, sizeof(GinMetaPageData));
		FUNC28(index, collector->tuples, collector->ntuples, &sublist);

		if (needWal)
			FUNC21();

		/*
		 * metapage was unlocked, see above
		 */
		FUNC8(metabuffer, GIN_EXCLUSIVE);
		metadata = FUNC5(metapage);

		if (metadata->head == InvalidBlockNumber)
		{
			/*
			 * Main list is empty, so just insert sublist as main list
			 */
			FUNC19();

			metadata->head = sublist.head;
			metadata->tail = sublist.tail;
			metadata->tailFreeSize = sublist.tailFreeSize;

			metadata->nPendingPages = sublist.nPendingPages;
			metadata->nPendingHeapTuples = sublist.nPendingHeapTuples;
		}
		else
		{
			/*
			 * Merge lists
			 */
			data.prevTail = metadata->tail;
			data.newRightlink = sublist.head;

			buffer = FUNC16(index, metadata->tail);
			FUNC8(buffer, GIN_EXCLUSIVE);
			page = FUNC1(buffer);

			FUNC0(FUNC6(page)->rightlink == InvalidBlockNumber);

			FUNC19();

			FUNC6(page)->rightlink = sublist.head;

			FUNC9(buffer);

			metadata->tail = sublist.tail;
			metadata->tailFreeSize = sublist.tailFreeSize;

			metadata->nPendingPages += sublist.nPendingPages;
			metadata->nPendingHeapTuples += sublist.nPendingHeapTuples;

			if (needWal)
				FUNC24(1, buffer, REGBUF_STANDARD);
		}
	}
	else
	{
		/*
		 * Insert into tail page.  Metapage is already locked
		 */
		OffsetNumber l,
					off;
		int			i,
					tupsize;
		char	   *ptr;
		char	   *collectordata;

		buffer = FUNC16(index, metadata->tail);
		FUNC8(buffer, GIN_EXCLUSIVE);
		page = FUNC1(buffer);

		off = (FUNC14(page)) ? FirstOffsetNumber :
			FUNC10(FUNC13(page));

		collectordata = ptr = (char *) FUNC31(collector->sumsize);

		data.ntuples = collector->ntuples;

		if (needWal)
			FUNC21();

		FUNC19();

		/*
		 * Increase counter of heap tuples
		 */
		FUNC0(FUNC6(page)->maxoff <= metadata->nPendingHeapTuples);
		FUNC6(page)->maxoff++;
		metadata->nPendingHeapTuples++;

		for (i = 0; i < collector->ntuples; i++)
		{
			tupsize = FUNC7(collector->tuples[i]);
			l = FUNC11(page, (Item) collector->tuples[i], tupsize, off, false, false);

			if (l == InvalidOffsetNumber)
				FUNC26(ERROR, "failed to add item to index page in \"%s\"",
					 FUNC17(index));

			FUNC29(ptr, collector->tuples[i], tupsize);
			ptr += tupsize;

			off++;
		}

		FUNC0((ptr - collectordata) <= collector->sumsize);
		if (needWal)
		{
			FUNC24(1, buffer, REGBUF_STANDARD);
			FUNC23(1, collectordata, collector->sumsize);
		}

		metadata->tailFreeSize = FUNC12(page);

		FUNC9(buffer);
	}

	/*
	 * Set pd_lower just past the end of the metadata.  This is essential,
	 * because without doing so, metadata will be lost if xlog.c compresses
	 * the page.  (We must do this here because pre-v11 versions of PG did not
	 * set the metapage's pd_lower correctly, so a pg_upgraded index might
	 * contain the wrong value.)
	 */
	((PageHeader) metapage)->pd_lower =
		((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;

	/*
	 * Write metabuffer, make xlog entry
	 */
	FUNC9(metabuffer);

	if (needWal)
	{
		XLogRecPtr	recptr;

		FUNC29(&data.metadata, metadata, sizeof(GinMetaPageData));

		FUNC24(0, metabuffer, REGBUF_WILL_INIT | REGBUF_STANDARD);
		FUNC25((char *) &data, sizeof(ginxlogUpdateMeta));

		recptr = FUNC22(RM_GIN_ID, XLOG_GIN_UPDATE_META_PAGE);
		FUNC15(metapage, recptr);

		if (buffer != InvalidBuffer)
		{
			FUNC15(page, recptr);
		}
	}

	if (buffer != InvalidBuffer)
		FUNC20(buffer);

	/*
	 * Force pending list cleanup when it becomes too long. And,
	 * ginInsertCleanup could take significant amount of time, so we prefer to
	 * call it when it can do all the work in a single collection cycle. In
	 * non-vacuum mode, it shouldn't require maintenance_work_mem, so fire it
	 * while pending list is still small enough to fit into
	 * gin_pending_list_limit.
	 *
	 * ginInsertCleanup() should not be called inside our CRIT_SECTION.
	 */
	cleanupSize = FUNC4(index);
	if (metadata->nPendingPages * GIN_PAGE_FREESIZE > cleanupSize * 1024L)
		needCleanup = true;

	FUNC20(metabuffer);

	FUNC3();

	/*
	 * Since it could contend with concurrent cleanup process we cleanup
	 * pending list not forcibly.
	 */
	if (needCleanup)
		FUNC27(ginstate, false, true, false, NULL);
}