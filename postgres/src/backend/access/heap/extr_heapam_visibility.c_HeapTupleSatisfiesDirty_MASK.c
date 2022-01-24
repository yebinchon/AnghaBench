#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_17__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_2__* t_data; } ;
struct TYPE_16__ {int t_infomask; } ;
struct TYPE_15__ {void* xmax; void* xmin; int /*<<< orphan*/  speculativeToken; } ;
typedef  TYPE_1__* Snapshot ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HEAP_MOVED_IN ; 
 int HEAP_MOVED_OFF ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC1 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int HEAP_XMIN_COMMITTED ; 
 int HEAP_XMIN_INVALID ; 
 void* FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 void* InvalidTransactionId ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 scalar_t__ FUNC13 (void*) ; 
 scalar_t__ FUNC14 (void*) ; 
 int FUNC15 (void*) ; 

__attribute__((used)) static bool
FUNC16(HeapTuple htup, Snapshot snapshot,
						Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC10(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	snapshot->xmin = snapshot->xmax = InvalidTransactionId;
	snapshot->speculativeToken = 0;

	if (!FUNC8(tuple))
	{
		if (FUNC9(tuple))
			return false;

		/* Used by pre-9.0 binary upgrades */
		if (tuple->t_infomask & HEAP_MOVED_OFF)
		{
			TransactionId xvac = FUNC6(tuple);

			if (FUNC13(xvac))
				return false;
			if (!FUNC14(xvac))
			{
				if (FUNC12(xvac))
				{
					FUNC11(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
				FUNC11(tuple, buffer, HEAP_XMIN_COMMITTED,
							InvalidTransactionId);
			}
		}
		/* Used by pre-9.0 binary upgrades */
		else if (tuple->t_infomask & HEAP_MOVED_IN)
		{
			TransactionId xvac = FUNC6(tuple);

			if (!FUNC13(xvac))
			{
				if (FUNC14(xvac))
					return false;
				if (FUNC12(xvac))
					FUNC11(tuple, buffer, HEAP_XMIN_COMMITTED,
								InvalidTransactionId);
				else
				{
					FUNC11(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
			}
		}
		else if (FUNC13(FUNC4(tuple)))
		{
			if (tuple->t_infomask & HEAP_XMAX_INVALID)	/* xid invalid */
				return true;

			if (FUNC1(tuple->t_infomask))	/* not deleter */
				return true;

			if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
			{
				TransactionId xmax;

				xmax = FUNC2(tuple);

				/* not LOCKED_ONLY, so it has to have an xmax */
				FUNC0(FUNC15(xmax));

				/* updating subtransaction must have aborted */
				if (!FUNC13(xmax))
					return true;
				else
					return false;
			}

			if (!FUNC13(FUNC3(tuple)))
			{
				/* deleting subtransaction must have aborted */
				FUNC11(tuple, buffer, HEAP_XMAX_INVALID,
							InvalidTransactionId);
				return true;
			}

			return false;
		}
		else if (FUNC14(FUNC4(tuple)))
		{
			/*
			 * Return the speculative token to caller.  Caller can worry about
			 * xmax, since it requires a conclusively locked row version, and
			 * a concurrent update to this tuple is a conflict of its
			 * purposes.
			 */
			if (FUNC7(tuple))
			{
				snapshot->speculativeToken =
					FUNC5(tuple);

				FUNC0(snapshot->speculativeToken != 0);
			}

			snapshot->xmin = FUNC4(tuple);
			/* XXX shouldn't we fall through to look at xmax? */
			return true;		/* in insertion by other */
		}
		else if (FUNC12(FUNC4(tuple)))
			FUNC11(tuple, buffer, HEAP_XMIN_COMMITTED,
						FUNC4(tuple));
		else
		{
			/* it must have aborted or crashed */
			FUNC11(tuple, buffer, HEAP_XMIN_INVALID,
						InvalidTransactionId);
			return false;
		}
	}

	/* by here, the inserting transaction has committed */

	if (tuple->t_infomask & HEAP_XMAX_INVALID)	/* xid invalid or aborted */
		return true;

	if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
	{
		if (FUNC1(tuple->t_infomask))
			return true;
		return false;			/* updated by other */
	}

	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		TransactionId xmax;

		if (FUNC1(tuple->t_infomask))
			return true;

		xmax = FUNC2(tuple);

		/* not LOCKED_ONLY, so it has to have an xmax */
		FUNC0(FUNC15(xmax));

		if (FUNC13(xmax))
			return false;
		if (FUNC14(xmax))
		{
			snapshot->xmax = xmax;
			return true;
		}
		if (FUNC12(xmax))
			return false;
		/* it must have aborted or crashed */
		return true;
	}

	if (FUNC13(FUNC3(tuple)))
	{
		if (FUNC1(tuple->t_infomask))
			return true;
		return false;
	}

	if (FUNC14(FUNC3(tuple)))
	{
		if (!FUNC1(tuple->t_infomask))
			snapshot->xmax = FUNC3(tuple);
		return true;
	}

	if (!FUNC12(FUNC3(tuple)))
	{
		/* it must have aborted or crashed */
		FUNC11(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return true;
	}

	/* xmax transaction committed */

	if (FUNC1(tuple->t_infomask))
	{
		FUNC11(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return true;
	}

	FUNC11(tuple, buffer, HEAP_XMAX_COMMITTED,
				FUNC3(tuple));
	return false;				/* updated by other */
}