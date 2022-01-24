#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_6__ {scalar_t__ objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_seclabel_classoid ; 
 int /*<<< orphan*/  Anum_pg_seclabel_objoid ; 
 int /*<<< orphan*/  Anum_pg_seclabel_objsubid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SecLabelObjectIndexId ; 
 int /*<<< orphan*/  SecLabelRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(const ObjectAddress *object)
{
	Relation	pg_seclabel;
	ScanKeyData skey[3];
	SysScanDesc scan;
	HeapTuple	oldtup;
	int			nkeys;

	/* Shared objects have their own security label catalog. */
	if (FUNC5(object->classId))
	{
		FUNC0(object->objectSubId == 0);
		FUNC2(object->objectId, object->classId);
		return;
	}

	FUNC7(&skey[0],
				Anum_pg_seclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(object->objectId));
	FUNC7(&skey[1],
				Anum_pg_seclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(object->classId));
	if (object->objectSubId != 0)
	{
		FUNC7(&skey[2],
					Anum_pg_seclabel_objsubid,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC4(object->objectSubId));
		nkeys = 3;
	}
	else
		nkeys = 2;

	pg_seclabel = FUNC12(SecLabelRelationId, RowExclusiveLock);

	scan = FUNC8(pg_seclabel, SecLabelObjectIndexId, true,
							  NULL, nkeys, skey);
	while (FUNC3(oldtup = FUNC10(scan)))
		FUNC1(pg_seclabel, &oldtup->t_self);
	FUNC9(scan);

	FUNC11(pg_seclabel, RowExclusiveLock);
}