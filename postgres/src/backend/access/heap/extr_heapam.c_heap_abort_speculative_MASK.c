#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ xmax; int /*<<< orphan*/  offnum; int /*<<< orphan*/  infobits_set; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ xl_heap_delete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  scalar_t__ TransactionId ;
struct TYPE_15__ {int /*<<< orphan*/  t_self; TYPE_4__* t_data; int /*<<< orphan*/  t_len; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_11__ {scalar_t__ t_xmin; } ;
struct TYPE_12__ {TYPE_1__ t_heap; } ;
struct TYPE_14__ {int t_infomask; int /*<<< orphan*/  t_infomask2; int /*<<< orphan*/  t_ctid; TYPE_2__ t_choice; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_4__* HeapTupleHeader ;
typedef  TYPE_5__ HeapTupleData ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_XMAX_BITS ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RecentGlobalXmin ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  SizeOfHeapDelete ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLH_DELETE_IS_SUPER ; 
 int /*<<< orphan*/  XLOG_HEAP_DELETE ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 

void
FUNC35(Relation relation, ItemPointer tid)
{
	TransactionId xid = FUNC3();
	ItemId		lp;
	HeapTupleData tp;
	Page		page;
	BlockNumber block;
	Buffer		buffer;

	FUNC0(FUNC13(tid));

	block = FUNC11(tid);
	buffer = FUNC21(relation, block);
	page = FUNC1(buffer);

	FUNC14(buffer, BUFFER_LOCK_EXCLUSIVE);

	/*
	 * Page can't be all visible, we just inserted into it, and are still
	 * running.
	 */
	FUNC0(!FUNC18(page));

	lp = FUNC17(page, FUNC12(tid));
	FUNC0(FUNC10(lp));

	tp.t_tableOid = FUNC22(relation);
	tp.t_data = (HeapTupleHeader) FUNC16(page, lp);
	tp.t_len = FUNC9(lp);
	tp.t_self = *tid;

	/*
	 * Sanity check that the tuple really is a speculatively inserted tuple,
	 * inserted by us.
	 */
	if (tp.t_data->t_choice.t_heap.t_xmin != xid)
		FUNC32(ERROR, "attempted to kill a tuple inserted by another transaction");
	if (!(FUNC8(relation) || FUNC6(tp.t_data)))
		FUNC32(ERROR, "attempted to kill a non-speculative tuple");
	FUNC0(!FUNC5(tp.t_data));

	/*
	 * No need to check for serializable conflicts here.  There is never a
	 * need for a combocid, either.  No need to extract replica identity, or
	 * do anything special with infomask bits.
	 */

	FUNC25();

	/*
	 * The tuple will become DEAD immediately.  Flag that this page
	 * immediately is a candidate for pruning by setting xmin to
	 * RecentGlobalXmin.  That's not pretty, but it doesn't seem worth
	 * inventing a nicer API for this.
	 */
	FUNC0(FUNC26(RecentGlobalXmin));
	FUNC20(page, RecentGlobalXmin);

	/* store transaction information of xact deleting the tuple */
	tp.t_data->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
	tp.t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;

	/*
	 * Set the tuple header xmin to InvalidTransactionId.  This makes the
	 * tuple immediately invisible everyone.  (In particular, to any
	 * transactions waiting on the speculative token, woken up later.)
	 */
	FUNC7(tp.t_data, InvalidTransactionId);

	/* Clear the speculative insertion token too */
	tp.t_data->t_ctid = tp.t_self;

	FUNC15(buffer);

	/*
	 * XLOG stuff
	 *
	 * The WAL records generated here match heap_delete().  The same recovery
	 * routines are used.
	 */
	if (FUNC23(relation))
	{
		xl_heap_delete xlrec;
		XLogRecPtr	recptr;

		xlrec.flags = XLH_DELETE_IS_SUPER;
		xlrec.infobits_set = FUNC31(tp.t_data->t_infomask,
											  tp.t_data->t_infomask2);
		xlrec.offnum = FUNC12(&tp.t_self);
		xlrec.xmax = xid;

		FUNC27();
		FUNC30((char *) &xlrec, SizeOfHeapDelete);
		FUNC29(0, buffer, REGBUF_STANDARD);

		/* No replica identity & replication origin logged */

		recptr = FUNC28(RM_HEAP_ID, XLOG_HEAP_DELETE);

		FUNC19(page, recptr);
	}

	FUNC2();

	FUNC14(buffer, BUFFER_LOCK_UNLOCK);

	if (FUNC4(&tp))
	{
		FUNC0(!FUNC8(relation));
		FUNC33(relation, &tp, true);
	}

	/*
	 * Never need to mark tuple for invalidation, since catalogs don't support
	 * speculative insertion
	 */

	/* Now we can release the buffer */
	FUNC24(buffer);

	/* count deletion, as we counted the insertion too */
	FUNC34(relation);
}