#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int t_infomask; } ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(HeapTupleHeader tuple, Buffer buffer, TransactionId xid)
{
	FUNC0(FUNC5(FUNC2(tuple), xid));
	FUNC0(!(tuple->t_infomask & HEAP_XMAX_IS_MULTI));

	if (!(tuple->t_infomask & (HEAP_XMAX_COMMITTED | HEAP_XMAX_INVALID)))
	{
		if (!FUNC1(tuple->t_infomask) &&
			FUNC4(xid))
			FUNC3(tuple, buffer, HEAP_XMAX_COMMITTED,
								 xid);
		else
			FUNC3(tuple, buffer, HEAP_XMAX_INVALID,
								 InvalidTransactionId);
	}
}