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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  DropBehavior ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conname ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC22(List *names, const char *constrName,
						  DropBehavior behavior, bool missing_ok)
{
	TypeName   *typename;
	Oid			domainoid;
	HeapTuple	tup;
	Relation	rel;
	Relation	conrel;
	SysScanDesc conscan;
	ScanKeyData skey[3];
	HeapTuple	contup;
	bool		found = false;
	ObjectAddress address;

	/* Make a TypeName so we can use standard type lookup machinery */
	typename = FUNC14(names);
	domainoid = FUNC21(NULL, typename);

	/* Look up the domain in the type table */
	rel = FUNC20(TypeRelationId, RowExclusiveLock);

	tup = FUNC7(TYPEOID, FUNC5(domainoid));
	if (!FUNC3(tup))
		FUNC10(ERROR, "cache lookup failed for type %u", domainoid);

	/* Check it's a domain and check user has permission for ALTER DOMAIN */
	FUNC9(tup);

	/* Grab an appropriate lock on the pg_constraint relation */
	conrel = FUNC20(ConstraintRelationId, RowExclusiveLock);

	/* Find and remove the target constraint */
	FUNC6(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(InvalidOid));
	FUNC6(&skey[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(domainoid));
	FUNC6(&skey[2],
				Anum_pg_constraint_conname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(constrName));

	conscan = FUNC16(conrel, ConstraintRelidTypidNameIndexId, true,
								 NULL, 3, skey);

	/* There can be at most one matching row */
	if ((contup = FUNC18(conscan)) != NULL)
	{
		ObjectAddress conobj;

		conobj.classId = ConstraintRelationId;
		conobj.objectId = ((Form_pg_constraint) FUNC2(contup))->oid;
		conobj.objectSubId = 0;

		FUNC15(&conobj, behavior, 0);
		found = true;
	}

	/* Clean up after the scan */
	FUNC17(conscan);
	FUNC19(conrel, RowExclusiveLock);

	if (!found)
	{
		if (!missing_ok)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_UNDEFINED_OBJECT),
					 FUNC13("constraint \"%s\" of domain \"%s\" does not exist",
							constrName, FUNC8(typename))));
		else
			FUNC11(NOTICE,
					(FUNC13("constraint \"%s\" of domain \"%s\" does not exist, skipping",
							constrName, FUNC8(typename))));
	}

	/*
	 * We must send out an sinval message for the domain, to ensure that any
	 * dependent plans get rebuilt.  Since this command doesn't change the
	 * domain's pg_type row, that won't happen automatically; do it manually.
	 */
	FUNC1(rel, tup, NULL);

	FUNC4(address, TypeRelationId, domainoid);

	/* Clean up */
	FUNC19(rel, RowExclusiveLock);

	return address;
}