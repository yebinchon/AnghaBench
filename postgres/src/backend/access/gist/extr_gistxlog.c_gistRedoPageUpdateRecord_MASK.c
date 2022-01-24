#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int ntodelete; int ntoinsert; } ;
typedef  TYPE_1__ gistxlogPageUpdate ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int Size ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC21(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	gistxlogPageUpdate *xldata = (gistxlogPageUpdate *) FUNC17(record);
	Buffer		buffer;
	Page		page;

	if (FUNC15(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		char	   *begin;
		char	   *data;
		Size		datalen;
		int			ninserted = 0;

		data = begin = FUNC16(record, 0, &datalen);

		page = (Page) FUNC1(buffer);

		if (xldata->ntodelete == 1 && xldata->ntoinsert == 1)
		{
			/*
			 * When replacing one tuple with one other tuple, we must use
			 * PageIndexTupleOverwrite for consistency with gistplacetopage.
			 */
			OffsetNumber offnum = *((OffsetNumber *) data);
			IndexTuple	itup;
			Size		itupsize;

			data += sizeof(OffsetNumber);
			itup = (IndexTuple) data;
			itupsize = FUNC5(itup);
			if (!FUNC11(page, offnum, (Item) itup, itupsize))
				FUNC19(ERROR, "failed to add item to GiST index page, size %d bytes",
					 (int) itupsize);
			data += itupsize;
			/* should be nothing left after consuming 1 tuple */
			FUNC0(data - begin == datalen);
			/* update insertion count for assert check below */
			ninserted++;
		}
		else if (xldata->ntodelete > 0)
		{
			/* Otherwise, delete old tuples if any */
			OffsetNumber *todelete = (OffsetNumber *) data;

			data += sizeof(OffsetNumber) * xldata->ntodelete;

			FUNC10(page, todelete, xldata->ntodelete);
			if (FUNC4(page))
				FUNC3(page);
		}

		/* Add new tuples if any */
		if (data - begin < datalen)
		{
			OffsetNumber off = (FUNC12(page)) ? FirstOffsetNumber :
			FUNC7(FUNC9(page));

			while (data - begin < datalen)
			{
				IndexTuple	itup = (IndexTuple) data;
				Size		sz = FUNC5(itup);
				OffsetNumber l;

				data += sz;

				l = FUNC8(page, (Item) itup, sz, off, false, false);
				if (l == InvalidOffsetNumber)
					FUNC19(ERROR, "failed to add item to GiST index page, size %d bytes",
						 (int) sz);
				off++;
				ninserted++;
			}
		}

		/* Check that XLOG record contained expected number of tuples */
		FUNC0(ninserted == xldata->ntoinsert);

		FUNC13(page, lsn);
		FUNC6(buffer);
	}

	/*
	 * Fix follow-right data on left child page
	 *
	 * This must be done while still holding the lock on the target page. Note
	 * that even if the target page no longer exists, we still attempt to
	 * replay the change on the child page.
	 */
	if (FUNC18(record, 1))
		FUNC20(record, 1);

	if (FUNC2(buffer))
		FUNC14(buffer);
}