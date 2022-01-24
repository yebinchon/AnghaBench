#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int nRequested; } ;
struct TYPE_5__ {scalar_t__ locktag_lockmethodid; } ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  TYPE_1__ LOCKTAG ;
typedef  scalar_t__ LOCKMETHODID ;
typedef  TYPE_2__ LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockMethodLockHash ; 
 int /*<<< orphan*/  LockMethods ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(const LOCKTAG *locktag)
{
	LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
	LOCK	   *lock;
	bool		found;
	uint32		hashcode;
	LWLock	   *partitionLock;
	int			waiters = 0;

	if (lockmethodid <= 0 || lockmethodid >= FUNC7(LockMethods))
		FUNC5(ERROR, "unrecognized lock method: %d", lockmethodid);

	hashcode = FUNC4(locktag);
	partitionLock = FUNC3(hashcode);
	FUNC1(partitionLock, LW_EXCLUSIVE);

	lock = (LOCK *) FUNC6(LockMethodLockHash,
												(const void *) locktag,
												hashcode,
												HASH_FIND,
												&found);
	if (found)
	{
		FUNC0(lock != NULL);
		waiters = lock->nRequested;
	}
	FUNC2(partitionLock);

	return waiters;
}