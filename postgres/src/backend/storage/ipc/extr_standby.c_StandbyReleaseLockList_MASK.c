#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  relOid; int /*<<< orphan*/  dbOid; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ xl_standby_lock ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(List *locks)
{
	while (locks)
	{
		xl_standby_lock *lock = (xl_standby_lock *) FUNC4(locks);
		LOCKTAG		locktag;

		FUNC3(FUNC7(DEBUG4),
			 "releasing recovery lock: xid %u db %u rel %u",
			 lock->xid, lock->dbOid, lock->relOid);
		FUNC2(locktag, lock->dbOid, lock->relOid);
		if (!FUNC1(&locktag, AccessExclusiveLock, true))
		{
			FUNC3(LOG,
				 "RecoveryLockLists contains entry for lock no longer recorded by lock manager: xid %u database %u relation %u",
				 lock->xid, lock->dbOid, lock->relOid);
			FUNC0(false);
		}
		FUNC6(lock);
		locks = FUNC5(locks);
	}
}