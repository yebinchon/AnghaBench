#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_8__ {scalar_t__* count; int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/ * owner; } ;
struct TYPE_6__ {int numLockOwners; int holdsStrongLockCount; int /*<<< orphan*/  tag; int /*<<< orphan*/  hashcode; TYPE_2__* lockOwners; } ;
typedef  TYPE_1__ LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FastPathStrongRelationLocks ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  LockMethodLocalHash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(LOCALLOCK *locallock)
{
	int			i;

	for (i = locallock->numLockOwners - 1; i >= 0; i--)
	{
		if (locallock->lockOwners[i].owner != NULL)
			FUNC2(locallock->lockOwners[i].owner, locallock);
	}
	locallock->numLockOwners = 0;
	if (locallock->lockOwners != NULL)
		FUNC7(locallock->lockOwners);
	locallock->lockOwners = NULL;

	if (locallock->holdsStrongLockCount)
	{
		uint32		fasthashcode;

		fasthashcode = FUNC1(locallock->hashcode);

		FUNC3(&FastPathStrongRelationLocks->mutex);
		FUNC0(FastPathStrongRelationLocks->count[fasthashcode] > 0);
		FastPathStrongRelationLocks->count[fasthashcode]--;
		locallock->holdsStrongLockCount = false;
		FUNC4(&FastPathStrongRelationLocks->mutex);
	}

	if (!FUNC6(LockMethodLocalHash,
					 (void *) &(locallock->tag),
					 HASH_REMOVE, NULL))
		FUNC5(WARNING, "locallock table corrupted");
}