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
struct TYPE_4__ {scalar_t__ relkind; } ;
struct TYPE_3__ {scalar_t__ refobjsubid; scalar_t__ classid; scalar_t__ objsubid; scalar_t__ deptype; int /*<<< orphan*/  objid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ DEPENDENCY_AUTO ; 
 scalar_t__ DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(Oid relationOid, Oid newOwnerId, LOCKMODE lockmode)
{
	Relation	depRel;
	SysScanDesc scan;
	ScanKeyData key[2];
	HeapTuple	tup;

	/*
	 * SERIAL sequences are those having an auto dependency on one of the
	 * table's columns (we don't care *which* column, exactly).
	 */
	depRel = FUNC11(DependRelationId, AccessShareLock);

	FUNC5(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(RelationRelationId));
	FUNC5(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relationOid));
	/* we leave refobjsubid unspecified */

	scan = FUNC8(depRel, DependReferenceIndexId, true,
							  NULL, 2, key);

	while (FUNC2(tup = FUNC10(scan)))
	{
		Form_pg_depend depForm = (Form_pg_depend) FUNC1(tup);
		Relation	seqRel;

		/* skip dependencies other than auto dependencies on columns */
		if (depForm->refobjsubid == 0 ||
			depForm->classid != RelationRelationId ||
			depForm->objsubid != 0 ||
			!(depForm->deptype == DEPENDENCY_AUTO || depForm->deptype == DEPENDENCY_INTERNAL))
			continue;

		/* Use relation_open just in case it's an index */
		seqRel = FUNC7(depForm->objid, lockmode);

		/* skip non-sequence relations */
		if (FUNC4(seqRel)->relkind != RELKIND_SEQUENCE)
		{
			/* No need to keep the lock */
			FUNC6(seqRel, lockmode);
			continue;
		}

		/* We don't need to close the sequence while we alter it. */
		FUNC0(depForm->objid, newOwnerId, true, lockmode);

		/* Now we can close it.  Keep the lock till end of transaction. */
		FUNC6(seqRel, NoLock);
	}

	FUNC9(scan);

	FUNC6(depRel, AccessShareLock);
}