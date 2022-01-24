#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_FPI ; 
 int XLR_MAX_BLOCK_ID ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC14(Relation rel, ForkNumber forkNum,
				  BlockNumber startblk, BlockNumber endblk,
				  bool page_std)
{
	BlockNumber blkno;

	/*
	 * Iterate over all the pages in the range. They are collected into
	 * batches of XLR_MAX_BLOCK_ID pages, and a single WAL-record is written
	 * for each batch.
	 */
	FUNC11(XLR_MAX_BLOCK_ID - 1, 0);

	blkno = startblk;
	while (blkno < endblk)
	{
		Buffer		bufpack[XLR_MAX_BLOCK_ID];
		XLogRecPtr	recptr;
		int			nbufs;
		int			i;

		FUNC1();

		/* Collect a batch of blocks. */
		nbufs = 0;
		while (nbufs < XLR_MAX_BLOCK_ID && blkno < endblk)
		{
			Buffer		buf = FUNC7(rel, blkno);

			FUNC3(buf, BUFFER_LOCK_EXCLUSIVE);

			/*
			 * Completely empty pages are not WAL-logged. Writing a WAL record
			 * would change the LSN, and we don't want that. We want the page
			 * to stay empty.
			 */
			if (!FUNC5(FUNC0(buf)))
				bufpack[nbufs++] = buf;
			else
				FUNC9(buf);
			blkno++;
		}

		/* Write WAL record for this batch. */
		FUNC10();

		FUNC8();
		for (i = 0; i < nbufs; i++)
		{
			FUNC13(i, bufpack[i], REGBUF_FORCE_IMAGE | REGBUF_STANDARD);
			FUNC4(bufpack[i]);
		}

		recptr = FUNC12(RM_XLOG_ID, XLOG_FPI);

		for (i = 0; i < nbufs; i++)
		{
			FUNC6(FUNC0(bufpack[i]), recptr);
			FUNC9(bufpack[i]);
		}
		FUNC2();
	}
}