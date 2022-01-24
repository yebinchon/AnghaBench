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
typedef  void* TransactionId ;
struct TYPE_2__ {void* tailXid; scalar_t__ headPage; void* headXid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  OldSerXidLock ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*,void*) ; 
 TYPE_1__* oldSerXidControl ; 

__attribute__((used)) static void
FUNC7(TransactionId xid)
{
	FUNC1(OldSerXidLock, LW_EXCLUSIVE);

	/*
	 * When no sxacts are active, nothing overlaps, set the xid values to
	 * invalid to show that there are no valid entries.  Don't clear headPage,
	 * though.  A new xmin might still land on that page, and we don't want to
	 * repeatedly zero out the same page.
	 */
	if (!FUNC5(xid))
	{
		oldSerXidControl->tailXid = InvalidTransactionId;
		oldSerXidControl->headXid = InvalidTransactionId;
		FUNC2(OldSerXidLock);
		return;
	}

	/*
	 * When we're recovering prepared transactions, the global xmin might move
	 * backwards depending on the order they're recovered. Normally that's not
	 * OK, but during recovery no serializable transactions will commit, so
	 * the SLRU is empty and we can get away with it.
	 */
	if (FUNC3())
	{
		FUNC0(oldSerXidControl->headPage < 0);
		if (!FUNC5(oldSerXidControl->tailXid)
			|| FUNC6(xid, oldSerXidControl->tailXid))
		{
			oldSerXidControl->tailXid = xid;
		}
		FUNC2(OldSerXidLock);
		return;
	}

	FUNC0(!FUNC5(oldSerXidControl->tailXid)
		   || FUNC4(xid, oldSerXidControl->tailXid));

	oldSerXidControl->tailXid = xid;

	FUNC2(OldSerXidLock);
}