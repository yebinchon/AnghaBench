#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_15__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_14__ {int t_infomask; int /*<<< orphan*/  t_ctid; } ;
typedef  int /*<<< orphan*/  TM_Result ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  scalar_t__ CommandId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int HEAP_MOVED_IN ; 
 int HEAP_MOVED_OFF ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC2 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int HEAP_XMIN_COMMITTED ; 
 int HEAP_XMIN_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TM_BeingModified ; 
 int /*<<< orphan*/  TM_Deleted ; 
 int /*<<< orphan*/  TM_Invisible ; 
 int /*<<< orphan*/  TM_Ok ; 
 int /*<<< orphan*/  TM_SelfModified ; 
 int /*<<< orphan*/  TM_Updated ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

TM_Result
FUNC20(HeapTuple htup, CommandId curcid,
						 Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC13(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	if (!FUNC10(tuple))
	{
		if (FUNC11(tuple))
			return TM_Invisible;

		/* Used by pre-9.0 binary upgrades */
		if (tuple->t_infomask & HEAP_MOVED_OFF)
		{
			TransactionId xvac = FUNC8(tuple);

			if (FUNC17(xvac))
				return TM_Invisible;
			if (!FUNC18(xvac))
			{
				if (FUNC16(xvac))
				{
					FUNC15(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return TM_Invisible;
				}
				FUNC15(tuple, buffer, HEAP_XMIN_COMMITTED,
							InvalidTransactionId);
			}
		}
		/* Used by pre-9.0 binary upgrades */
		else if (tuple->t_infomask & HEAP_MOVED_IN)
		{
			TransactionId xvac = FUNC8(tuple);

			if (!FUNC17(xvac))
			{
				if (FUNC18(xvac))
					return TM_Invisible;
				if (FUNC16(xvac))
					FUNC15(tuple, buffer, HEAP_XMIN_COMMITTED,
								InvalidTransactionId);
				else
				{
					FUNC15(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return TM_Invisible;
				}
			}
		}
		else if (FUNC17(FUNC7(tuple)))
		{
			if (FUNC5(tuple) >= curcid)
				return TM_Invisible;	/* inserted after scan started */

			if (tuple->t_infomask & HEAP_XMAX_INVALID)	/* xid invalid */
				return TM_Ok;

			if (FUNC2(tuple->t_infomask))
			{
				TransactionId xmax;

				xmax = FUNC6(tuple);

				/*
				 * Careful here: even though this tuple was created by our own
				 * transaction, it might be locked by other transactions, if
				 * the original version was key-share locked when we updated
				 * it.
				 */

				if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
				{
					if (FUNC14(xmax, true))
						return TM_BeingModified;
					else
						return TM_Ok;
				}

				/*
				 * If the locker is gone, then there is nothing of interest
				 * left in this Xmax; otherwise, report the tuple as
				 * locked/updated.
				 */
				if (!FUNC18(xmax))
					return TM_Ok;
				return TM_BeingModified;
			}

			if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
			{
				TransactionId xmax;

				xmax = FUNC3(tuple);

				/* not LOCKED_ONLY, so it has to have an xmax */
				FUNC0(FUNC19(xmax));

				/* deleting subtransaction must have aborted */
				if (!FUNC17(xmax))
				{
					if (FUNC14(FUNC6(tuple),
											 false))
						return TM_BeingModified;
					return TM_Ok;
				}
				else
				{
					if (FUNC4(tuple) >= curcid)
						return TM_SelfModified; /* updated after scan started */
					else
						return TM_Invisible;	/* updated before scan started */
				}
			}

			if (!FUNC17(FUNC6(tuple)))
			{
				/* deleting subtransaction must have aborted */
				FUNC15(tuple, buffer, HEAP_XMAX_INVALID,
							InvalidTransactionId);
				return TM_Ok;
			}

			if (FUNC4(tuple) >= curcid)
				return TM_SelfModified; /* updated after scan started */
			else
				return TM_Invisible;	/* updated before scan started */
		}
		else if (FUNC18(FUNC7(tuple)))
			return TM_Invisible;
		else if (FUNC16(FUNC7(tuple)))
			FUNC15(tuple, buffer, HEAP_XMIN_COMMITTED,
						FUNC7(tuple));
		else
		{
			/* it must have aborted or crashed */
			FUNC15(tuple, buffer, HEAP_XMIN_INVALID,
						InvalidTransactionId);
			return TM_Invisible;
		}
	}

	/* by here, the inserting transaction has committed */

	if (tuple->t_infomask & HEAP_XMAX_INVALID)	/* xid invalid or aborted */
		return TM_Ok;

	if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
	{
		if (FUNC2(tuple->t_infomask))
			return TM_Ok;
		if (!FUNC12(&htup->t_self, &tuple->t_ctid) ||
			FUNC9(tuple))
			return TM_Updated;	/* updated by other */
		else
			return TM_Deleted;	/* deleted by other */
	}

	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		TransactionId xmax;

		if (FUNC1(tuple->t_infomask))
			return TM_Ok;

		if (FUNC2(tuple->t_infomask))
		{
			if (FUNC14(FUNC6(tuple), true))
				return TM_BeingModified;

			FUNC15(tuple, buffer, HEAP_XMAX_INVALID, InvalidTransactionId);
			return TM_Ok;
		}

		xmax = FUNC3(tuple);
		if (!FUNC19(xmax))
		{
			if (FUNC14(FUNC6(tuple), false))
				return TM_BeingModified;
		}

		/* not LOCKED_ONLY, so it has to have an xmax */
		FUNC0(FUNC19(xmax));

		if (FUNC17(xmax))
		{
			if (FUNC4(tuple) >= curcid)
				return TM_SelfModified; /* updated after scan started */
			else
				return TM_Invisible;	/* updated before scan started */
		}

		if (FUNC14(FUNC6(tuple), false))
			return TM_BeingModified;

		if (FUNC16(xmax))
		{
			if (!FUNC12(&htup->t_self, &tuple->t_ctid) ||
				FUNC9(tuple))
				return TM_Updated;
			else
				return TM_Deleted;
		}

		/*
		 * By here, the update in the Xmax is either aborted or crashed, but
		 * what about the other members?
		 */

		if (!FUNC14(FUNC6(tuple), false))
		{
			/*
			 * There's no member, even just a locker, alive anymore, so we can
			 * mark the Xmax as invalid.
			 */
			FUNC15(tuple, buffer, HEAP_XMAX_INVALID,
						InvalidTransactionId);
			return TM_Ok;
		}
		else
		{
			/* There are lockers running */
			return TM_BeingModified;
		}
	}

	if (FUNC17(FUNC6(tuple)))
	{
		if (FUNC2(tuple->t_infomask))
			return TM_BeingModified;
		if (FUNC4(tuple) >= curcid)
			return TM_SelfModified; /* updated after scan started */
		else
			return TM_Invisible;	/* updated before scan started */
	}

	if (FUNC18(FUNC6(tuple)))
		return TM_BeingModified;

	if (!FUNC16(FUNC6(tuple)))
	{
		/* it must have aborted or crashed */
		FUNC15(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return TM_Ok;
	}

	/* xmax transaction committed */

	if (FUNC2(tuple->t_infomask))
	{
		FUNC15(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return TM_Ok;
	}

	FUNC15(tuple, buffer, HEAP_XMAX_COMMITTED,
				FUNC6(tuple));
	if (!FUNC12(&htup->t_self, &tuple->t_ctid) ||
		FUNC9(tuple))
		return TM_Updated;		/* updated by other */
	else
		return TM_Deleted;		/* deleted by other */
}