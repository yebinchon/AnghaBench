#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_shseclabel_classoid ; 
 int /*<<< orphan*/  Anum_pg_shseclabel_objoid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedSecLabelObjectIndexId ; 
 int /*<<< orphan*/  SharedSecLabelRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid objectId, Oid classId)
{
	Relation	pg_shseclabel;
	ScanKeyData skey[2];
	SysScanDesc scan;
	HeapTuple	oldtup;

	FUNC3(&skey[0],
				Anum_pg_shseclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(objectId));
	FUNC3(&skey[1],
				Anum_pg_shseclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(classId));

	pg_shseclabel = FUNC8(SharedSecLabelRelationId, RowExclusiveLock);

	scan = FUNC4(pg_shseclabel, SharedSecLabelObjectIndexId, true,
							  NULL, 2, skey);
	while (FUNC1(oldtup = FUNC6(scan)))
		FUNC0(pg_shseclabel, &oldtup->t_self);
	FUNC5(scan);

	FUNC7(pg_shseclabel, RowExclusiveLock);
}