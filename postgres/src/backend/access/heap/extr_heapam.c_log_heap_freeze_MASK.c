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
typedef  int /*<<< orphan*/  xl_heap_freeze_tuple ;
struct TYPE_2__ {int ntuples; int /*<<< orphan*/  cutoff_xid; } ;
typedef  TYPE_1__ xl_heap_freeze_page ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP2_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SizeOfHeapFreezePage ; 
 int /*<<< orphan*/  XLOG_HEAP2_FREEZE_PAGE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC7(Relation reln, Buffer buffer, TransactionId cutoff_xid,
				xl_heap_freeze_tuple *tuples, int ntuples)
{
	xl_heap_freeze_page xlrec;
	XLogRecPtr	recptr;

	/* Caller should not call me on a non-WAL-logged relation */
	FUNC0(FUNC1(reln));
	/* nor when there are no tuples to freeze */
	FUNC0(ntuples > 0);

	xlrec.cutoff_xid = cutoff_xid;
	xlrec.ntuples = ntuples;

	FUNC2();
	FUNC6((char *) &xlrec, SizeOfHeapFreezePage);

	/*
	 * The freeze plan array is not actually in the buffer, but pretend that
	 * it is.  When XLogInsert stores the whole buffer, the freeze plan need
	 * not be stored too.
	 */
	FUNC5(0, buffer, REGBUF_STANDARD);
	FUNC4(0, (char *) tuples,
						ntuples * sizeof(xl_heap_freeze_tuple));

	recptr = FUNC3(RM_HEAP2_ID, XLOG_HEAP2_FREEZE_PAGE);

	return recptr;
}