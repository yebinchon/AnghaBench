#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_10__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_9__ {int t_infomask; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HEAP_MOVED_IN ; 
 int HEAP_MOVED_OFF ; 
 int /*<<< orphan*/  HEAP_XMIN_COMMITTED ; 
 int /*<<< orphan*/  HEAP_XMIN_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11(HeapTuple htup, Snapshot snapshot,
						Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC5(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	if (!FUNC3(tuple))
	{
		if (FUNC4(tuple))
			return false;

		/* Used by pre-9.0 binary upgrades */
		if (tuple->t_infomask & HEAP_MOVED_OFF)
		{
			TransactionId xvac = FUNC2(tuple);

			if (FUNC8(xvac))
				return false;
			if (!FUNC9(xvac))
			{
				if (FUNC7(xvac))
				{
					FUNC6(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
				FUNC6(tuple, buffer, HEAP_XMIN_COMMITTED,
							InvalidTransactionId);
			}
		}
		/* Used by pre-9.0 binary upgrades */
		else if (tuple->t_infomask & HEAP_MOVED_IN)
		{
			TransactionId xvac = FUNC2(tuple);

			if (!FUNC8(xvac))
			{
				if (FUNC9(xvac))
					return false;
				if (FUNC7(xvac))
					FUNC6(tuple, buffer, HEAP_XMIN_COMMITTED,
								InvalidTransactionId);
				else
				{
					FUNC6(tuple, buffer, HEAP_XMIN_INVALID,
								InvalidTransactionId);
					return false;
				}
			}
		}

		/*
		 * An invalid Xmin can be left behind by a speculative insertion that
		 * is canceled by super-deleting the tuple.  This also applies to
		 * TOAST tuples created during speculative insertion.
		 */
		else if (!FUNC10(FUNC1(tuple)))
			return false;
	}

	/* otherwise assume the tuple is valid for TOAST. */
	return true;
}