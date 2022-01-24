#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TransactionId ;
struct TYPE_8__ {int t_infomask; } ;
typedef  TYPE_1__* HeapTupleHeader ;

/* Variables and functions */
 int HEAP_MOVED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

void
FUNC8(HeapTupleHeader tuple,
									   TransactionId *latestRemovedXid)
{
	TransactionId xmin = FUNC1(tuple);
	TransactionId xmax = FUNC0(tuple);
	TransactionId xvac = FUNC2(tuple);

	if (tuple->t_infomask & HEAP_MOVED)
	{
		if (FUNC7(*latestRemovedXid, xvac))
			*latestRemovedXid = xvac;
	}

	/*
	 * Ignore tuples inserted by an aborted transaction or if the tuple was
	 * updated/deleted by the inserting transaction.
	 *
	 * Look for a committed hint bit, or if no xmin bit is set, check clog.
	 * This needs to work on both master and standby, where it is used to
	 * assess btree delete records.
	 */
	if (FUNC3(tuple) ||
		(!FUNC4(tuple) && FUNC5(xmin)))
	{
		if (xmax != xmin &&
			FUNC6(xmax, *latestRemovedXid))
			*latestRemovedXid = xmax;
	}

	/* *latestRemovedXid may still be invalid at end */
}