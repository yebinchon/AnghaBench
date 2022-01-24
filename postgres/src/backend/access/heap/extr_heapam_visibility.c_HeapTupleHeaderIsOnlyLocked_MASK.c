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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HEAP_XMAX_INVALID ; 
 int HEAP_XMAX_IS_MULTI ; 
 int HEAP_XMAX_LOCK_ONLY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool
FUNC7(HeapTupleHeader tuple)
{
	TransactionId xmax;

	/* if there's no valid Xmax, then there's obviously no update either */
	if (tuple->t_infomask & HEAP_XMAX_INVALID)
		return true;

	if (tuple->t_infomask & HEAP_XMAX_LOCK_ONLY)
		return true;

	/* invalid xmax means no update */
	if (!FUNC6(FUNC2(tuple)))
		return true;

	/*
	 * if HEAP_XMAX_LOCK_ONLY is not set and not a multi, then this must
	 * necessarily have been updated
	 */
	if (!(tuple->t_infomask & HEAP_XMAX_IS_MULTI))
		return false;

	/* ... but if it's a multi, then perhaps the updating Xid aborted. */
	xmax = FUNC1(tuple);

	/* not LOCKED_ONLY, so it has to have an xmax */
	FUNC0(FUNC6(xmax));

	if (FUNC4(xmax))
		return false;
	if (FUNC5(xmax))
		return false;
	if (FUNC3(xmax))
		return false;

	/*
	 * not current, not in progress, not committed -- must have aborted or
	 * crashed
	 */
	return true;
}