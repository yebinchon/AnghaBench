#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_57__   TYPE_9__ ;
typedef  struct TYPE_56__   TYPE_8__ ;
typedef  struct TYPE_55__   TYPE_7__ ;
typedef  struct TYPE_54__   TYPE_6__ ;
typedef  struct TYPE_53__   TYPE_5__ ;
typedef  struct TYPE_52__   TYPE_4__ ;
typedef  struct TYPE_51__   TYPE_3__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_1__ ;

/* Type definitions */
struct TYPE_51__ {int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  TYPE_3__ xl_heap_header ;
struct TYPE_52__ {int /*<<< orphan*/  flags; scalar_t__ xmax; int /*<<< orphan*/  offnum; int /*<<< orphan*/  infobits_set; } ;
typedef  TYPE_4__ xl_heap_delete ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  scalar_t__ TransactionId ;
struct TYPE_57__ {int t_len; TYPE_1__* t_data; } ;
struct TYPE_56__ {int /*<<< orphan*/  t_self; TYPE_7__* t_data; int /*<<< orphan*/  t_len; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_55__ {int t_infomask; int t_infomask2; int /*<<< orphan*/  t_ctid; } ;
struct TYPE_54__ {TYPE_2__* rd_rel; } ;
struct TYPE_53__ {int /*<<< orphan*/  cmax; int /*<<< orphan*/  xmax; int /*<<< orphan*/  ctid; } ;
struct TYPE_50__ {scalar_t__ relreplident; scalar_t__ relkind; } ;
struct TYPE_49__ {int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  scalar_t__ TM_Result ;
typedef  TYPE_5__ TM_FailureData ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_6__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_7__* HeapTupleHeader ;
typedef  TYPE_8__ HeapTupleData ;
typedef  TYPE_9__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_8__*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_9__* FUNC7 (TYPE_6__*,TYPE_8__*,int,int*) ; 
 scalar_t__ FUNC8 () ; 
 int HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_XMAX_BITS ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC9 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 scalar_t__ FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 scalar_t__ FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 scalar_t__ FUNC16 (TYPE_7__*) ; 
 scalar_t__ FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC21 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  InvalidCommandId ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockTupleExclusive ; 
 int /*<<< orphan*/  LockWaitBlock ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MultiXactStatusUpdate ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 scalar_t__ FUNC40 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_6__*) ; 
 scalar_t__ FUNC42 (TYPE_6__*) ; 
 scalar_t__ FUNC43 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC44 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int SizeOfHeapDelete ; 
 int SizeOfHeapHeader ; 
 int SizeofHeapTupleHeader ; 
 scalar_t__ TM_BeingModified ; 
 scalar_t__ TM_Deleted ; 
 scalar_t__ TM_Invisible ; 
 scalar_t__ TM_Ok ; 
 scalar_t__ TM_SelfModified ; 
 scalar_t__ TM_Updated ; 
 int /*<<< orphan*/  FUNC46 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC47 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC48 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_7__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  VISIBILITYMAP_VALID_BITS ; 
 int /*<<< orphan*/  XLH_DELETE_ALL_VISIBLE_CLEARED ; 
 int /*<<< orphan*/  XLH_DELETE_CONTAINS_OLD_KEY ; 
 int /*<<< orphan*/  XLH_DELETE_CONTAINS_OLD_TUPLE ; 
 int /*<<< orphan*/  XLH_DELETE_IS_PARTITION_MOVE ; 
 int /*<<< orphan*/  XLOG_HEAP_DELETE ; 
 int /*<<< orphan*/  XLOG_INCLUDE_ORIGIN ; 
 int /*<<< orphan*/  XLTW_Delete ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (char*,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (scalar_t__,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (int,int) ; 
 int /*<<< orphan*/  FUNC58 (scalar_t__,int,int,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 (char*) ; 
 int /*<<< orphan*/  FUNC62 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC63 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC64 (TYPE_6__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC65 (TYPE_6__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC66 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC67 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC68 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC69 (int,int) ; 

TM_Result
FUNC70(Relation relation, ItemPointer tid,
			CommandId cid, Snapshot crosscheck, bool wait,
			TM_FailureData *tmfd, bool changingPart)
{
	TM_Result	result;
	TransactionId xid = FUNC8();
	ItemId		lp;
	HeapTupleData tp;
	Page		page;
	BlockNumber block;
	Buffer		buffer;
	Buffer		vmbuffer = InvalidBuffer;
	TransactionId new_xmax;
	uint16		new_infomask,
				new_infomask2;
	bool		have_tuple_lock = false;
	bool		iscombo;
	bool		all_visible_cleared = false;
	HeapTuple	old_key_tuple = NULL;	/* replica identity of the tuple */
	bool		old_key_copied = false;

	FUNC0(FUNC29(tid));

	/*
	 * Forbid this during a parallel operation, lest it allocate a combocid.
	 * Other workers might need that combocid for visibility checks, and we
	 * have no provision for broadcasting it to them.
	 */
	if (FUNC23())
		FUNC59(ERROR,
				(FUNC60(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC61("cannot delete tuples during a parallel operation")));

	block = FUNC27(tid);
	buffer = FUNC40(relation, block);
	page = FUNC2(buffer);

	/*
	 * Before locking the buffer, pin the visibility map page if it appears to
	 * be necessary.  Since we haven't got the lock yet, someone else might be
	 * in the middle of changing this, so we'll need to recheck after we have
	 * the lock.
	 */
	if (FUNC37(page))
		FUNC68(relation, block, &vmbuffer);

	FUNC30(buffer, BUFFER_LOCK_EXCLUSIVE);

	/*
	 * If we didn't pin the visibility map page and the page has become all
	 * visible while we were busy locking the buffer, we'll have to unlock and
	 * re-lock, to avoid holding the buffer lock across an I/O.  That's a bit
	 * unfortunate, but hopefully shouldn't happen often.
	 */
	if (vmbuffer == InvalidBuffer && FUNC37(page))
	{
		FUNC30(buffer, BUFFER_LOCK_UNLOCK);
		FUNC68(relation, block, &vmbuffer);
		FUNC30(buffer, BUFFER_LOCK_EXCLUSIVE);
	}

	lp = FUNC36(page, FUNC28(tid));
	FUNC0(FUNC25(lp));

	tp.t_tableOid = FUNC41(relation);
	tp.t_data = (HeapTupleHeader) FUNC35(page, lp);
	tp.t_len = FUNC24(lp);
	tp.t_self = *tid;

l1:
	result = FUNC21(&tp, cid, buffer);

	if (result == TM_Invisible)
	{
		FUNC48(buffer);
		FUNC59(ERROR,
				(FUNC60(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC61("attempted to delete invisible tuple")));
	}
	else if (result == TM_BeingModified && wait)
	{
		TransactionId xwait;
		uint16		infomask;

		/* must copy state data before unlocking buffer */
		xwait = FUNC14(tp.t_data);
		infomask = tp.t_data->t_infomask;

		/*
		 * Sleep until concurrent transaction ends -- except when there's a
		 * single locker and it's our own transaction.  Note we don't care
		 * which lock mode the locker has, because we need the strongest one.
		 *
		 * Before sleeping, we need to acquire tuple lock to establish our
		 * priority for the tuple (see heap_lock_tuple).  LockTuple will
		 * release us when we are next-in-line for the tuple.
		 *
		 * If we are forced to "start over" below, we keep the tuple lock;
		 * this arranges that we stay at the head of the line while rechecking
		 * tuple state.
		 */
		if (infomask & HEAP_XMAX_IS_MULTI)
		{
			bool		current_is_member = false;

			if (FUNC5((MultiXactId) xwait, infomask,
										LockTupleExclusive, &current_is_member))
			{
				FUNC30(buffer, BUFFER_LOCK_UNLOCK);

				/*
				 * Acquire the lock, if necessary (but skip it when we're
				 * requesting a lock and already have one; avoids deadlock).
				 */
				if (!current_is_member)
					FUNC62(relation, &(tp.t_self), LockTupleExclusive,
										 LockWaitBlock, &have_tuple_lock);

				/* wait for multixact */
				FUNC33((MultiXactId) xwait, MultiXactStatusUpdate, infomask,
								relation, &(tp.t_self), XLTW_Delete,
								NULL);
				FUNC30(buffer, BUFFER_LOCK_EXCLUSIVE);

				/*
				 * If xwait had just locked the tuple then some other xact
				 * could update this tuple before we get to this point.  Check
				 * for xmax change, and start over if so.
				 */
				if (FUNC69(tp.t_data->t_infomask, infomask) ||
					!FUNC46(FUNC14(tp.t_data),
										 xwait))
					goto l1;
			}

			/*
			 * You might think the multixact is necessarily done here, but not
			 * so: it could have surviving members, namely our own xact or
			 * other subxacts of this backend.  It is legal for us to delete
			 * the tuple in either case, however (the latter case is
			 * essentially a situation of upgrading our former shared lock to
			 * exclusive).  We don't bother changing the on-disk hint bits
			 * since we are about to overwrite the xmax altogether.
			 */
		}
		else if (!FUNC47(xwait))
		{
			/*
			 * Wait for regular transaction to end; but first, acquire tuple
			 * lock.
			 */
			FUNC30(buffer, BUFFER_LOCK_UNLOCK);
			FUNC62(relation, &(tp.t_self), LockTupleExclusive,
								 LockWaitBlock, &have_tuple_lock);
			FUNC56(xwait, relation, &(tp.t_self), XLTW_Delete);
			FUNC30(buffer, BUFFER_LOCK_EXCLUSIVE);

			/*
			 * xwait is done, but if xwait had just locked the tuple then some
			 * other xact could update this tuple before we get to this point.
			 * Check for xmax change, and start over if so.
			 */
			if (FUNC69(tp.t_data->t_infomask, infomask) ||
				!FUNC46(FUNC14(tp.t_data),
									 xwait))
				goto l1;

			/* Otherwise check if it committed or aborted */
			FUNC50(tp.t_data, buffer, xwait);
		}

		/*
		 * We may overwrite if previous xmax aborted, or if it committed but
		 * only locked the tuple without updating it.
		 */
		if ((tp.t_data->t_infomask & HEAP_XMAX_INVALID) ||
			FUNC9(tp.t_data->t_infomask) ||
			FUNC17(tp.t_data))
			result = TM_Ok;
		else if (!FUNC26(&tp.t_self, &tp.t_data->t_ctid) ||
				 FUNC16(tp.t_data))
			result = TM_Updated;
		else
			result = TM_Deleted;
	}

	if (crosscheck != InvalidSnapshot && result == TM_Ok)
	{
		/* Perform additional check for transaction-snapshot mode RI updates */
		if (!FUNC22(&tp, crosscheck, buffer))
			result = TM_Updated;
	}

	if (result != TM_Ok)
	{
		FUNC0(result == TM_SelfModified ||
			   result == TM_Updated ||
			   result == TM_Deleted ||
			   result == TM_BeingModified);
		FUNC0(!(tp.t_data->t_infomask & HEAP_XMAX_INVALID));
		FUNC0(result != TM_Updated ||
			   !FUNC26(&tp.t_self, &tp.t_data->t_ctid));
		tmfd->ctid = tp.t_data->t_ctid;
		tmfd->xmax = FUNC15(tp.t_data);
		if (result == TM_SelfModified)
			tmfd->cmax = FUNC13(tp.t_data);
		else
			tmfd->cmax = InvalidCommandId;
		FUNC48(buffer);
		if (have_tuple_lock)
			FUNC49(relation, &(tp.t_self), LockTupleExclusive);
		if (vmbuffer != InvalidBuffer)
			FUNC44(vmbuffer);
		return result;
	}

	/*
	 * We're about to do the actual delete -- check for conflict first, to
	 * avoid possibly having to roll back work we've just done.
	 *
	 * This is safe without a recheck as long as there is no possibility of
	 * another process scanning the page between this check and the delete
	 * being visible to the scan (i.e., an exclusive buffer content lock is
	 * continuously held from this point until the tuple delete is visible).
	 */
	FUNC4(relation, &tp, buffer);

	/* replace cid with a combo cid if necessary */
	FUNC11(tp.t_data, &cid, &iscombo);

	/*
	 * Compute replica identity tuple before entering the critical section so
	 * we don't PANIC upon a memory allocation failure.
	 */
	old_key_tuple = FUNC7(relation, &tp, true, &old_key_copied);

	/*
	 * If this is the first possibly-multixact-able operation in the current
	 * transaction, set my per-backend OldestMemberMXactId setting. We can be
	 * certain that the transaction will never become a member of any older
	 * MultiXactIds than that.  (We have to do this even if we end up just
	 * using our own TransactionId below, since some other backend could
	 * incorporate our XID into a MultiXact immediately afterwards.)
	 */
	FUNC32();

	FUNC58(FUNC14(tp.t_data),
							  tp.t_data->t_infomask, tp.t_data->t_infomask2,
							  xid, LockTupleExclusive, true,
							  &new_xmax, &new_infomask, &new_infomask2);

	FUNC45();

	/*
	 * If this transaction commits, the tuple will become DEAD sooner or
	 * later.  Set flag that this page is a candidate for pruning once our xid
	 * falls below the OldestXmin horizon.  If the transaction finally aborts,
	 * the subsequent page pruning will be a no-op and the hint will be
	 * cleared.
	 */
	FUNC39(page, xid);

	if (FUNC37(page))
	{
		all_visible_cleared = true;
		FUNC34(page);
		FUNC67(relation, FUNC1(buffer),
							vmbuffer, VISIBILITYMAP_VALID_BITS);
	}

	/* store transaction information of xact deleting the tuple */
	tp.t_data->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
	tp.t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;
	tp.t_data->t_infomask |= new_infomask;
	tp.t_data->t_infomask2 |= new_infomask2;
	FUNC12(tp.t_data);
	FUNC20(tp.t_data, new_xmax);
	FUNC18(tp.t_data, cid, iscombo);
	/* Make sure there is no forward chain link in t_ctid */
	tp.t_data->t_ctid = tp.t_self;

	/* Signal that this is actually a move into another partition */
	if (changingPart)
		FUNC19(tp.t_data);

	FUNC31(buffer);

	/*
	 * XLOG stuff
	 *
	 * NB: heap_abort_speculative() uses the same xlog record and replay
	 * routines.
	 */
	if (FUNC43(relation))
	{
		xl_heap_delete xlrec;
		xl_heap_header xlhdr;
		XLogRecPtr	recptr;

		/* For logical decode we need combocids to properly decode the catalog */
		if (FUNC42(relation))
			FUNC65(relation, &tp);

		xlrec.flags = 0;
		if (all_visible_cleared)
			xlrec.flags |= XLH_DELETE_ALL_VISIBLE_CLEARED;
		if (changingPart)
			xlrec.flags |= XLH_DELETE_IS_PARTITION_MOVE;
		xlrec.infobits_set = FUNC57(tp.t_data->t_infomask,
											  tp.t_data->t_infomask2);
		xlrec.offnum = FUNC28(&tp.t_self);
		xlrec.xmax = new_xmax;

		if (old_key_tuple != NULL)
		{
			if (relation->rd_rel->relreplident == REPLICA_IDENTITY_FULL)
				xlrec.flags |= XLH_DELETE_CONTAINS_OLD_TUPLE;
			else
				xlrec.flags |= XLH_DELETE_CONTAINS_OLD_KEY;
		}

		FUNC51();
		FUNC54((char *) &xlrec, SizeOfHeapDelete);

		FUNC53(0, buffer, REGBUF_STANDARD);

		/*
		 * Log replica identity of the deleted tuple if there is one
		 */
		if (old_key_tuple != NULL)
		{
			xlhdr.t_infomask2 = old_key_tuple->t_data->t_infomask2;
			xlhdr.t_infomask = old_key_tuple->t_data->t_infomask;
			xlhdr.t_hoff = old_key_tuple->t_data->t_hoff;

			FUNC54((char *) &xlhdr, SizeOfHeapHeader);
			FUNC54((char *) old_key_tuple->t_data
							 + SizeofHeapTupleHeader,
							 old_key_tuple->t_len
							 - SizeofHeapTupleHeader);
		}

		/* filtering by origin on a row level is much more efficient */
		FUNC55(XLOG_INCLUDE_ORIGIN);

		recptr = FUNC52(RM_HEAP_ID, XLOG_HEAP_DELETE);

		FUNC38(page, recptr);
	}

	FUNC6();

	FUNC30(buffer, BUFFER_LOCK_UNLOCK);

	if (vmbuffer != InvalidBuffer)
		FUNC44(vmbuffer);

	/*
	 * If the tuple has toasted out-of-line attributes, we need to delete
	 * those items too.  We have to do this before releasing the buffer
	 * because we need to look at the contents of the tuple, but it's OK to
	 * release the content lock on the buffer first.
	 */
	if (relation->rd_rel->relkind != RELKIND_RELATION &&
		relation->rd_rel->relkind != RELKIND_MATVIEW)
	{
		/* toast table entries should never be recursively toasted */
		FUNC0(!FUNC10(&tp));
	}
	else if (FUNC10(&tp))
		FUNC64(relation, &tp, false);

	/*
	 * Mark tuple for invalidation from system caches at next command
	 * boundary. We have to do this before releasing the buffer because we
	 * need to look at the contents of the tuple.
	 */
	FUNC3(relation, &tp, NULL);

	/* Now we can release the buffer */
	FUNC44(buffer);

	/*
	 * Release the lmgr tuple lock, if we had it.
	 */
	if (have_tuple_lock)
		FUNC49(relation, &(tp.t_self), LockTupleExclusive);

	FUNC66(relation);

	if (old_key_tuple != NULL && old_key_copied)
		FUNC63(old_key_tuple);

	return TM_Ok;
}