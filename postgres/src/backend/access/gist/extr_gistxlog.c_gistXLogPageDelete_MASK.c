#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  downlinkOffset; int /*<<< orphan*/  deleteXid; } ;
typedef  TYPE_1__ gistxlogPageDelete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  FullTransactionId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GIST_ID ; 
 int /*<<< orphan*/  SizeOfGistxlogPageDelete ; 
 int /*<<< orphan*/  XLOG_GIST_PAGE_DELETE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC4(Buffer buffer, FullTransactionId xid,
				   Buffer parentBuffer, OffsetNumber downlinkOffset)
{
	gistxlogPageDelete xlrec;
	XLogRecPtr	recptr;

	xlrec.deleteXid = xid;
	xlrec.downlinkOffset = downlinkOffset;

	FUNC0();
	FUNC3((char *) &xlrec, SizeOfGistxlogPageDelete);

	FUNC2(0, buffer, REGBUF_STANDARD);
	FUNC2(1, parentBuffer, REGBUF_STANDARD);

	recptr = FUNC1(RM_GIST_ID, XLOG_GIST_PAGE_DELETE);

	return recptr;
}