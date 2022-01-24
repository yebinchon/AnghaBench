#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_19__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_2__* t_data; } ;
struct TYPE_18__ {int t_infomask; } ;
struct TYPE_17__ {scalar_t__ curcid; } ;
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
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC17(HeapTuple htup, Snapshot snapshot,
					   Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC11(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	if (!FUNC8(tuple))
	{
		if (FUNC10(tuple))
			return false;

		/* Used by pre-9.0 binary upgrades */
		if (tuple->t_infomask & HEAP_MOVED_OFF)
		{
			TransactionId xvac = FUNC7(tuple);

			if (FUNC14(xvac))
				return false;
			if (!FUNC16(xvac, snapshot))
			{
				if (FUNC13(xvac))
				{
					FUNC12(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
				FUNC12(tuple, buffer, HEAP_XMIN_COMMITTED,
							InvalidTransactionId);
			}
		}
		/* Used by pre-9.0 binary upgrades */
		else if (tuple->t_infomask & HEAP_MOVED_IN)
		{
			TransactionId xvac = FUNC7(tuple);

			if (!FUNC14(xvac))
			{
				if (FUNC16(xvac, snapshot))
					return false;
				if (FUNC13(xvac))
					FUNC12(tuple, buffer, HEAP_XMIN_COMMITTED,
								InvalidTransactionId);
				else
				{
					FUNC12(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
			}
		}
		else if (FUNC14(FUNC6(tuple)))
		{
			if (FUNC4(tuple) >= snapshot->curcid)
				return false;	/* inserted after scan started */

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
				if (!FUNC14(xmax))
					return true;
				else if (FUNC3(tuple) >= snapshot->curcid)
					return true;	/* updated after scan started */
				else
					return false;	/* updated before scan started */
			}

			if (!FUNC14(FUNC5(tuple)))
			{
				/* deleting subtransaction must have aborted */
				FUNC12(tuple, buffer, HEAP_XMAX_INVALID,
							InvalidTransactionId);
				return true;
			}

			if (FUNC3(tuple) >= snapshot->curcid)
				return true;	/* deleted after scan started */
			else
				return false;	/* deleted before scan started */
		}
		else if (FUNC16(FUNC6(tuple), snapshot))
			return false;
		else if (FUNC13(FUNC6(tuple)))
			FUNC12(tuple, buffer, HEAP_XMIN_COMMITTED,
						FUNC6(tuple));
		else
		{
			/* it must have aborted or crashed */
			FUNC12(tuple, buffer, HEAP_XMIN_INVALID,
						InvalidTransactionId);
			return false;
		}
	}
	else
	{
		/* xmin is committed, but maybe not according to our snapshot */
		if (!FUNC9(tuple) &&
			FUNC16(FUNC6(tuple), snapshot))
			return false;		/* treat as still in progress */
	}

	/* by here, the inserting transaction has committed */

	if (tuple->t_infomask & HEAP_XMAX_INVALID)	/* xid invalid or aborted */
		return true;

	if (FUNC1(tuple->t_infomask))
		return true;

	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		TransactionId xmax;

		/* already checked above */
		FUNC0(!FUNC1(tuple->t_infomask));

		xmax = FUNC2(tuple);

		/* not LOCKED_ONLY, so it has to have an xmax */
		FUNC0(FUNC15(xmax));

		if (FUNC14(xmax))
		{
			if (FUNC3(tuple) >= snapshot->curcid)
				return true;	/* deleted after scan started */
			else
				return false;	/* deleted before scan started */
		}
		if (FUNC16(xmax, snapshot))
			return true;
		if (FUNC13(xmax))
			return false;		/* updating transaction committed */
		/* it must have aborted or crashed */
		return true;
	}

	if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
	{
		if (FUNC14(FUNC5(tuple)))
		{
			if (FUNC3(tuple) >= snapshot->curcid)
				return true;	/* deleted after scan started */
			else
				return false;	/* deleted before scan started */
		}

		if (FUNC16(FUNC5(tuple), snapshot))
			return true;

		if (!FUNC13(FUNC5(tuple)))
		{
			/* it must have aborted or crashed */
			FUNC12(tuple, buffer, HEAP_XMAX_INVALID,
						InvalidTransactionId);
			return true;
		}

		/* xmax transaction committed */
		FUNC12(tuple, buffer, HEAP_XMAX_COMMITTED,
					FUNC5(tuple));
	}
	else
	{
		/* xmax is committed, but maybe not according to our snapshot */
		if (FUNC16(FUNC5(tuple), snapshot))
			return true;		/* treat as still in progress */
	}

	/* xmax transaction committed */

	return false;
}