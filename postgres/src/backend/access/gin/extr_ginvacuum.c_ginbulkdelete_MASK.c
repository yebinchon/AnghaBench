#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_14__ {TYPE_2__* result; int /*<<< orphan*/  tmpCxt; int /*<<< orphan*/  index; int /*<<< orphan*/  ginstate; int /*<<< orphan*/  strategy; void* callback_state; int /*<<< orphan*/  callback; } ;
struct TYPE_13__ {scalar_t__ num_index_tuples; } ;
struct TYPE_12__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__ IndexVacuumInfo ;
typedef  int /*<<< orphan*/  IndexTupleData ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__ IndexBulkDeleteResult ;
typedef  int /*<<< orphan*/  IndexBulkDeleteCallback ;
typedef  TYPE_3__ GinVacuumState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BLCKSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 scalar_t__ GIN_ROOT_BLKNO ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_10__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int,int,TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

IndexBulkDeleteResult *
FUNC26(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
			  IndexBulkDeleteCallback callback, void *callback_state)
{
	Relation	index = info->index;
	BlockNumber blkno = GIN_ROOT_BLKNO;
	GinVacuumState gvs;
	Buffer		buffer;
	BlockNumber rootOfPostingTree[BLCKSZ / (sizeof(IndexTupleData) + sizeof(ItemId))];
	uint32		nRoot;

	gvs.tmpCxt = FUNC0(CurrentMemoryContext,
									   "Gin vacuum temporary context",
									   ALLOCSET_DEFAULT_SIZES);
	gvs.index = index;
	gvs.callback = callback;
	gvs.callback_state = callback_state;
	gvs.strategy = info->strategy;
	FUNC22(&gvs.ginstate, index);

	/* first time through? */
	if (stats == NULL)
	{
		/* Yes, so initialize stats to zeroes */
		stats = (IndexBulkDeleteResult *) FUNC23(sizeof(IndexBulkDeleteResult));

		/*
		 * and cleanup any pending inserts
		 */
		FUNC19(&gvs.ginstate, !FUNC8(),
						 false, true, stats);
	}

	/* we'll re-count the tuples each time */
	stats->num_index_tuples = 0;
	gvs.result = stats;

	buffer = FUNC16(index, MAIN_FORKNUM, blkno,
								RBM_NORMAL, info->strategy);

	/* find leaf page */
	for (;;)
	{
		Page		page = FUNC2(buffer);
		IndexTuple	itup;

		FUNC9(buffer, GIN_SHARE);

		FUNC1(!FUNC6(page));

		if (FUNC7(page))
		{
			FUNC9(buffer, GIN_UNLOCK);
			FUNC9(buffer, GIN_EXCLUSIVE);

			if (blkno == GIN_ROOT_BLKNO && !FUNC7(page))
			{
				FUNC9(buffer, GIN_UNLOCK);
				continue;		/* check it one more */
			}
			break;
		}

		FUNC1(FUNC14(page) >= FirstOffsetNumber);

		itup = (IndexTuple) FUNC12(page, FUNC13(page, FirstOffsetNumber));
		blkno = FUNC4(itup);
		FUNC1(blkno != InvalidBlockNumber);

		FUNC18(buffer);
		buffer = FUNC16(index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, info->strategy);
	}

	/* right now we found leftmost page in entry's BTree */

	for (;;)
	{
		Page		page = FUNC2(buffer);
		Page		resPage;
		uint32		i;

		FUNC1(!FUNC6(page));

		resPage = FUNC20(&gvs, buffer, rootOfPostingTree, &nRoot);

		blkno = FUNC5(page)->rightlink;

		if (resPage)
		{
			FUNC17();
			FUNC15(resPage, page);
			FUNC10(buffer);
			FUNC25(gvs.index, buffer);
			FUNC18(buffer);
			FUNC3();
		}
		else
		{
			FUNC18(buffer);
		}

		FUNC24();

		for (i = 0; i < nRoot; i++)
		{
			FUNC21(&gvs, rootOfPostingTree[i]);
			FUNC24();
		}

		if (blkno == InvalidBlockNumber)	/* rightmost page */
			break;

		buffer = FUNC16(index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, info->strategy);
		FUNC9(buffer, GIN_EXCLUSIVE);
	}

	FUNC11(gvs.tmpCxt);

	return gvs.result;
}