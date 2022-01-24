#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_attrdef ;
typedef  int /*<<< orphan*/  DropBehavior ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_attrdef_adnum ; 
 int /*<<< orphan*/  Anum_pg_attrdef_adrelid ; 
 int /*<<< orphan*/  AttrDefaultIndexId ; 
 int /*<<< orphan*/  AttrDefaultRelationId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT2EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERFORM_DELETION_INTERNAL ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Oid relid, AttrNumber attnum,
				  DropBehavior behavior, bool complain, bool internal)
{
	Relation	attrdef_rel;
	ScanKeyData scankeys[2];
	SysScanDesc scan;
	HeapTuple	tuple;
	bool		found = false;

	attrdef_rel = FUNC11(AttrDefaultRelationId, RowExclusiveLock);

	FUNC4(&scankeys[0],
				Anum_pg_attrdef_adrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relid));
	FUNC4(&scankeys[1],
				Anum_pg_attrdef_adnum,
				BTEqualStrategyNumber, F_INT2EQ,
				FUNC2(attnum));

	scan = FUNC7(attrdef_rel, AttrDefaultIndexId, true,
							  NULL, 2, scankeys);

	/* There should be at most one matching tuple, but we loop anyway */
	while (FUNC1(tuple = FUNC9(scan)))
	{
		ObjectAddress object;
		Form_pg_attrdef attrtuple = (Form_pg_attrdef) FUNC0(tuple);

		object.classId = AttrDefaultRelationId;
		object.objectId = attrtuple->oid;
		object.objectSubId = 0;

		FUNC6(&object, behavior,
						internal ? PERFORM_DELETION_INTERNAL : 0);

		found = true;
	}

	FUNC8(scan);
	FUNC10(attrdef_rel, RowExclusiveLock);

	if (complain && !found)
		FUNC5(ERROR, "could not find attrdef tuple for relation %u attnum %d",
			 relid, attnum);
}