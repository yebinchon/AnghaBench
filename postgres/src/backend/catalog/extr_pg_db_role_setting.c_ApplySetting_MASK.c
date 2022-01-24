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
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  GucSource ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_db_role_setting_setconfig ; 
 int /*<<< orphan*/  Anum_pg_db_role_setting_setdatabase ; 
 int /*<<< orphan*/  Anum_pg_db_role_setting_setrole ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DbRoleSettingDatidRolidIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGC_SUSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(Snapshot snapshot, Oid databaseid, Oid roleid,
			 Relation relsetting, GucSource source)
{
	SysScanDesc scan;
	ScanKeyData keys[2];
	HeapTuple	tup;

	FUNC5(&keys[0],
				Anum_pg_db_role_setting_setdatabase,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC2(databaseid));
	FUNC5(&keys[1],
				Anum_pg_db_role_setting_setrole,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC2(roleid));

	scan = FUNC7(relsetting, DbRoleSettingDatidRolidIndexId, true,
							  snapshot, 2, keys);
	while (FUNC1(tup = FUNC9(scan)))
	{
		bool		isnull;
		Datum		datum;

		datum = FUNC6(tup, Anum_pg_db_role_setting_setconfig,
							 FUNC4(relsetting), &isnull);
		if (!isnull)
		{
			ArrayType  *a = FUNC0(datum);

			/*
			 * We process all the options at SUSET level.  We assume that the
			 * right to insert an option into pg_db_role_setting was checked
			 * when it was inserted.
			 */
			FUNC3(a, PGC_SUSET, source, GUC_ACTION_SET);
		}
	}

	FUNC8(scan);
}