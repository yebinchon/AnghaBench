#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ connamespace; int /*<<< orphan*/  oid; } ;
struct TYPE_13__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_12__ {int /*<<< orphan*/  objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(Oid ownerId, Oid oldNspId,
						  Oid newNspId, bool isType, ObjectAddresses *objsMoved)
{
	Relation	conRel;
	ScanKeyData key[2];
	SysScanDesc scan;
	HeapTuple	tup;

	conRel = FUNC13(ConstraintRelationId, RowExclusiveLock);

	FUNC5(&key[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(isType ? InvalidOid : ownerId));
	FUNC5(&key[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(isType ? ownerId : InvalidOid));

	scan = FUNC9(conRel, ConstraintRelidTypidNameIndexId, true,
							  NULL, 2, key);

	while (FUNC2((tup = FUNC11(scan))))
	{
		Form_pg_constraint conform = (Form_pg_constraint) FUNC1(tup);
		ObjectAddress thisobj;

		thisobj.classId = ConstraintRelationId;
		thisobj.objectId = conform->oid;
		thisobj.objectSubId = 0;

		if (FUNC8(&thisobj, objsMoved))
			continue;

		/* Don't update if the object is already part of the namespace */
		if (conform->connamespace == oldNspId && oldNspId != newNspId)
		{
			tup = FUNC7(tup);
			conform = (Form_pg_constraint) FUNC1(tup);

			conform->connamespace = newNspId;

			FUNC0(conRel, &tup->t_self, tup);

			/*
			 * Note: currently, the constraint will not have its own
			 * dependency on the namespace, so we don't need to do
			 * changeDependencyFor().
			 */
		}

		FUNC3(ConstraintRelationId, thisobj.objectId, 0);

		FUNC6(&thisobj, objsMoved);
	}

	FUNC10(scan);

	FUNC12(conRel, RowExclusiveLock);
}