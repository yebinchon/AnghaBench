#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ntuples; scalar_t__ prevTail; int /*<<< orphan*/  newRightlink; int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ ginxlogUpdateMeta ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int /*<<< orphan*/  rightlink; int /*<<< orphan*/  maxoff; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 scalar_t__ GIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 char* FUNC17 (TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC21(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogUpdateMeta *data = (ginxlogUpdateMeta *) FUNC18(record);
	Buffer		metabuffer;
	Page		metapage;
	Buffer		buffer;

	/*
	 * Restore the metapage. This is essentially the same as a full-page
	 * image, so restore the metapage unconditionally without looking at the
	 * LSN, to avoid torn page hazards.
	 */
	metabuffer = FUNC15(record, 0);
	FUNC0(FUNC1(metabuffer) == GIN_METAPAGE_BLKNO);
	metapage = FUNC2(metabuffer);

	FUNC4(metabuffer);
	FUNC20(FUNC5(metapage), &data->metadata, sizeof(GinMetaPageData));
	FUNC13(metapage, lsn);
	FUNC8(metabuffer);

	if (data->ntuples > 0)
	{
		/*
		 * insert into tail page
		 */
		if (FUNC16(record, 1, &buffer) == BLK_NEEDS_REDO)
		{
			Page		page = FUNC2(buffer);
			OffsetNumber off;
			int			i;
			Size		tupsize;
			char	   *payload;
			IndexTuple	tuples;
			Size		totaltupsize;

			payload = FUNC17(record, 1, &totaltupsize);
			tuples = (IndexTuple) payload;

			if (FUNC12(page))
				off = FirstOffsetNumber;
			else
				off = FUNC9(FUNC11(page));

			for (i = 0; i < data->ntuples; i++)
			{
				tupsize = FUNC7(tuples);

				if (FUNC10(page, (Item) tuples, tupsize, off,
								false, false) == InvalidOffsetNumber)
					FUNC19(ERROR, "failed to add item to index page");

				tuples = (IndexTuple) (((char *) tuples) + tupsize);

				off++;
			}
			FUNC0(payload + totaltupsize == (char *) tuples);

			/*
			 * Increase counter of heap tuples
			 */
			FUNC6(page)->maxoff++;

			FUNC13(page, lsn);
			FUNC8(buffer);
		}
		if (FUNC3(buffer))
			FUNC14(buffer);
	}
	else if (data->prevTail != InvalidBlockNumber)
	{
		/*
		 * New tail
		 */
		if (FUNC16(record, 1, &buffer) == BLK_NEEDS_REDO)
		{
			Page		page = FUNC2(buffer);

			FUNC6(page)->rightlink = data->newRightlink;

			FUNC13(page, lsn);
			FUNC8(buffer);
		}
		if (FUNC3(buffer))
			FUNC14(buffer);
	}

	FUNC14(metabuffer);
}