#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  locks; } ;
typedef  TYPE_1__ TransactionId ;
typedef  TYPE_1__ RecoveryLockListsEntry ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  RecoveryLockLists ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(TransactionId xid)
{
	RecoveryLockListsEntry *entry;

	if (FUNC2(xid))
	{
		if ((entry = FUNC3(RecoveryLockLists, &xid, HASH_FIND, NULL)))
		{
			FUNC1(entry->locks);
			FUNC3(RecoveryLockLists, entry, HASH_REMOVE, NULL);
		}
	}
	else
		FUNC0();
}