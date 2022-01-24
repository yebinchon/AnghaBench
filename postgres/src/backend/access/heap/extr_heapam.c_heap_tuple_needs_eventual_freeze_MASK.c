#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_6__ {int t_infomask; } ;
typedef  void* MultiXactId ;
typedef  TYPE_1__* HeapTupleHeader ;

/* Variables and functions */
 int HEAP_MOVED ; 
 int HEAP_XMAX_IS_MULTI ; 
 void* FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 

bool
FUNC5(HeapTupleHeader tuple)
{
	TransactionId xid;

	/*
	 * If xmin is a normal transaction ID, this tuple is definitely not
	 * frozen.
	 */
	xid = FUNC1(tuple);
	if (FUNC4(xid))
		return true;

	/*
	 * If xmax is a valid xact or multixact, this tuple is also not frozen.
	 */
	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		MultiXactId multi;

		multi = FUNC0(tuple);
		if (FUNC3(multi))
			return true;
	}
	else
	{
		xid = FUNC0(tuple);
		if (FUNC4(xid))
			return true;
	}

	if (tuple->t_infomask & HEAP_MOVED)
	{
		xid = FUNC2(tuple);
		if (FUNC4(xid))
			return true;
	}

	return false;
}