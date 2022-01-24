#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* relOid; void* dbOid; void* xid; } ;
typedef  TYPE_1__ xl_standby_lock ;
typedef  void* TransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  locks; void* xid; } ;
typedef  TYPE_2__ RecoveryLockListsEntry ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  RecoveryLockLists ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(TransactionId xid, Oid dbOid, Oid relOid)
{
	RecoveryLockListsEntry *entry;
	xl_standby_lock *newlock;
	LOCKTAG		locktag;
	bool		found;

	/* Already processed? */
	if (!FUNC6(xid) ||
		FUNC5(xid) ||
		FUNC4(xid))
		return;

	FUNC7(FUNC11(DEBUG4),
		 "adding recovery lock: db %u rel %u", dbOid, relOid);

	/* dbOid is InvalidOid when we are locking a shared relation. */
	FUNC0(FUNC2(relOid));

	/* Create a new list for this xid, if we don't have one already. */
	entry = FUNC8(RecoveryLockLists, &xid, HASH_ENTER, &found);
	if (!found)
	{
		entry->xid = xid;
		entry->locks = NIL;
	}

	newlock = FUNC10(sizeof(xl_standby_lock));
	newlock->xid = xid;
	newlock->dbOid = dbOid;
	newlock->relOid = relOid;
	entry->locks = FUNC9(entry->locks, newlock);

	FUNC3(locktag, newlock->dbOid, newlock->relOid);

	(void) FUNC1(&locktag, AccessExclusiveLock, true, false);
}