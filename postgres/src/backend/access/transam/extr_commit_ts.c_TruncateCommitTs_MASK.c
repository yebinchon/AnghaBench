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
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  CommitTsCtl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SlruScanDirCbReportPresence ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void
FUNC4(TransactionId oldestXact)
{
	int			cutoffPage;

	/*
	 * The cutoff point is the start of the segment containing oldestXact. We
	 * pass the *page* containing oldestXact to SimpleLruTruncate.
	 */
	cutoffPage = FUNC2(oldestXact);

	/* Check to see if there's any files that could be removed */
	if (!FUNC1(CommitTsCtl, SlruScanDirCbReportPresence,
						   &cutoffPage))
		return;					/* nothing to remove */

	/* Write XLOG record */
	FUNC3(cutoffPage, oldestXact);

	/* Now we can remove the old CommitTs segment(s) */
	FUNC0(CommitTsCtl, cutoffPage);
}