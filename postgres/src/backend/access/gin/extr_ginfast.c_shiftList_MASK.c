#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_9__ {int ndeleted; int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ ginxlogDeleteListPages ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {scalar_t__ maxoff; scalar_t__ rightlink; int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {scalar_t__ head; size_t nPendingPages; scalar_t__ nPendingHeapTuples; scalar_t__ tailFreeSize; scalar_t__ tail; } ;
struct TYPE_11__ {size_t pages_deleted; } ;
struct TYPE_10__ {int pd_lower; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_3__ IndexBulkDeleteResult ;
typedef  TYPE_4__ GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GIN_DELETED ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int GIN_NDELETE_AT_ONCE ; 
 TYPE_4__* FUNC3 (scalar_t__) ; 
 TYPE_7__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_DELETE_LISTPAGE ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC20(Relation index, Buffer metabuffer, BlockNumber newHead,
		  bool fill_fsm, IndexBulkDeleteResult *stats)
{
	Page		metapage;
	GinMetaPageData *metadata;
	BlockNumber blknoToDelete;

	metapage = FUNC1(metabuffer);
	metadata = FUNC3(metapage);
	blknoToDelete = metadata->head;

	do
	{
		Page		page;
		int			i;
		int64		nDeletedHeapTuples = 0;
		ginxlogDeleteListPages data;
		Buffer		buffers[GIN_NDELETE_AT_ONCE];
		BlockNumber freespace[GIN_NDELETE_AT_ONCE];

		data.ndeleted = 0;
		while (data.ndeleted < GIN_NDELETE_AT_ONCE && blknoToDelete != newHead)
		{
			freespace[data.ndeleted] = blknoToDelete;
			buffers[data.ndeleted] = FUNC9(index, blknoToDelete);
			FUNC6(buffers[data.ndeleted], GIN_EXCLUSIVE);
			page = FUNC1(buffers[data.ndeleted]);

			data.ndeleted++;

			FUNC0(!FUNC5(page));

			nDeletedHeapTuples += FUNC4(page)->maxoff;
			blknoToDelete = FUNC4(page)->rightlink;
		}

		if (stats)
			stats->pages_deleted += data.ndeleted;

		/*
		 * This operation touches an unusually large number of pages, so
		 * prepare the XLogInsert machinery for that before entering the
		 * critical section.
		 */
		if (FUNC11(index))
			FUNC15(data.ndeleted, 0);

		FUNC12();

		metadata->head = blknoToDelete;

		FUNC0(metadata->nPendingPages >= data.ndeleted);
		metadata->nPendingPages -= data.ndeleted;
		FUNC0(metadata->nPendingHeapTuples >= nDeletedHeapTuples);
		metadata->nPendingHeapTuples -= nDeletedHeapTuples;

		if (blknoToDelete == InvalidBlockNumber)
		{
			metadata->tail = InvalidBlockNumber;
			metadata->tailFreeSize = 0;
			metadata->nPendingPages = 0;
			metadata->nPendingHeapTuples = 0;
		}

		/*
		 * Set pd_lower just past the end of the metadata.  This is essential,
		 * because without doing so, metadata will be lost if xlog.c
		 * compresses the page.  (We must do this here because pre-v11
		 * versions of PG did not set the metapage's pd_lower correctly, so a
		 * pg_upgraded index might contain the wrong value.)
		 */
		((PageHeader) metapage)->pd_lower =
			((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;

		FUNC7(metabuffer);

		for (i = 0; i < data.ndeleted; i++)
		{
			page = FUNC1(buffers[i]);
			FUNC4(page)->flags = GIN_DELETED;
			FUNC7(buffers[i]);
		}

		if (FUNC11(index))
		{
			XLogRecPtr	recptr;

			FUNC14();
			FUNC17(0, metabuffer,
							   REGBUF_WILL_INIT | REGBUF_STANDARD);
			for (i = 0; i < data.ndeleted; i++)
				FUNC17(i + 1, buffers[i], REGBUF_WILL_INIT);

			FUNC19(&data.metadata, metadata, sizeof(GinMetaPageData));

			FUNC18((char *) &data,
							 sizeof(ginxlogDeleteListPages));

			recptr = FUNC16(RM_GIN_ID, XLOG_GIN_DELETE_LISTPAGE);
			FUNC8(metapage, recptr);

			for (i = 0; i < data.ndeleted; i++)
			{
				page = FUNC1(buffers[i]);
				FUNC8(page, recptr);
			}
		}

		for (i = 0; i < data.ndeleted; i++)
			FUNC13(buffers[i]);

		FUNC2();

		for (i = 0; fill_fsm && i < data.ndeleted; i++)
			FUNC10(index, freespace[i]);

	} while (blknoToDelete != newHead);
}