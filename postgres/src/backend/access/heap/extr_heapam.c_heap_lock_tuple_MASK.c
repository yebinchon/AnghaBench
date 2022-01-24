#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  infobits_set; scalar_t__ locking_xid; int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_heap_lock ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  scalar_t__ TransactionId ;
struct TYPE_24__ {TYPE_4__* t_data; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; } ;
struct TYPE_23__ {int t_infomask; int t_infomask2; int /*<<< orphan*/  t_ctid; } ;
struct TYPE_22__ {int /*<<< orphan*/  status; scalar_t__ xid; } ;
struct TYPE_21__ {int /*<<< orphan*/  cmax; int /*<<< orphan*/  xmax; int /*<<< orphan*/  ctid; } ;
typedef  scalar_t__ TM_Result ;
typedef  TYPE_2__ TM_FailureData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ MultiXactStatus ;
typedef  TYPE_3__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  LockWaitPolicy ;
typedef  int const LockTupleMode ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_4__* HeapTupleHeader ;
typedef  TYPE_5__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ERRCODE_LOCK_NOT_AVAILABLE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (scalar_t__,TYPE_3__**,int,int) ; 
 int HEAP_KEYS_UPDATED ; 
 int HEAP_XMAX_BITS ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC20 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  InvalidCommandId ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  LockTupleExclusive 134 
