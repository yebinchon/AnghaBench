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
struct TYPE_2__ {int nredirected; int ndead; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_heap_clean ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP2_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SizeOfHeapClean ; 
 int /*<<< orphan*/  XLOG_HEAP2_CLEAN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC7(Relation reln, Buffer buffer,
			   OffsetNumber *redirected, int nredirected,
			   OffsetNumber *nowdead, int ndead,
			   OffsetNumber *nowunused, int nunused,
			   TransactionId latestRemovedXid)
{
	xl_heap_clean xlrec;
	XLogRecPtr	recptr;

	/* Caller should not call me on a non-WAL-logged relation */
	FUNC0(FUNC1(reln));

	xlrec.latestRemovedXid = latestRemovedXid;
	xlrec.nredirected = nredirected;
	xlrec.ndead = ndead;

	FUNC2();
	FUNC6((char *) &xlrec, SizeOfHeapClean);

	FUNC5(0, buffer, REGBUF_STANDARD);

	/*
	 * The OffsetNumber arrays are not actually in the buffer, but we pretend
	 * that they are.  When XLogInsert stores the whole buffer, the offset
	 * arrays need not be stored too.  Note that even if all three arrays are
	 * empty, we want to expose the buffer as a candidate for whole-page
	 * storage, since this record type implies a defragmentation operation
	 * even if no line pointers changed state.
	 */
	if (nredirected > 0)
		FUNC4(0, (char *) redirected,
							nredirected * sizeof(OffsetNumber) * 2);

	if (ndead > 0)
		FUNC4(0, (char *) nowdead,
							ndead * sizeof(OffsetNumber));

	if (nunused > 0)
		FUNC4(0, (char *) nowunused,
							nunused * sizeof(OffsetNumber));

	recptr = FUNC3(RM_HEAP2_ID, XLOG_HEAP2_CLEAN);

	return recptr;
}