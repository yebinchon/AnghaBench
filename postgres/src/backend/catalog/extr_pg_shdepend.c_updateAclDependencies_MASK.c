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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SHARED_DEPENDENCY_ACL ; 
 int /*<<< orphan*/  SharedDependRelationId ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*,scalar_t__*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(Oid classId, Oid objectId, int32 objsubId,
					  Oid ownerId,
					  int noldmembers, Oid *oldmembers,
					  int nnewmembers, Oid *newmembers)
{
	Relation	sdepRel;
	int			i;

	/*
	 * Remove entries that are common to both lists; those represent existing
	 * dependencies we don't need to change.
	 *
	 * OK to overwrite the inputs since we'll pfree them anyway.
	 */
	FUNC0(oldmembers, &noldmembers, newmembers, &nnewmembers);

	if (noldmembers > 0 || nnewmembers > 0)
	{
		sdepRel = FUNC6(SharedDependRelationId, RowExclusiveLock);

		/* Add new dependencies that weren't already present */
		for (i = 0; i < nnewmembers; i++)
		{
			Oid			roleid = newmembers[i];

			/*
			 * Skip the owner: he has an OWNER shdep entry instead. (This is
			 * not just a space optimization; it makes ALTER OWNER easier. See
			 * notes in changeDependencyOnOwner.)
			 */
			if (roleid == ownerId)
				continue;

			/* Skip pinned roles; they don't need dependency entries */
			if (FUNC1(AuthIdRelationId, roleid, sdepRel))
				continue;

			FUNC3(sdepRel, classId, objectId, objsubId,
							   AuthIdRelationId, roleid,
							   SHARED_DEPENDENCY_ACL);
		}

		/* Drop no-longer-used old dependencies */
		for (i = 0; i < noldmembers; i++)
		{
			Oid			roleid = oldmembers[i];

			/* Skip the owner, same as above */
			if (roleid == ownerId)
				continue;

			/* Skip pinned roles */
			if (FUNC1(AuthIdRelationId, roleid, sdepRel))
				continue;

			FUNC4(sdepRel, classId, objectId, objsubId,
								false,	/* exact match on objsubId */
								AuthIdRelationId, roleid,
								SHARED_DEPENDENCY_ACL);
		}

		FUNC5(sdepRel, RowExclusiveLock);
	}

	if (oldmembers)
		FUNC2(oldmembers);
	if (newmembers)
		FUNC2(newmembers);
}