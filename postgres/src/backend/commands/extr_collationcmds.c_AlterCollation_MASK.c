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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_15__ {int /*<<< orphan*/  collname; } ;
struct TYPE_14__ {int /*<<< orphan*/  collcollate; int /*<<< orphan*/  collprovider; } ;
struct TYPE_13__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_collation ;
typedef  int Datum ;
typedef  TYPE_3__ AlterCollationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int Anum_pg_collation_collversion ; 
 int /*<<< orphan*/  COLLOID ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  CollationRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int Natts_pg_collation ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_COLLATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 TYPE_1__* FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC27(AlterCollationStmt *stmt)
{
	Relation	rel;
	Oid			collOid;
	HeapTuple	tup;
	Form_pg_collation collForm;
	Datum		collversion;
	bool		isnull;
	char	   *oldversion;
	char	   *newversion;
	ObjectAddress address;

	rel = FUNC26(CollationRelationId, RowExclusiveLock);
	collOid = FUNC19(stmt->collname, false);

	if (!FUNC23(collOid, FUNC3()))
		FUNC14(ACLCHECK_NOT_OWNER, OBJECT_COLLATION,
					   FUNC6(stmt->collname));

	tup = FUNC11(COLLOID, FUNC9(collOid));
	if (!FUNC4(tup))
		FUNC15(ERROR, "cache lookup failed for collation %u", collOid);

	collForm = (Form_pg_collation) FUNC2(tup);
	collversion = FUNC12(COLLOID, tup, Anum_pg_collation_collversion,
								  &isnull);
	oldversion = isnull ? NULL : FUNC13(collversion);

	newversion = FUNC18(collForm->collprovider, FUNC7(collForm->collcollate));

	/* cannot change from NULL to non-NULL or vice versa */
	if ((!oldversion && newversion) || (oldversion && !newversion))
		FUNC15(ERROR, "invalid collation version change");
	else if (oldversion && newversion && FUNC24(newversion, oldversion) != 0)
	{
		bool		nulls[Natts_pg_collation];
		bool		replaces[Natts_pg_collation];
		Datum		values[Natts_pg_collation];

		FUNC16(NOTICE,
				(FUNC17("changing version from %s to %s",
						oldversion, newversion)));

		FUNC22(values, 0, sizeof(values));
		FUNC22(nulls, false, sizeof(nulls));
		FUNC22(replaces, false, sizeof(replaces));

		values[Anum_pg_collation_collversion - 1] = FUNC0(newversion);
		replaces[Anum_pg_collation_collversion - 1] = true;

		tup = FUNC21(tup, FUNC10(rel),
								values, nulls, replaces);
	}
	else
		FUNC16(NOTICE,
				(FUNC17("version has not changed")));

	FUNC1(rel, &tup->t_self, tup);

	FUNC5(CollationRelationId, collOid, 0);

	FUNC8(address, CollationRelationId, collOid);

	FUNC20(tup);
	FUNC25(rel, NoLock);

	return address;
}