#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int Anum_pg_init_privs_classoid ; 
 int Anum_pg_init_privs_initprivs ; 
 int Anum_pg_init_privs_objoid ; 
 int Anum_pg_init_privs_objsubid ; 
 int Anum_pg_init_privs_privtype ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  INITPRIVS_EXTENSION ; 
 int /*<<< orphan*/  InitPrivsObjIndexId ; 
 int /*<<< orphan*/  InitPrivsRelationId ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int Natts_pg_init_privs ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(Oid objoid, Oid classoid, int objsubid, Acl *new_acl)
{
	Relation	relation;
	ScanKeyData key[3];
	SysScanDesc scan;
	HeapTuple	tuple;
	HeapTuple	oldtuple;

	relation = FUNC18(InitPrivsRelationId, RowExclusiveLock);

	FUNC11(&key[0],
				Anum_pg_init_privs_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(objoid));
	FUNC11(&key[1],
				Anum_pg_init_privs_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(classoid));
	FUNC11(&key[2],
				Anum_pg_init_privs_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC6(objsubid));

	scan = FUNC14(relation, InitPrivsObjIndexId, true,
							  NULL, 3, key);

	/* There should exist only one entry or none. */
	oldtuple = FUNC16(scan);

	/* If we find an entry, update it with the latest ACL. */
	if (FUNC5(oldtuple))
	{
		Datum		values[Natts_pg_init_privs];
		bool		nulls[Natts_pg_init_privs];
		bool		replace[Natts_pg_init_privs];

		/* If we have a new ACL to set, then update the row with it. */
		if (new_acl)
		{
			FUNC7(values, 0, sizeof(values));
			FUNC7(nulls, false, sizeof(nulls));
			FUNC7(replace, false, sizeof(replace));

			values[Anum_pg_init_privs_initprivs - 1] = FUNC9(new_acl);
			replace[Anum_pg_init_privs_initprivs - 1] = true;

			oldtuple = FUNC13(oldtuple, FUNC10(relation),
										 values, nulls, replace);

			FUNC2(relation, &oldtuple->t_self, oldtuple);
		}
		else
		{
			/* new_acl is NULL, so delete the entry we found. */
			FUNC0(relation, &oldtuple->t_self);
		}
	}
	else
	{
		Datum		values[Natts_pg_init_privs];
		bool		nulls[Natts_pg_init_privs];

		/*
		 * Only add a new entry if the new ACL is non-NULL.
		 *
		 * If we are passed in a NULL ACL and no entry exists, we can just
		 * fall through and do nothing.
		 */
		if (new_acl)
		{
			/* No entry found, so add it. */
			FUNC7(nulls, false, sizeof(nulls));

			values[Anum_pg_init_privs_objoid - 1] = FUNC8(objoid);
			values[Anum_pg_init_privs_classoid - 1] = FUNC8(classoid);
			values[Anum_pg_init_privs_objsubid - 1] = FUNC6(objsubid);

			/* This function only handles initial privileges of extensions */
			values[Anum_pg_init_privs_privtype - 1] =
				FUNC3(INITPRIVS_EXTENSION);

			values[Anum_pg_init_privs_initprivs - 1] = FUNC9(new_acl);

			tuple = FUNC12(FUNC10(relation), values, nulls);

			FUNC1(relation, tuple);
		}
	}

	FUNC15(scan);

	/* prevent error when processing objects multiple times */
	FUNC4();

	FUNC17(relation, RowExclusiveLock);
}