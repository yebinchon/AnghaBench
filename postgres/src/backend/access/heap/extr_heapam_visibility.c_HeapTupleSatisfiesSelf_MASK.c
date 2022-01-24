#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_12__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_11__ {int t_infomask; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
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
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC14(HeapTuple htup, Snapshot snapshot, Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC8(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	if (!FUNC6(tuple))
	{
		if (FUNC7(tuple))
			return false;

		/* Used by pre-9.0 binary upgrades */
		if (tuple->t_infomask & HEAP_MOVED_OFF)
		{
			TransactionId xvac = FUNC5(tuple);

			if (FUNC11(xvac))
				return false;
			if (!FUNC12(xvac))
			{
				if (FUNC10(xvac))
				{
					FUNC9(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
				FUNC9(tuple, buffer, HEAP_XMIN_COMMITTED,
							InvalidTransactionId);
			}
		}
		/* Used by pre-9.0 binary upgrades */
		else if (tuple->t_infomask & HEAP_MOVED_IN)
		{
			TransactionId xvac = FUNC5(tuple);

			if (!FUNC11(xvac))
			{
				if (FUNC12(xvac))
					return false;
				if (FUNC10(xvac))
					FUNC9(tuple, buffer, HEAP_XMIN_COMMITTED,
								InvalidTransactionId);
				else
				{
					FUNC9(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
			}
		}
		else if (FUNC11(FUNC4(tuple)))
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
				FUNC0(FUNC13(xmax));

				/* updating subtransaction must have aborted */
				if (!FUNC11(xmax))
					return true;
				else
					return false;
			}

			if (!FUNC11(FUNC3(tuple)))
			{
				/* deleting subtransaction must have aborted */
				FUNC9(tuple, buffer, HEAP_XMAX_INVALID,
							InvalidTransactionId);
				return true;
			}

			return false;
		}
		else if (FUNC12(FUNC4(tuple)))
			return false;
		else if (FUNC10(FUNC4(tuple)))
			FUNC9(tuple, buffer, HEAP_XMIN_COMMITTED,
						FUNC4(tuple));
		else
		{
			/* it must have aborted or crashed */
			FUNC9(tuple, buffer, HEAP_XMIN_INVALID,
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
		FUNC0(FUNC13(xmax));

		if (FUNC11(xmax))
			return false;
		if (FUNC12(xmax))
			return true;
		if (FUNC10(xmax))
			return false;
		/* it must have aborted or crashed */
		return true;
	}

	if (FUNC11(FUNC3(tuple)))
	{
		if (FUNC1(tuple->t_infomask))
			return true;
		return false;
	}

	if (FUNC12(FUNC3(tuple)))
		return true;

	if (!FUNC10(FUNC3(tuple)))
	{
		/* it must have aborted or crashed */
		FUNC9(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return true;
	}

	/* xmax transaction committed */

	if (FUNC1(tuple->t_infomask))
	{
		FUNC9(tuple, buffer, HEAP_XMAX_INVALID,
					InvalidTransactionId);
		return true;
	}

	FUNC9(tuple, buffer, HEAP_XMAX_COMMITTED,
				FUNC3(tuple));
	return false;
}