#define  LockTupleKeyShare 133 
#define  LockTupleNoKeyExclusive 132 
#define  LockTupleShare 131 
#define  LockWaitBlock 130 
#define  LockWaitError 129 
#define  LockWaitSkip 128 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MultiXactStatusNoKeyUpdate ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  SizeOfHeapLock ; 
 scalar_t__ TM_BeingModified ; 
 scalar_t__ TM_Deleted ; 
 scalar_t__ TM_Invisible ; 
 scalar_t__ TM_Ok ; 
 scalar_t__ TM_SelfModified ; 
 scalar_t__ TM_Updated ; 
 scalar_t__ TM_WouldBlock ; 
 int const FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC43 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  VISIBILITYMAP_ALL_FROZEN ; 
 int /*<<< orphan*/  XLH_LOCK_ALL_FROZEN_CLEARED ; 
 int /*<<< orphan*/  XLOG_HEAP_LOCK ; 
 int /*<<< orphan*/  XLTW_Lock ; 
 int /*<<< orphan*/  FUNC46 () ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int,int) ; 
 int /*<<< orphan*/  FUNC52 (scalar_t__,int,int,int /*<<< orphan*/ ,int const,int,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC57 (int const,int) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC59 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC60 (TYPE_3__*) ; 
 scalar_t__ FUNC61 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC63 (int,int) ; 

TM_Result
FUNC64(Relation relation, HeapTuple tuple,
				CommandId cid, LockTupleMode mode, LockWaitPolicy wait_policy,
				bool follow_updates,
				Buffer *buffer, TM_FailureData *tmfd)
{
	TM_Result	result;
	ItemPointer tid = &(tuple->t_self);
	ItemId		lp;
	Page		page;
	Buffer		vmbuffer = InvalidBuffer;
	BlockNumber block;
	TransactionId xid,
				xmax;
	uint16		old_infomask,
				new_infomask,
				new_infomask2;
	bool		first_time = true;
	bool		skip_tuple_lock = false;
	bool		have_tuple_lock = false;
	bool		cleared_all_frozen = false;

	*buffer = FUNC35(relation, FUNC25(tid));
	block = FUNC25(tid);

	/*
	 * Before locking the buffer, pin the visibility map page if it appears to
	 * be necessary.  Since we haven't got the lock yet, someone else might be
	 * in the middle of changing this, so we'll need to recheck after we have
	 * the lock.
	 */
	if (FUNC33(FUNC1(*buffer)))
		FUNC62(relation, block, &vmbuffer);

	FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);

	page = FUNC1(*buffer);
	lp = FUNC32(page, FUNC26(tid));
	FUNC0(FUNC22(lp));

	tuple->t_data = (HeapTupleHeader) FUNC31(page, lp);
	tuple->t_len = FUNC21(lp);
	tuple->t_tableOid = FUNC37(relation);

l3:
	result = FUNC20(tuple, cid, *buffer);

	if (result == TM_Invisible)
	{
		/*
		 * This is possible, but only when locking a tuple for ON CONFLICT
		 * UPDATE.  We return this value here rather than throwing an error in
		 * order to give that case the opportunity to throw a more specific
		 * error.
		 */
		result = TM_Invisible;
		goto out_locked;
	}
	else if (result == TM_BeingModified ||
			 result == TM_Updated ||
			 result == TM_Deleted)
	{
		TransactionId xwait;
		uint16		infomask;
		uint16		infomask2;
		bool		require_sleep;
		ItemPointerData t_ctid;

		/* must copy state data before unlocking buffer */
		xwait = FUNC15(tuple->t_data);
		infomask = tuple->t_data->t_infomask;
		infomask2 = tuple->t_data->t_infomask2;
		FUNC23(&tuple->t_data->t_ctid, &t_ctid);

		FUNC27(*buffer, BUFFER_LOCK_UNLOCK);

		/*
		 * If any subtransaction of the current top transaction already holds
		 * a lock as strong as or stronger than what we're requesting, we
		 * effectively hold the desired lock already.  We *must* succeed
		 * without trying to take the tuple lock, else we will deadlock
		 * against anyone wanting to acquire a stronger lock.
		 *
		 * Note we only do this the first time we loop on the HTSU result;
		 * there is no point in testing in subsequent passes, because
		 * evidently our own transaction cannot have acquired a new lock after
		 * the first time we checked.
		 */
		if (first_time)
		{
			first_time = false;

			if (infomask & HEAP_XMAX_IS_MULTI)
			{
				int			i;
				int			nmembers;
				MultiXactMember *members;

				/*
				 * We don't need to allow old multixacts here; if that had
				 * been the case, HeapTupleSatisfiesUpdate would have returned
				 * MayBeUpdated and we wouldn't be here.
				 */
				nmembers =
					FUNC8(xwait, &members, false,
										  FUNC11(infomask));

				for (i = 0; i < nmembers; i++)
				{
					/* only consider members of our own transaction */
					if (!FUNC43(members[i].xid))
						continue;

					if (FUNC41(members[i].status) >= mode)
					{
						FUNC60(members);
						result = TM_Ok;
						goto out_unlocked;
					}
					else
					{
						/*
						 * Disable acquisition of the heavyweight tuple lock.
						 * Otherwise, when promoting a weaker lock, we might
						 * deadlock with another locker that has acquired the
						 * heavyweight tuple lock and is waiting for our
						 * transaction to finish.
						 *
						 * Note that in this case we still need to wait for
						 * the multixact if required, to avoid acquiring
						 * conflicting locks.
						 */
						skip_tuple_lock = true;
					}
				}

				if (members)
					FUNC60(members);
			}
			else if (FUNC43(xwait))
			{
				switch (mode)
				{
					case LockTupleKeyShare:
						FUNC0(FUNC10(infomask) ||
							   FUNC12(infomask) ||
							   FUNC9(infomask));
						result = TM_Ok;
						goto out_unlocked;
					case LockTupleShare:
						if (FUNC12(infomask) ||
							FUNC9(infomask))
						{
							result = TM_Ok;
							goto out_unlocked;
						}
						break;
					case LockTupleNoKeyExclusive:
						if (FUNC9(infomask))
						{
							result = TM_Ok;
							goto out_unlocked;
						}
						break;
					case LockTupleExclusive:
						if (FUNC9(infomask) &&
							infomask2 & HEAP_KEYS_UPDATED)
						{
							result = TM_Ok;
							goto out_unlocked;
						}
						break;
				}
			}
		}

		/*
		 * Initially assume that we will have to wait for the locking
		 * transaction(s) to finish.  We check various cases below in which
		 * this can be turned off.
		 */
		require_sleep = true;
		if (mode == LockTupleKeyShare)
		{
			/*
			 * If we're requesting KeyShare, and there's no update present, we
			 * don't need to wait.  Even if there is an update, we can still
			 * continue if the key hasn't been modified.
			 *
			 * However, if there are updates, we need to walk the update chain
			 * to mark future versions of the row as locked, too.  That way,
			 * if somebody deletes that future version, we're protected
			 * against the key going away.  This locking of future versions
			 * could block momentarily, if a concurrent transaction is
			 * deleting a key; or it could return a value to the effect that
			 * the transaction deleting the key has already committed.  So we
			 * do this before re-locking the buffer; otherwise this would be
			 * prone to deadlocks.
			 *
			 * Note that the TID we're locking was grabbed before we unlocked
			 * the buffer.  For it to change while we're not looking, the
			 * other properties we're testing for below after re-locking the
			 * buffer would also change, in which case we would restart this
			 * loop above.
			 */
			if (!(infomask2 & HEAP_KEYS_UPDATED))
			{
				bool		updated;

				updated = !FUNC11(infomask);

				/*
				 * If there are updates, follow the update chain; bail out if
				 * that cannot be done.
				 */
				if (follow_updates && updated)
				{
					TM_Result	res;

					res = FUNC59(relation, tuple, &t_ctid,
												  FUNC7(),
												  mode);
					if (res != TM_Ok)
					{
						result = res;
						/* recovery code expects to have buffer lock held */
						FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
						goto failed;
					}
				}

				FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);

				/*
				 * Make sure it's still an appropriate lock, else start over.
				 * Also, if it wasn't updated before we released the lock, but
				 * is updated now, we start over too; the reason is that we
				 * now need to follow the update chain to lock the new
				 * versions.
				 */
				if (!FUNC18(tuple->t_data) &&
					((tuple->t_data->t_infomask2 & HEAP_KEYS_UPDATED) ||
					 !updated))
					goto l3;

				/* Things look okay, so we can skip sleeping */
				require_sleep = false;

				/*
				 * Note we allow Xmax to change here; other updaters/lockers
				 * could have modified it before we grabbed the buffer lock.
				 * However, this is not a problem, because with the recheck we
				 * just did we ensure that they still don't conflict with the
				 * lock we want.
				 */
			}
		}
		else if (mode == LockTupleShare)
		{
			/*
			 * If we're requesting Share, we can similarly avoid sleeping if
			 * there's no update and no exclusive lock present.
			 */
			if (FUNC11(infomask) &&
				!FUNC9(infomask))
			{
				FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);

				/*
				 * Make sure it's still an appropriate lock, else start over.
				 * See above about allowing xmax to change.
				 */
				if (!FUNC11(tuple->t_data->t_infomask) ||
					FUNC9(tuple->t_data->t_infomask))
					goto l3;
				require_sleep = false;
			}
		}
		else if (mode == LockTupleNoKeyExclusive)
		{
			/*
			 * If we're requesting NoKeyExclusive, we might also be able to
			 * avoid sleeping; just ensure that there no conflicting lock
			 * already acquired.
			 */
			if (infomask & HEAP_XMAX_IS_MULTI)
			{
				if (!FUNC5((MultiXactId) xwait, infomask,
											 mode, NULL))
				{
					/*
					 * No conflict, but if the xmax changed under us in the
					 * meantime, start over.
					 */
					FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
					if (FUNC63(tuple->t_data->t_infomask, infomask) ||
						!FUNC42(FUNC15(tuple->t_data),
											 xwait))
						goto l3;

					/* otherwise, we're good */
					require_sleep = false;
				}
			}
			else if (FUNC10(infomask))
			{
				FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);

				/* if the xmax changed in the meantime, start over */
				if (FUNC63(tuple->t_data->t_infomask, infomask) ||
					!FUNC42(
										 FUNC15(tuple->t_data),
										 xwait))
					goto l3;
				/* otherwise, we're good */
				require_sleep = false;
			}
		}

		/*
		 * As a check independent from those above, we can also avoid sleeping
		 * if the current transaction is the sole locker of the tuple.  Note
		 * that the strength of the lock already held is irrelevant; this is
		 * not about recording the lock in Xmax (which will be done regardless
		 * of this optimization, below).  Also, note that the cases where we
		 * hold a lock stronger than we are requesting are already handled
		 * above by not doing anything.
		 *
		 * Note we only deal with the non-multixact case here; MultiXactIdWait
		 * is well equipped to deal with this situation on its own.
		 */
		if (require_sleep && !(infomask & HEAP_XMAX_IS_MULTI) &&
			FUNC43(xwait))
		{
			/* ... but if the xmax changed in the meantime, start over */
			FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
			if (FUNC63(tuple->t_data->t_infomask, infomask) ||
				!FUNC42(FUNC15(tuple->t_data),
									 xwait))
				goto l3;
			FUNC0(FUNC11(tuple->t_data->t_infomask));
			require_sleep = false;
		}

		/*
		 * Time to sleep on the other transaction/multixact, if necessary.
		 *
		 * If the other transaction is an update/delete that's already
		 * committed, then sleeping cannot possibly do any good: if we're
		 * required to sleep, get out to raise an error instead.
		 *
		 * By here, we either have already acquired the buffer exclusive lock,
		 * or we must wait for the locking transaction or multixact; so below
		 * we ensure that we grab buffer lock after the sleep.
		 */
		if (require_sleep && (result == TM_Updated || result == TM_Deleted))
		{
			FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
			goto failed;
		}
		else if (require_sleep)
		{
			/*
			 * Acquire tuple lock to establish our priority for the tuple, or
			 * die trying.  LockTuple will release us when we are next-in-line
			 * for the tuple.  We must do this even if we are share-locking,
			 * but not if we already have a weaker lock on the tuple.
			 *
			 * If we are forced to "start over" below, we keep the tuple lock;
			 * this arranges that we stay at the head of the line while
			 * rechecking tuple state.
			 */
			if (!skip_tuple_lock &&
				!FUNC58(relation, tid, mode, wait_policy,
									  &have_tuple_lock))
			{
				/*
				 * This can only happen if wait_policy is Skip and the lock
				 * couldn't be obtained.
				 */
				result = TM_WouldBlock;
				/* recovery code expects to have buffer lock held */
				FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
				goto failed;
			}

			if (infomask & HEAP_XMAX_IS_MULTI)
			{
				MultiXactStatus status = FUNC57(mode, false);

				/* We only ever lock tuples, never update them */
				if (status >= MultiXactStatusNoKeyUpdate)
					FUNC53(ERROR, "invalid lock mode in heap_lock_tuple");

				/* wait for multixact to end, or die trying  */
				switch (wait_policy)
				{
					case LockWaitBlock:
						FUNC30((MultiXactId) xwait, status, infomask,
										relation, &tuple->t_self, XLTW_Lock, NULL);
						break;
					case LockWaitSkip:
						if (!FUNC3((MultiXactId) xwait,
														status, infomask, relation,
														NULL))
						{
							result = TM_WouldBlock;
							/* recovery code expects to have buffer lock held */
							FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
							goto failed;
						}
						break;
					case LockWaitError:
						if (!FUNC3((MultiXactId) xwait,
														status, infomask, relation,
														NULL))
							FUNC54(ERROR,
									(FUNC55(ERRCODE_LOCK_NOT_AVAILABLE),
									 FUNC56("could not obtain lock on row in relation \"%s\"",
											FUNC36(relation))));

						break;
				}

				/*
				 * Of course, the multixact might not be done here: if we're
				 * requesting a light lock mode, other transactions with light
				 * locks could still be alive, as well as locks owned by our
				 * own xact or other subxacts of this backend.  We need to
				 * preserve the surviving MultiXact members.  Note that it
				 * isn't absolutely necessary in the latter case, but doing so
				 * is simpler.
				 */
			}
			else
			{
				/* wait for regular transaction to end, or die trying */
				switch (wait_policy)
				{
					case LockWaitBlock:
						FUNC50(xwait, relation, &tuple->t_self,
										  XLTW_Lock);
						break;
					case LockWaitSkip:
						if (!FUNC4(xwait))
						{
							result = TM_WouldBlock;
							/* recovery code expects to have buffer lock held */
							FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
							goto failed;
						}
						break;
					case LockWaitError:
						if (!FUNC4(xwait))
							FUNC54(ERROR,
									(FUNC55(ERRCODE_LOCK_NOT_AVAILABLE),
									 FUNC56("could not obtain lock on row in relation \"%s\"",
											FUNC36(relation))));
						break;
				}
			}

			/* if there are updates, follow the update chain */
			if (follow_updates && !FUNC11(infomask))
			{
				TM_Result	res;

				res = FUNC59(relation, tuple, &t_ctid,
											  FUNC7(),
											  mode);
				if (res != TM_Ok)
				{
					result = res;
					/* recovery code expects to have buffer lock held */
					FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
					goto failed;
				}
			}

			FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);

			/*
			 * xwait is done, but if xwait had just locked the tuple then some
			 * other xact could update this tuple before we get to this point.
			 * Check for xmax change, and start over if so.
			 */
			if (FUNC63(tuple->t_data->t_infomask, infomask) ||
				!FUNC42(FUNC15(tuple->t_data),
									 xwait))
				goto l3;

			if (!(infomask & HEAP_XMAX_IS_MULTI))
			{
				/*
				 * Otherwise check if it committed or aborted.  Note we cannot
				 * be here if the tuple was only locked by somebody who didn't
				 * conflict with us; that would have been handled above.  So
				 * that transaction must necessarily be gone by now.  But
				 * don't check for this in the multixact case, because some
				 * locker transactions might still be running.
				 */
				FUNC45(tuple->t_data, *buffer, xwait);
			}
		}

		/* By here, we're certain that we hold buffer exclusive lock again */

		/*
		 * We may lock if previous xmax aborted, or if it committed but only
		 * locked the tuple without updating it; or if we didn't have to wait
		 * at all for whatever reason.
		 */
		if (!require_sleep ||
			(tuple->t_data->t_infomask & HEAP_XMAX_INVALID) ||
			FUNC11(tuple->t_data->t_infomask) ||
			FUNC18(tuple->t_data))
			result = TM_Ok;
		else if (!FUNC24(&tuple->t_self, &tuple->t_data->t_ctid) ||
				 FUNC17(tuple->t_data))
			result = TM_Updated;
		else
			result = TM_Deleted;
	}

