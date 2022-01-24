#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ refclassid; scalar_t__ refobjid; } ;
struct TYPE_15__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_14__ {scalar_t__ objectSubId; scalar_t__ objectId; scalar_t__ classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_depend_classid ; 
 int /*<<< orphan*/  Anum_pg_depend_objid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  DependDependerIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long
FUNC15(Oid classId, Oid objectId,
					Oid refClassId, Oid oldRefObjectId,
					Oid newRefObjectId)
{
	long		count = 0;
	Relation	depRel;
	ScanKeyData key[2];
	SysScanDesc scan;
	HeapTuple	tup;
	ObjectAddress objAddr;
	ObjectAddress depAddr;
	bool		oldIsPinned;
	bool		newIsPinned;

	depRel = FUNC14(DependRelationId, RowExclusiveLock);

	/*
	 * Check to see if either oldRefObjectId or newRefObjectId is pinned.
	 * Pinned objects should not have any dependency entries pointing to them,
	 * so in these cases we should add or remove a pg_depend entry, or do
	 * nothing at all, rather than update an entry as in the normal case.
	 */
	objAddr.classId = refClassId;
	objAddr.objectId = oldRefObjectId;
	objAddr.objectSubId = 0;

	oldIsPinned = FUNC8(&objAddr, depRel);

	objAddr.objectId = newRefObjectId;

	newIsPinned = FUNC8(&objAddr, depRel);

	if (oldIsPinned)
	{
		FUNC13(depRel, RowExclusiveLock);

		/*
		 * If both are pinned, we need do nothing.  However, return 1 not 0,
		 * else callers will think this is an error case.
		 */
		if (newIsPinned)
			return 1;

		/*
		 * There is no old dependency record, but we should insert a new one.
		 * Assume a normal dependency is wanted.
		 */
		depAddr.classId = classId;
		depAddr.objectId = objectId;
		depAddr.objectSubId = 0;
		FUNC9(&depAddr, &objAddr, DEPENDENCY_NORMAL);

		return 1;
	}

	/* There should be existing dependency record(s), so search. */
	FUNC5(&key[0],
				Anum_pg_depend_classid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(classId));
	FUNC5(&key[1],
				Anum_pg_depend_objid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(objectId));

	scan = FUNC10(depRel, DependDependerIndexId, true,
							  NULL, 2, key);

	while (FUNC3((tup = FUNC12(scan))))
	{
		Form_pg_depend depform = (Form_pg_depend) FUNC2(tup);

		if (depform->refclassid == refClassId &&
			depform->refobjid == oldRefObjectId)
		{
			if (newIsPinned)
				FUNC0(depRel, &tup->t_self);
			else
			{
				/* make a modifiable copy */
				tup = FUNC6(tup);
				depform = (Form_pg_depend) FUNC2(tup);

				depform->refobjid = newRefObjectId;

				FUNC1(depRel, &tup->t_self, tup);

				FUNC7(tup);
			}

			count++;
		}
	}

	FUNC11(scan);

	FUNC13(depRel, RowExclusiveLock);

	return count;
}