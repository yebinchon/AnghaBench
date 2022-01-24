#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  nextFullXid; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  MaxTransactionId ; 
 TYPE_1__* ShmemVariableCache ; 
 int /*<<< orphan*/  SubtransControlLock ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(TransactionId oldestActiveXID)
{
	FullTransactionId nextFullXid;
	int			startPage;
	int			endPage;

	/*
	 * Since we don't expect pg_subtrans to be valid across crashes, we
	 * initialize the currently-active page(s) to zeroes during startup.
	 * Whenever we advance into a new page, ExtendSUBTRANS will likewise zero
	 * the new page without regard to whatever was previously on disk.
	 */
	FUNC0(SubtransControlLock, LW_EXCLUSIVE);

	startPage = FUNC2(oldestActiveXID);
	nextFullXid = ShmemVariableCache->nextFullXid;
	endPage = FUNC2(FUNC3(nextFullXid));

	while (startPage != endPage)
	{
		(void) FUNC4(startPage);
		startPage++;
		/* must account for wraparound */
		if (startPage > FUNC2(MaxTransactionId))
			startPage = 0;
	}
	(void) FUNC4(startPage);

	FUNC1(SubtransControlLock);
}