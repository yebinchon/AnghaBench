#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relId; int /*<<< orphan*/  dbId; } ;
struct TYPE_6__ {TYPE_1__ lockRelId; } ;
struct TYPE_7__ {TYPE_2__ rd_lockInfo; } ;
typedef  TYPE_3__* Relation ;
typedef  scalar_t__ LockAcquireResult ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ LOCKACQUIRE_ALREADY_CLEAR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(Relation relation, LOCKMODE lockmode)
{
	LOCKTAG		tag;
	LOCALLOCK  *locallock;
	LockAcquireResult res;

	FUNC3(tag,
						 relation->rd_lockInfo.lockRelId.dbId,
						 relation->rd_lockInfo.lockRelId.relId);

	res = FUNC1(&tag, lockmode, false, false, true, &locallock);

	/*
	 * Now that we have the lock, check for invalidation messages; see notes
	 * in LockRelationOid.
	 */
	if (res != LOCKACQUIRE_ALREADY_CLEAR)
	{
		FUNC0();
		FUNC2(locallock);
	}
}