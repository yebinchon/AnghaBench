#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ relkind; int /*<<< orphan*/  reltype; } ;
struct TYPE_3__ {scalar_t__ refobjsubid; scalar_t__ classid; scalar_t__ objsubid; scalar_t__ deptype; int /*<<< orphan*/  objid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ DEPENDENCY_AUTO ; 
 scalar_t__ DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(Relation classRel, Relation rel,
				   Oid oldNspOid, Oid newNspOid, ObjectAddresses *objsMoved,
				   LOCKMODE lockmode)
{
	Relation	depRel;
	SysScanDesc scan;
	ScanKeyData key[2];
	HeapTuple	tup;

	/*
	 * SERIAL sequences are those having an auto dependency on one of the
	 * table's columns (we don't care *which* column, exactly).
	 */
	depRel = FUNC13(DependRelationId, AccessShareLock);

	FUNC7(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(RelationRelationId));
	FUNC7(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC6(rel)));
	/* we leave refobjsubid unspecified */

	scan = FUNC10(depRel, DependReferenceIndexId, true,
							  NULL, 2, key);

	while (FUNC3(tup = FUNC12(scan)))
	{
		Form_pg_depend depForm = (Form_pg_depend) FUNC2(tup);
		Relation	seqRel;

		/* skip dependencies other than auto dependencies on columns */
		if (depForm->refobjsubid == 0 ||
			depForm->classid != RelationRelationId ||
			depForm->objsubid != 0 ||
			!(depForm->deptype == DEPENDENCY_AUTO || depForm->deptype == DEPENDENCY_INTERNAL))
			continue;

		/* Use relation_open just in case it's an index */
		seqRel = FUNC9(depForm->objid, lockmode);

		/* skip non-sequence relations */
		if (FUNC5(seqRel)->relkind != RELKIND_SEQUENCE)
		{
			/* No need to keep the lock */
			FUNC8(seqRel, lockmode);
			continue;
		}

		/* Fix the pg_class and pg_depend entries */
		FUNC0(classRel, depForm->objid,
									   oldNspOid, newNspOid,
									   true, objsMoved);

		/*
		 * Sequences have entries in pg_type. We need to be careful to move
		 * them to the new namespace, too.
		 */
		FUNC1(FUNC5(seqRel)->reltype,
								   newNspOid, false, false, objsMoved);

		/* Now we can close it.  Keep the lock till end of transaction. */
		FUNC8(seqRel, NoLock);
	}

	FUNC11(scan);

	FUNC8(depRel, AccessShareLock);
}