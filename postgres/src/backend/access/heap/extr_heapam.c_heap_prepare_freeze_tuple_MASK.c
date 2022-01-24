#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int t_infomask2; int t_infomask; int /*<<< orphan*/  frzflags; void* xmax; } ;
typedef  TYPE_1__ xl_heap_freeze_tuple ;
typedef  int uint16 ;
typedef  void* TransactionId ;
struct TYPE_9__ {int t_infomask2; int t_infomask; } ;
typedef  TYPE_2__* HeapTupleHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int FRM_INVALIDATE_XMAX ; 
 int FRM_MARK_COMMITTED ; 
 int FRM_RETURN_IS_MULTI ; 
 int FRM_RETURN_IS_XID ; 
 void* FUNC1 (void*,int,void*,void*,void*,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int*,int*) ; 
 int HEAP_HOT_UPDATED ; 
 int HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_MOVED_OFF ; 
 int HEAP_XMAX_BITS ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int HEAP_XMIN_COMMITTED ; 
 int HEAP_XMIN_FROZEN ; 
 int HEAP_XMIN_INVALID ; 
 void* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*) ; 
 void* InvalidTransactionId ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*,void*) ; 
 int /*<<< orphan*/  XLH_FREEZE_XVAC ; 
 int /*<<< orphan*/  XLH_INVALID_XVAC ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,...) ; 

