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
struct TYPE_2__ {int /*<<< orphan*/  commitTsActive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CommitTsControlLock ; 
 int /*<<< orphan*/  FirstNormalTransactionId ; 
 int /*<<< orphan*/  InRecovery ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 TYPE_1__* commitTsShared ; 

void
FUNC7(TransactionId newestXact)
{
	int			pageno;

	/*
	 * Nothing to do if module not enabled.  Note we do an unlocked read of
	 * the flag here, which is okay because this routine is only called from
	 * GetNewTransactionId, which is never called in a standby.
	 */
	FUNC0(!InRecovery);
	if (!commitTsShared->commitTsActive)
		return;

	/*
	 * No work except at first XID of a page.  But beware: just after
	 * wraparound, the first XID of page zero is FirstNormalTransactionId.
	 */
	if (FUNC4(newestXact) != 0 &&
		!FUNC3(newestXact, FirstNormalTransactionId))
		return;

	pageno = FUNC5(newestXact);

	FUNC1(CommitTsControlLock, LW_EXCLUSIVE);

	/* Zero the page and make an XLOG entry about it */
	FUNC6(pageno, !InRecovery);

	FUNC2(CommitTsControlLock);
}