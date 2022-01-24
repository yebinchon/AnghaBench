#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_1__ ginxlogCreatePostingTree ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  rightlink; } ;
struct TYPE_7__ {int /*<<< orphan*/  nDataPages; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Pointer ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_2__ GinStatsData ;
typedef  int /*<<< orphan*/  GinPostingList ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int GIN_COMPRESSED ; 
 int GIN_DATA ; 
 int GIN_LEAF ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int GinDataPageMaxDataSize ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  GinPostingListSegmentMaxSize ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_CREATE_PTREE ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

BlockNumber
FUNC26(Relation index, ItemPointerData *items, uint32 nitems,
				  GinStatsData *buildStats, Buffer entrybuffer)
{
	BlockNumber blkno;
	Buffer		buffer;
	Page		tmppage;
	Page		page;
	Pointer		ptr;
	int			nrootitems;
	int			rootsize;
	bool		is_build = (buildStats != NULL);

	/* Construct the new root page in memory first. */
	tmppage = (Page) FUNC24(BLCKSZ);
	FUNC5(tmppage, GIN_DATA | GIN_LEAF | GIN_COMPRESSED, BLCKSZ);
	FUNC7(tmppage)->rightlink = InvalidBlockNumber;

	/*
	 * Write as many of the items to the root page as fit. In segments of max
	 * GinPostingListSegmentMaxSize bytes each.
	 */
	nrootitems = 0;
	rootsize = 0;
	ptr = (Pointer) FUNC3(tmppage);
	while (nrootitems < nitems)
	{
		GinPostingList *segment;
		int			npacked;
		int			segsize;

		segment = FUNC21(&items[nrootitems],
										 nitems - nrootitems,
										 GinPostingListSegmentMaxSize,
										 &npacked);
		segsize = FUNC14(segment);
		if (rootsize + segsize > GinDataPageMaxDataSize)
			break;

		FUNC23(ptr, segment, segsize);
		ptr += segsize;
		rootsize += segsize;
		nrootitems += npacked;
		FUNC25(segment);
	}
	FUNC4(tmppage, rootsize);

	/*
	 * All set. Get a new physical page, and copy the in-memory page to it.
	 */
	buffer = FUNC6(index);
	page = FUNC1(buffer);
	blkno = FUNC0(buffer);

	/*
	 * Copy any predicate locks from the entry tree leaf (containing posting
	 * list) to the posting tree.
	 */
	FUNC11(index, FUNC0(entrybuffer), blkno);

	FUNC13();

	FUNC9(tmppage, page);
	FUNC8(buffer);

	if (FUNC12(index) && !is_build)
	{
		XLogRecPtr	recptr;
		ginxlogCreatePostingTree data;

		data.size = rootsize;

		FUNC16();
		FUNC19((char *) &data, sizeof(ginxlogCreatePostingTree));

		FUNC19((char *) FUNC3(page),
						 rootsize);
		FUNC18(0, buffer, REGBUF_WILL_INIT);

		recptr = FUNC17(RM_GIN_ID, XLOG_GIN_CREATE_PTREE);
		FUNC10(page, recptr);
	}

	FUNC15(buffer);

	FUNC2();

	/* During index build, count the newly-added data page */
	if (buildStats)
		buildStats->nDataPages++;

	FUNC20(DEBUG2, "created GIN posting tree with %d items", nrootitems);

	/*
	 * Add any remaining TIDs to the newly-created posting tree.
	 */
	if (nitems > nrootitems)
	{
		FUNC22(index, blkno,
							  items + nrootitems,
							  nitems - nrootitems,
							  buildStats);
	}

	return blkno;
}