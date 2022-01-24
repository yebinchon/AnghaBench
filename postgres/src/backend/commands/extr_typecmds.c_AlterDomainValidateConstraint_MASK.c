#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_15__ {scalar_t__ contype; int convalidated; int /*<<< orphan*/  oid; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conbin ; 
 int /*<<< orphan*/  Anum_pg_constraint_conname ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TYPEOID ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 

ObjectAddress
FUNC28(List *names, const char *constrName)
{
	TypeName   *typename;
	Oid			domainoid;
	Relation	typrel;
	Relation	conrel;
	HeapTuple	tup;
	Form_pg_constraint con;
	Form_pg_constraint copy_con;
	char	   *conbin;
	SysScanDesc scan;
	Datum		val;
	bool		isnull;
	HeapTuple	tuple;
	HeapTuple	copyTuple;
	ScanKeyData skey[3];
	ObjectAddress address;

	/* Make a TypeName so we can use standard type lookup machinery */
	typename = FUNC20(names);
	domainoid = FUNC26(NULL, typename);

	/* Look up the domain in the type table */
	typrel = FUNC25(TypeRelationId, AccessShareLock);

	tup = FUNC9(TYPEOID, FUNC6(domainoid));
	if (!FUNC3(tup))
		FUNC14(ERROR, "cache lookup failed for type %u", domainoid);

	/* Check it's a domain and check user has permission for ALTER DOMAIN */
	FUNC13(tup);

	/*
	 * Find and check the target constraint
	 */
	conrel = FUNC25(ConstraintRelationId, RowExclusiveLock);

	FUNC8(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(InvalidOid));
	FUNC8(&skey[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(domainoid));
	FUNC8(&skey[2],
				Anum_pg_constraint_conname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(constrName));

	scan = FUNC21(conrel, ConstraintRelidTypidNameIndexId, true,
							  NULL, 3, skey);

	/* There can be at most one matching row */
	if (!FUNC3(tuple = FUNC23(scan)))
		FUNC15(ERROR,
				(FUNC16(ERRCODE_UNDEFINED_OBJECT),
				 FUNC17("constraint \"%s\" of domain \"%s\" does not exist",
						constrName, FUNC12(typename))));

	con = (Form_pg_constraint) FUNC2(tuple);
	if (con->contype != CONSTRAINT_CHECK)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC17("constraint \"%s\" of domain \"%s\" is not a check constraint",
						constrName, FUNC12(typename))));

	val = FUNC10(CONSTROID, tuple,
						  Anum_pg_constraint_conbin,
						  &isnull);
	if (isnull)
		FUNC14(ERROR, "null conbin for constraint %u",
			 con->oid);
	conbin = FUNC11(val);

	FUNC27(domainoid, conbin);

	/*
	 * Now update the catalog, while we have the door open.
	 */
	copyTuple = FUNC18(tuple);
	copy_con = (Form_pg_constraint) FUNC2(copyTuple);
	copy_con->convalidated = true;
	FUNC1(conrel, &copyTuple->t_self, copyTuple);

	FUNC4(ConstraintRelationId, con->oid, 0);

	FUNC5(address, TypeRelationId, domainoid);

	FUNC19(copyTuple);

	FUNC22(scan);

	FUNC24(typrel, AccessShareLock);
	FUNC24(conrel, RowExclusiveLock);

	FUNC7(tup);

	return address;
}