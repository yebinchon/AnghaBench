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
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  XLOG_FPI ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

XLogRecPtr
FUNC5(RelFileNode *rnode, ForkNumber forkNum, BlockNumber blkno,
			Page page, bool page_std)
{
	int			flags;
	XLogRecPtr	recptr;

	flags = REGBUF_FORCE_IMAGE;
	if (page_std)
		flags |= REGBUF_STANDARD;

	FUNC2();
	FUNC4(0, rnode, forkNum, blkno, page, flags);
	recptr = FUNC3(RM_XLOG_ID, XLOG_FPI);

	/*
	 * The page may be uninitialized. If so, we can't set the LSN because that
	 * would corrupt the page.
	 */
	if (!FUNC0(page))
	{
		FUNC1(page, recptr);
	}

	return recptr;
}