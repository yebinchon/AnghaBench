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
struct TYPE_2__ {int ntodelete; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ gistxlogDelete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GIST_ID ; 
 int SizeOfGistxlogDelete ; 
 int /*<<< orphan*/  XLOG_GIST_DELETE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

XLogRecPtr
FUNC4(Buffer buffer, OffsetNumber *todelete, int ntodelete,
			   TransactionId latestRemovedXid)
{
	gistxlogDelete xlrec;
	XLogRecPtr	recptr;

	xlrec.latestRemovedXid = latestRemovedXid;
	xlrec.ntodelete = ntodelete;

	FUNC0();
	FUNC3((char *) &xlrec, SizeOfGistxlogDelete);

	/*
	 * We need the target-offsets array whether or not we store the whole
	 * buffer, to allow us to find the latestRemovedXid on a standby server.
	 */
	FUNC3((char *) todelete, ntodelete * sizeof(OffsetNumber));

	FUNC2(0, buffer, REGBUF_STANDARD);

	recptr = FUNC1(RM_GIST_ID, XLOG_GIST_DELETE);

	return recptr;
}