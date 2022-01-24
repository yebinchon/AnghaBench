#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ LockAcquireResult ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ LOCKACQUIRE_ALREADY_CLEAR ; 
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC4(Oid relid, LOCKMODE lockmode)
{
	LOCKTAG		tag;
	LOCALLOCK  *locallock;
	LockAcquireResult res;

	FUNC3(&tag, relid);

	res = FUNC1(&tag, lockmode, false, true, true, &locallock);

	if (res == LOCKACQUIRE_NOT_AVAIL)
		return false;

	/*
	 * Now that we have the lock, check for invalidation messages; see notes
	 * in LockRelationOid.
	 */
	if (res != LOCKACQUIRE_ALREADY_CLEAR)
	{
		FUNC0();
		FUNC2(locallock);
	}

	return true;
}