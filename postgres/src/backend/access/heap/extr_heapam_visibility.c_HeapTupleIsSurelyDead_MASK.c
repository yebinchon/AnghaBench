#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_7__ {int t_infomask; } ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC1 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7(HeapTuple htup, TransactionId OldestXmin)
{
	HeapTupleHeader tuple = htup->t_data;

	FUNC0(FUNC5(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	/*
	 * If the inserting transaction is marked invalid, then it aborted, and
	 * the tuple is definitely dead.  If it's marked neither committed nor
	 * invalid, then we assume it's still alive (since the presumption is that
	 * all relevant hint bits were just set moments ago).
	 */
	if (!FUNC3(tuple))
		return FUNC4(tuple) ? true : false;

	/*
	 * If the inserting transaction committed, but any deleting transaction
	 * aborted, the tuple is still alive.
	 */
	if (tuple->t_infomask & HEAP_XMAX_INVALID)
		return false;

	/*
	 * If the XMAX is just a lock, the tuple is still alive.
	 */
	if (FUNC1(tuple->t_infomask))
		return false;

	/*
	 * If the Xmax is a MultiXact, it might be dead or alive, but we cannot
	 * know without checking pg_multixact.
	 */
	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
		return false;

	/* If deleter isn't known to have committed, assume it's still running. */
	if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
		return false;

	/* Deleter committed, so tuple is dead if the XID is old enough. */
	return FUNC6(FUNC2(tuple), OldestXmin);
}