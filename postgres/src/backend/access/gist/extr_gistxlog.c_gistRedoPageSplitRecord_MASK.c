#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int npage; scalar_t__ markfollowright; int /*<<< orphan*/  orignsn; scalar_t__ origrlink; scalar_t__ origleaf; } ;
typedef  TYPE_1__ gistxlogPageSplit ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int F_LEAF ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ GIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_10__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 char* FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	gistxlogPageSplit *xldata = (gistxlogPageSplit *) FUNC13(record);
	Buffer		firstbuffer = InvalidBuffer;
	Buffer		buffer;
	Page		page;
	int			i;
	bool		isrootsplit = false;

	/*
	 * We must hold lock on the first-listed page throughout the action,
	 * including while updating the left child page (if any).  We can unlock
	 * remaining pages in the list as soon as they've been written, because
	 * there is no path for concurrent queries to reach those pages without
	 * first visiting the first-listed page.
	 */

	/* loop around all pages */
	for (i = 0; i < xldata->npage; i++)
	{
		int			flags;
		char	   *data;
		Size		datalen;
		int			num;
		BlockNumber blkno;
		IndexTuple *tuples;

		FUNC12(record, i + 1, NULL, NULL, &blkno);
		if (blkno == GIST_ROOT_BLKNO)
		{
			FUNC0(i == 0);
			isrootsplit = true;
		}

		buffer = FUNC10(record, i + 1);
		page = (Page) FUNC1(buffer);
		data = FUNC11(record, i + 1, &datalen);

		tuples = FUNC15(data, datalen, &num);

		/* ok, clear buffer */
		if (xldata->origleaf && blkno != GIST_ROOT_BLKNO)
			flags = F_LEAF;
		else
			flags = 0;
		FUNC2(buffer, flags);

		/* and fill it */
		FUNC17(page, tuples, num, FirstOffsetNumber);

		if (blkno == GIST_ROOT_BLKNO)
		{
			FUNC5(page)->rightlink = InvalidBlockNumber;
			FUNC6(page, xldata->orignsn);
			FUNC3(page);
		}
		else
		{
			if (i < xldata->npage - 1)
			{
				BlockNumber nextblkno;

				FUNC12(record, i + 2, NULL, NULL, &nextblkno);
				FUNC5(page)->rightlink = nextblkno;
			}
			else
				FUNC5(page)->rightlink = xldata->origrlink;
			FUNC6(page, xldata->orignsn);
			if (i < xldata->npage - 1 && !isrootsplit &&
				xldata->markfollowright)
				FUNC4(page);
			else
				FUNC3(page);
		}

		FUNC8(page, lsn);
		FUNC7(buffer);

		if (i == 0)
			firstbuffer = buffer;
		else
			FUNC9(buffer);
	}

	/* Fix follow-right data on left child page, if any */
	if (FUNC14(record, 0))
		FUNC16(record, 0);

	/* Finally, release lock on the first page */
	FUNC9(firstbuffer);
}