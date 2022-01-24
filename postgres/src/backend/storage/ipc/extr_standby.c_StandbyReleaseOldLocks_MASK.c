#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {int /*<<< orphan*/  locks; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ RecoveryLockListsEntry ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  RecoveryLockLists ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(TransactionId oldxid)
{
	HASH_SEQ_STATUS status;
	RecoveryLockListsEntry *entry;

	FUNC6(&status, RecoveryLockLists);
	while ((entry = FUNC7(&status)))
	{
		FUNC0(FUNC3(entry->xid));

		/* Skip if prepared transaction. */
		if (FUNC2(entry->xid))
			continue;

		/* Skip if >= oldxid. */
		if (!FUNC4(entry->xid, oldxid))
			continue;

		/* Remove all locks and hash table entry. */
		FUNC1(entry->locks);
		FUNC5(RecoveryLockLists, entry, HASH_REMOVE, NULL);
	}
}