failed:
	if (result != TM_Ok)
	{
		FUNC0(result == TM_SelfModified || result == TM_Updated ||
			   result == TM_Deleted || result == TM_WouldBlock);
		FUNC0(!(tuple->t_data->t_infomask & HEAP_XMAX_INVALID));
		FUNC0(result != TM_Updated ||
			   !FUNC24(&tuple->t_self, &tuple->t_data->t_ctid));
		tmfd->ctid = tuple->t_data->t_ctid;
		tmfd->xmax = FUNC16(tuple->t_data);
		if (result == TM_SelfModified)
			tmfd->cmax = FUNC14(tuple->t_data);
		else
			tmfd->cmax = InvalidCommandId;
		goto out_locked;
	}

	/*
	 * If we didn't pin the visibility map page and the page has become all
	 * visible while we were busy locking the buffer, or during some
	 * subsequent window during which we had it unlocked, we'll have to unlock
	 * and re-lock, to avoid holding the buffer lock across I/O.  That's a bit
	 * unfortunate, especially since we'll now have to recheck whether the
	 * tuple has been locked or updated under us, but hopefully it won't
	 * happen very often.
	 */
	if (vmbuffer == InvalidBuffer && FUNC33(page))
	{
		FUNC27(*buffer, BUFFER_LOCK_UNLOCK);
		FUNC62(relation, block, &vmbuffer);
		FUNC27(*buffer, BUFFER_LOCK_EXCLUSIVE);
		goto l3;
	}

	xmax = FUNC15(tuple->t_data);
	old_infomask = tuple->t_data->t_infomask;

	/*
	 * If this is the first possibly-multixact-able operation in the current
	 * transaction, set my per-backend OldestMemberMXactId setting. We can be
	 * certain that the transaction will never become a member of any older
	 * MultiXactIds than that.  (We have to do this even if we end up just
	 * using our own TransactionId below, since some other backend could
	 * incorporate our XID into a MultiXact immediately afterwards.)
	 */
	FUNC29();

	/*
	 * Compute the new xmax and infomask to store into the tuple.  Note we do
	 * not modify the tuple just yet, because that would leave it in the wrong
	 * state if multixact.c elogs.
	 */
	FUNC52(xmax, old_infomask, tuple->t_data->t_infomask2,
							  FUNC7(), mode, false,
							  &xid, &new_infomask, &new_infomask2);

	FUNC40();

	/*
	 * Store transaction information of xact locking the tuple.
	 *
	 * Note: Cmax is meaningless in this context, so don't set it; this avoids
	 * possibly generating a useless combo CID.  Moreover, if we're locking a
	 * previously updated tuple, it's important to preserve the Cmax.
	 *
	 * Also reset the HOT UPDATE bit, but only if there's no update; otherwise
	 * we would break the HOT chain.
	 */
	tuple->t_data->t_infomask &= ~HEAP_XMAX_BITS;
	tuple->t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;
	tuple->t_data->t_infomask |= new_infomask;
	tuple->t_data->t_infomask2 |= new_infomask2;
	if (FUNC11(new_infomask))
		FUNC13(tuple->t_data);
	FUNC19(tuple->t_data, xid);

	/*
	 * Make sure there is no forward chain link in t_ctid.  Note that in the
	 * cases where the tuple has been updated, we must not overwrite t_ctid,
	 * because it was set by the updater.  Moreover, if the tuple has been
	 * updated, we need to follow the update chain to lock the new versions of
	 * the tuple as well.
	 */
	if (FUNC11(new_infomask))
		tuple->t_data->t_ctid = *tid;

	/* Clear only the all-frozen bit on visibility map if needed */
	if (FUNC33(page) &&
		FUNC61(relation, block, vmbuffer,
							VISIBILITYMAP_ALL_FROZEN))
		cleared_all_frozen = true;


	FUNC28(*buffer);

	/*
	 * XLOG stuff.  You might think that we don't need an XLOG record because
	 * there is no state change worth restoring after a crash.  You would be
	 * wrong however: we have just written either a TransactionId or a
	 * MultiXactId that may never have been seen on disk before, and we need
	 * to make sure that there are XLOG entries covering those ID numbers.
	 * Else the same IDs might be re-used after a crash, which would be
	 * disastrous if this page made it to disk before the crash.  Essentially
	 * we have to enforce the WAL log-before-data rule even in this case.
	 * (Also, in a PITR log-shipping or 2PC environment, we have to have XLOG
	 * entries for everything anyway.)
	 */
	if (FUNC38(relation))
	{
		xl_heap_lock xlrec;
		XLogRecPtr	recptr;

		FUNC46();
		FUNC48(0, *buffer, REGBUF_STANDARD);

		xlrec.offnum = FUNC26(&tuple->t_self);
		xlrec.locking_xid = xid;
		xlrec.infobits_set = FUNC51(new_infomask,
											  tuple->t_data->t_infomask2);
		xlrec.flags = cleared_all_frozen ? XLH_LOCK_ALL_FROZEN_CLEARED : 0;
		FUNC49((char *) &xlrec, SizeOfHeapLock);

		/* we don't decode row locks atm, so no need to log the origin */

		recptr = FUNC47(RM_HEAP_ID, XLOG_HEAP_LOCK);

		FUNC34(page, recptr);
	}

	FUNC6();

	result = TM_Ok;

out_locked:
	FUNC27(*buffer, BUFFER_LOCK_UNLOCK);

out_unlocked:
	if (FUNC2(vmbuffer))
		FUNC39(vmbuffer);

	/*
	 * Don't update the visibility map here. Locking a tuple doesn't change
	 * visibility info.
	 */

	/*
	 * Now that we have successfully marked the tuple as locked, we can
	 * release the lmgr tuple lock, if we had it.
	 */
	if (have_tuple_lock)
		FUNC44(relation, tid, mode);

	return result;
}