bool
FUNC14(HeapTupleHeader tuple,
						  TransactionId relfrozenxid, TransactionId relminmxid,
						  TransactionId cutoff_xid, TransactionId cutoff_multi,
						  xl_heap_freeze_tuple *frz, bool *totally_frozen_p)
{
	bool		changed = false;
	bool		xmax_already_frozen = false;
	bool		xmin_frozen;
	bool		freeze_xmax;
	TransactionId xid;

	frz->frzflags = 0;
	frz->t_infomask2 = tuple->t_infomask2;
	frz->t_infomask = tuple->t_infomask;
	frz->xmax = FUNC4(tuple);

	/*
	 * Process xmin.  xmin_frozen has two slightly different meanings: in the
	 * !XidIsNormal case, it means "the xmin doesn't need any freezing" (it's
	 * already a permanent value), while in the block below it is set true to
	 * mean "xmin won't need freezing after what we do to it here" (false
	 * otherwise).  In both cases we're allowed to set totally_frozen, as far
	 * as xmin is concerned.
	 */
	xid = FUNC5(tuple);
	if (!FUNC8(xid))
		xmin_frozen = true;
	else
	{
		if (FUNC10(xid, relfrozenxid))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATA_CORRUPTED),
					 FUNC13("found xmin %u from before relfrozenxid %u",
									 xid, relfrozenxid)));

		xmin_frozen = FUNC10(xid, cutoff_xid);
		if (xmin_frozen)
		{
			if (!FUNC7(xid))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_DATA_CORRUPTED),
						 FUNC13("uncommitted xmin %u from before xid cutoff %u needs to be frozen",
										 xid, cutoff_xid)));

			frz->t_infomask |= HEAP_XMIN_FROZEN;
			changed = true;
		}
	}

	/*
	 * Process xmax.  To thoroughly examine the current Xmax value we need to
	 * resolve a MultiXactId to its member Xids, in case some of them are
	 * below the given cutoff for Xids.  In that case, those values might need
	 * freezing, too.  Also, if a multi needs freezing, we cannot simply take
	 * it out --- if there's a live updater Xid, it needs to be kept.
	 *
	 * Make sure to keep heap_tuple_needs_freeze in sync with this.
	 */
	xid = FUNC4(tuple);

	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		TransactionId newxmax;
		uint16		flags;

		newxmax = FUNC1(xid, tuple->t_infomask,
									relfrozenxid, relminmxid,
									cutoff_xid, cutoff_multi, &flags);

		freeze_xmax = (flags & FRM_INVALIDATE_XMAX);

		if (flags & FRM_RETURN_IS_XID)
		{
			/*
			 * NB -- some of these transformations are only valid because we
			 * know the return Xid is a tuple updater (i.e. not merely a
			 * locker.) Also note that the only reason we don't explicitly
			 * worry about HEAP_KEYS_UPDATED is because it lives in
			 * t_infomask2 rather than t_infomask.
			 */
			frz->t_infomask &= ~HEAP_XMAX_BITS;
			frz->xmax = newxmax;
			if (flags & FRM_MARK_COMMITTED)
				frz->t_infomask |= HEAP_XMAX_COMMITTED;
			changed = true;
		}
		else if (flags & FRM_RETURN_IS_MULTI)
		{
			uint16		newbits;
			uint16		newbits2;

			/*
			 * We can't use GetMultiXactIdHintBits directly on the new multi
			 * here; that routine initializes the masks to all zeroes, which
			 * would lose other bits we need.  Doing it this way ensures all
			 * unrelated bits remain untouched.
			 */
			frz->t_infomask &= ~HEAP_XMAX_BITS;
			frz->t_infomask2 &= ~HEAP_KEYS_UPDATED;
			FUNC2(newxmax, &newbits, &newbits2);
			frz->t_infomask |= newbits;
			frz->t_infomask2 |= newbits2;

			frz->xmax = newxmax;

			changed = true;
		}
	}
	else if (FUNC8(xid))
	{
		if (FUNC10(xid, relfrozenxid))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATA_CORRUPTED),
					 FUNC13("found xmax %u from before relfrozenxid %u",
									 xid, relfrozenxid)));

		if (FUNC10(xid, cutoff_xid))
		{
			/*
			 * If we freeze xmax, make absolutely sure that it's not an XID
			 * that is important.  (Note, a lock-only xmax can be removed
			 * independent of committedness, since a committed lock holder has
			 * released the lock).
			 */
			if (!FUNC3(tuple->t_infomask) &&
				FUNC7(xid))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_DATA_CORRUPTED),
						 FUNC13("cannot freeze committed xmax %u",
										 xid)));
			freeze_xmax = true;
		}
		else
			freeze_xmax = false;
	}
	else if ((tuple->t_infomask & HEAP_XMAX_INVALID) ||
			 !FUNC9(FUNC4(tuple)))
	{
		freeze_xmax = false;
		xmax_already_frozen = true;
	}
	else
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DATA_CORRUPTED),
				 FUNC13("found xmax %u (infomask 0x%04x) not frozen, not multi, not normal",
								 xid, tuple->t_infomask)));

	if (freeze_xmax)
	{
		FUNC0(!xmax_already_frozen);

		frz->xmax = InvalidTransactionId;

		/*
		 * The tuple might be marked either XMAX_INVALID or XMAX_COMMITTED +
		 * LOCKED.  Normalize to INVALID just to be sure no one gets confused.
		 * Also get rid of the HEAP_KEYS_UPDATED bit.
		 */
		frz->t_infomask &= ~HEAP_XMAX_BITS;
		frz->t_infomask |= HEAP_XMAX_INVALID;
		frz->t_infomask2 &= ~HEAP_HOT_UPDATED;
		frz->t_infomask2 &= ~HEAP_KEYS_UPDATED;
		changed = true;
	}

	/*
	 * Old-style VACUUM FULL is gone, but we have to keep this code as long as
	 * we support having MOVED_OFF/MOVED_IN tuples in the database.
	 */
	if (tuple->t_infomask & HEAP_MOVED)
	{
		xid = FUNC6(tuple);

		/*
		 * For Xvac, we ignore the cutoff_xid and just always perform the
		 * freeze operation.  The oldest release in which such a value can
		 * actually be set is PostgreSQL 8.4, because old-style VACUUM FULL
		 * was removed in PostgreSQL 9.0.  Note that if we were to respect
		 * cutoff_xid here, we'd need to make surely to clear totally_frozen
		 * when we skipped freezing on that basis.
		 */
		if (FUNC8(xid))
		{
			/*
			 * If a MOVED_OFF tuple is not dead, the xvac transaction must
			 * have failed; whereas a non-dead MOVED_IN tuple must mean the
			 * xvac transaction succeeded.
			 */
			if (tuple->t_infomask & HEAP_MOVED_OFF)
				frz->frzflags |= XLH_INVALID_XVAC;
			else
				frz->frzflags |= XLH_FREEZE_XVAC;

			/*
			 * Might as well fix the hint bits too; usually XMIN_COMMITTED
			 * will already be set here, but there's a small chance not.
			 */
			FUNC0(!(tuple->t_infomask & HEAP_XMIN_INVALID));
			frz->t_infomask |= HEAP_XMIN_COMMITTED;
			changed = true;
		}
	}

	*totally_frozen_p = (xmin_frozen &&
						 (freeze_xmax || xmax_already_frozen));
	return changed;
}