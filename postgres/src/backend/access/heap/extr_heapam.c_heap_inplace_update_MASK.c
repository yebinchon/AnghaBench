#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* offnum; } ;
typedef  TYPE_2__ xl_heap_inplace ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {scalar_t__ t_len; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_9__ {scalar_t__ t_hoff; } ;
struct TYPE_7__ {scalar_t__ t_hoff; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  TYPE_4__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  SizeOfHeapInplace ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_HEAP_INPLACE ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,scalar_t__) ; 

void
FUNC29(Relation relation, HeapTuple tuple)
{
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		lp = NULL;
	HeapTupleHeader htup;
	uint32		oldlen;
	uint32		newlen;

	/*
	 * For now, parallel operations are required to be strictly read-only.
	 * Unlike a regular update, this should never create a combo CID, so it
	 * might be possible to relax this restriction, but not without more
	 * thought and testing.  It's not clear that it would be useful, anyway.
	 */
	if (FUNC4())
		FUNC25(ERROR,
				(FUNC26(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC27("cannot update tuples during a parallel operation")));

	buffer = FUNC15(relation, FUNC7(&(tuple->t_self)));
	FUNC9(buffer, BUFFER_LOCK_EXCLUSIVE);
	page = (Page) FUNC0(buffer);

	offnum = FUNC8(&(tuple->t_self));
	if (FUNC13(page) >= offnum)
		lp = FUNC12(page, offnum);

	if (FUNC13(page) < offnum || !FUNC6(lp))
		FUNC24(ERROR, "invalid lp");

	htup = (HeapTupleHeader) FUNC11(page, lp);

	oldlen = FUNC5(lp) - htup->t_hoff;
	newlen = tuple->t_len - tuple->t_data->t_hoff;
	if (oldlen != newlen || htup->t_hoff != tuple->t_data->t_hoff)
		FUNC24(ERROR, "wrong tuple length");

	/* NO EREPORT(ERROR) from here till changes are logged */
	FUNC17();

	FUNC28((char *) htup + htup->t_hoff,
		   (char *) tuple->t_data + tuple->t_data->t_hoff,
		   newlen);

	FUNC10(buffer);

	/* XLOG stuff */
	if (FUNC16(relation))
	{
		xl_heap_inplace xlrec;
		XLogRecPtr	recptr;

		xlrec.offnum = FUNC8(&tuple->t_self);

		FUNC19();
		FUNC23((char *) &xlrec, SizeOfHeapInplace);

		FUNC22(0, buffer, REGBUF_STANDARD);
		FUNC21(0, (char *) htup + htup->t_hoff, newlen);

		/* inplace updates aren't decoded atm, don't log the origin */

		recptr = FUNC20(RM_HEAP_ID, XLOG_HEAP_INPLACE);

		FUNC14(page, recptr);
	}

	FUNC2();

	FUNC18(buffer);

	/*
	 * Send out shared cache inval if necessary.  Note that because we only
	 * pass the new version of the tuple, this mustn't be used for any
	 * operations that could change catcache lookup keys.  But we aren't
	 * bothering with index updates either, so that's true a fortiori.
	 */
	if (!FUNC3())
		FUNC1(relation, tuple, NULL);
}