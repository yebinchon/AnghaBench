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
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ TransactionId ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(TransactionId xid, uint32 epoch)
{
	FullTransactionId nextFullXid;
	TransactionId nextXid;
	uint32		nextEpoch;

	nextFullXid = FUNC1();
	nextXid = FUNC3(nextFullXid);
	nextEpoch = FUNC0(nextFullXid);

	if (xid <= nextXid)
	{
		if (epoch != nextEpoch)
			return false;
	}
	else
	{
		if (epoch + 1 != nextEpoch)
			return false;
	}

	if (!FUNC2(xid, nextXid))
		return false;			/* epoch OK, but it's wrapped around */

	return true;
}