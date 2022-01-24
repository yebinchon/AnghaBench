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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_db_role_setting_setdatabase ; 
 int /*<<< orphan*/  Anum_pg_db_role_setting_setrole ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DbRoleSettingRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid databaseid, Oid roleid)
{
	Relation	relsetting;
	TableScanDesc scan;
	ScanKeyData keys[2];
	HeapTuple	tup;
	int			numkeys = 0;

	relsetting = FUNC9(DbRoleSettingRelationId, RowExclusiveLock);

	if (FUNC3(databaseid))
	{
		FUNC4(&keys[numkeys],
					Anum_pg_db_role_setting_setdatabase,
					BTEqualStrategyNumber,
					F_OIDEQ,
					FUNC2(databaseid));
		numkeys++;
	}
	if (FUNC3(roleid))
	{
		FUNC4(&keys[numkeys],
					Anum_pg_db_role_setting_setrole,
					BTEqualStrategyNumber,
					F_OIDEQ,
					FUNC2(roleid));
		numkeys++;
	}

	scan = FUNC6(relsetting, numkeys, keys);
	while (FUNC1(tup = FUNC5(scan, ForwardScanDirection)))
	{
		FUNC0(relsetting, &tup->t_self);
	}
	FUNC8(scan);

	FUNC7(relsetting, RowExclusiveLock);
}