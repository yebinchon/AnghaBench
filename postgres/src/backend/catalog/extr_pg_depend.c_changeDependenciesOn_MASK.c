#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* refobjid; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_13__ {void* objectId; scalar_t__ objectSubId; void* classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long
FUNC18(Oid refClassId, Oid oldRefObjectId,
					 Oid newRefObjectId)
{
	long		count = 0;
	Relation	depRel;
	ScanKeyData key[2];
	SysScanDesc scan;
	HeapTuple	tup;
	ObjectAddress objAddr;
	bool		newIsPinned;

	depRel = FUNC17(DependRelationId, RowExclusiveLock);

	/*
	 * If oldRefObjectId is pinned, there won't be any dependency entries on
	 * it --- we can't cope in that case.  (This isn't really worth expending
	 * code to fix, in current usage; it just means you can't rename stuff out
	 * of pg_catalog, which would likely be a bad move anyway.)
	 */
	objAddr.classId = refClassId;
	objAddr.objectId = oldRefObjectId;
	objAddr.objectSubId = 0;

	if (FUNC12(&objAddr, depRel))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC8("cannot remove dependency on %s because it is a system object",
						FUNC9(&objAddr))));

	/*
	 * We can handle adding a dependency on something pinned, though, since
	 * that just means deleting the dependency entry.
	 */
	objAddr.objectId = newRefObjectId;

	newIsPinned = FUNC12(&objAddr, depRel);

	/* Now search for dependency records */
	FUNC5(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(refClassId));
	FUNC5(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(oldRefObjectId));

	scan = FUNC13(depRel, DependReferenceIndexId, true,
							  NULL, 2, key);

	while (FUNC3((tup = FUNC15(scan))))
	{
		Form_pg_depend depform = (Form_pg_depend) FUNC2(tup);

		if (newIsPinned)
			FUNC0(depRel, &tup->t_self);
		else
		{
			/* make a modifiable copy */
			tup = FUNC10(tup);
			depform = (Form_pg_depend) FUNC2(tup);

			depform->refobjid = newRefObjectId;

			FUNC1(depRel, &tup->t_self, tup);

			FUNC11(tup);
		}

		count++;
	}

	FUNC14(scan);

	FUNC16(depRel, RowExclusiveLock);

	return count;
}