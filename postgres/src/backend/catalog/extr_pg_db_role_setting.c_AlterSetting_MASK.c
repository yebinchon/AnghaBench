#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_13__ {scalar_t__ kind; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ VariableSetStmt ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int Anum_pg_db_role_setting_setconfig ; 
 int Anum_pg_db_role_setting_setdatabase ; 
 int Anum_pg_db_role_setting_setrole ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DbRoleSettingDatidRolidIndexId ; 
 int /*<<< orphan*/  DbRoleSettingRelationId ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int Natts_pg_db_role_setting ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_RESET_ALL ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_2__* FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC23(Oid databaseid, Oid roleid, VariableSetStmt *setstmt)
{
	char	   *valuestr;
	HeapTuple	tuple;
	Relation	rel;
	ScanKeyData scankey[2];
	SysScanDesc scan;

	valuestr = FUNC4(setstmt);

	/* Get the old tuple, if any. */

	rel = FUNC22(DbRoleSettingRelationId, RowExclusiveLock);
	FUNC13(&scankey[0],
				Anum_pg_db_role_setting_setdatabase,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC10(databaseid));
	FUNC13(&scankey[1],
				Anum_pg_db_role_setting_setrole,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC10(roleid));
	scan = FUNC18(rel, DbRoleSettingDatidRolidIndexId, true,
							  NULL, 2, scankey);
	tuple = FUNC20(scan);

	/*
	 * There are three cases:
	 *
	 * - in RESET ALL, request GUC to reset the settings array and update the
	 * catalog if there's anything left, delete it otherwise
	 *
	 * - in other commands, if there's a tuple in pg_db_role_setting, update
	 * it; if it ends up empty, delete it
	 *
	 * - otherwise, insert a new pg_db_role_setting tuple, but only if the
	 * command is not RESET
	 */
	if (setstmt->kind == VAR_RESET_ALL)
	{
		if (FUNC8(tuple))
		{
			ArrayType  *new = NULL;
			Datum		datum;
			bool		isnull;

			datum = FUNC15(tuple, Anum_pg_db_role_setting_setconfig,
								 FUNC12(rel), &isnull);

			if (!isnull)
				new = FUNC7(FUNC3(datum));

			if (new)
			{
				Datum		repl_val[Natts_pg_db_role_setting];
				bool		repl_null[Natts_pg_db_role_setting];
				bool		repl_repl[Natts_pg_db_role_setting];
				HeapTuple	newtuple;

				FUNC17(repl_repl, false, sizeof(repl_repl));

				repl_val[Anum_pg_db_role_setting_setconfig - 1] =
					FUNC11(new);
				repl_repl[Anum_pg_db_role_setting_setconfig - 1] = true;
				repl_null[Anum_pg_db_role_setting_setconfig - 1] = false;

				newtuple = FUNC16(tuple, FUNC12(rel),
											 repl_val, repl_null, repl_repl);
				FUNC2(rel, &tuple->t_self, newtuple);
			}
			else
				FUNC0(rel, &tuple->t_self);
		}
	}
	else if (FUNC8(tuple))
	{
		Datum		repl_val[Natts_pg_db_role_setting];
		bool		repl_null[Natts_pg_db_role_setting];
		bool		repl_repl[Natts_pg_db_role_setting];
		HeapTuple	newtuple;
		Datum		datum;
		bool		isnull;
		ArrayType  *a;

		FUNC17(repl_repl, false, sizeof(repl_repl));
		repl_repl[Anum_pg_db_role_setting_setconfig - 1] = true;
		repl_null[Anum_pg_db_role_setting_setconfig - 1] = false;

		/* Extract old value of setconfig */
		datum = FUNC15(tuple, Anum_pg_db_role_setting_setconfig,
							 FUNC12(rel), &isnull);
		a = isnull ? NULL : FUNC3(datum);

		/* Update (valuestr is NULL in RESET cases) */
		if (valuestr)
			a = FUNC5(a, setstmt->name, valuestr);
		else
			a = FUNC6(a, setstmt->name);

		if (a)
		{
			repl_val[Anum_pg_db_role_setting_setconfig - 1] =
				FUNC11(a);

			newtuple = FUNC16(tuple, FUNC12(rel),
										 repl_val, repl_null, repl_repl);
			FUNC2(rel, &tuple->t_self, newtuple);
		}
		else
			FUNC0(rel, &tuple->t_self);
	}
	else if (valuestr)
	{
		/* non-null valuestr means it's not RESET, so insert a new tuple */
		HeapTuple	newtuple;
		Datum		values[Natts_pg_db_role_setting];
		bool		nulls[Natts_pg_db_role_setting];
		ArrayType  *a;

		FUNC17(nulls, false, sizeof(nulls));

		a = FUNC5(NULL, setstmt->name, valuestr);

		values[Anum_pg_db_role_setting_setdatabase - 1] =
			FUNC10(databaseid);
		values[Anum_pg_db_role_setting_setrole - 1] = FUNC10(roleid);
		values[Anum_pg_db_role_setting_setconfig - 1] = FUNC11(a);
		newtuple = FUNC14(FUNC12(rel), values, nulls);

		FUNC1(rel, newtuple);
	}

	FUNC9(DbRoleSettingRelationId,
								 databaseid, 0, roleid, false);

	FUNC19(scan);

	/* Close pg_db_role_setting, but keep lock till commit */
	FUNC21(rel, NoLock);
}