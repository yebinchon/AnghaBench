#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* offnum; } ;
typedef  TYPE_1__ xl_heap_confirm ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_5__ {int /*<<< orphan*/  t_ctid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MaxOffsetNumber ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  SizeOfHeapConfirm ; 
 scalar_t__ SpecTokenOffsetNumber ; 
 int /*<<< orphan*/  FUNC16 (int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_HEAP_CONFIRM ; 
 int /*<<< orphan*/  XLOG_INCLUDE_ORIGIN ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 

void
FUNC24(Relation relation, ItemPointer tid)
{
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		lp = NULL;
	HeapTupleHeader htup;

	buffer = FUNC13(relation, FUNC5(tid));
	FUNC7(buffer, BUFFER_LOCK_EXCLUSIVE);
	page = (Page) FUNC1(buffer);

	offnum = FUNC6(tid);
	if (FUNC11(page) >= offnum)
		lp = FUNC10(page, offnum);

	if (FUNC11(page) < offnum || !FUNC4(lp))
		FUNC23(ERROR, "invalid lp");

	htup = (HeapTupleHeader) FUNC9(page, lp);

	/* SpecTokenOffsetNumber should be distinguishable from any real offset */
	FUNC16(MaxOffsetNumber < SpecTokenOffsetNumber,
					 "invalid speculative token constant");

	/* NO EREPORT(ERROR) from here till changes are logged */
	FUNC15();

	FUNC0(FUNC3(htup));

	FUNC8(buffer);

	/*
	 * Replace the speculative insertion token with a real t_ctid, pointing to
	 * itself like it does on regular tuples.
	 */
	htup->t_ctid = *tid;

	/* XLOG stuff */
	if (FUNC14(relation))
	{
		xl_heap_confirm xlrec;
		XLogRecPtr	recptr;

		xlrec.offnum = FUNC6(tid);

		FUNC18();

		/* We want the same filtering on this as on a plain insert */
		FUNC22(XLOG_INCLUDE_ORIGIN);

		FUNC21((char *) &xlrec, SizeOfHeapConfirm);
		FUNC20(0, buffer, REGBUF_STANDARD);

		recptr = FUNC19(RM_HEAP_ID, XLOG_HEAP_CONFIRM);

		FUNC12(page, recptr);
	}

	FUNC2();

	FUNC17(buffer);
}