#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(HeapTupleHeader tup,
						  CommandId *cmax,
						  bool *iscombo)
{
	/*
	 * If we're marking a tuple deleted that was inserted by (any
	 * subtransaction of) our transaction, we need to use a combo command id.
	 * Test for HeapTupleHeaderXminCommitted() first, because it's cheaper
	 * than a TransactionIdIsCurrentTransactionId call.
	 */
	if (!FUNC3(tup) &&
		FUNC4(FUNC2(tup)))
	{
		CommandId	cmin = FUNC1(tup);

		*cmax = FUNC0(cmin, *cmax);
		*iscombo = true;
	}
	else
	{
		*iscombo = false;
	}
}