#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ classid; scalar_t__ objsubid; scalar_t__ deptype; int /*<<< orphan*/  objid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ ConstraintRelationId ; 
 scalar_t__ DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC11(Oid indexId)
{
	List	   *result = NIL;
	Relation	depRel;
	ScanKeyData key[3];
	SysScanDesc scan;
	HeapTuple	tup;

	/* Search the dependency table for the index */
	depRel = FUNC10(DependRelationId, AccessShareLock);

	FUNC4(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(RelationRelationId));
	FUNC4(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(indexId));
	FUNC4(&key[2],
				Anum_pg_depend_refobjsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC2(0));

	scan = FUNC6(depRel, DependReferenceIndexId, true,
							  NULL, 3, key);

	while (FUNC1(tup = FUNC8(scan)))
	{
		Form_pg_depend deprec = (Form_pg_depend) FUNC0(tup);

		/*
		 * We assume any normal dependency from a constraint must be what we
		 * are looking for.
		 */
		if (deprec->classid == ConstraintRelationId &&
			deprec->objsubid == 0 &&
			deprec->deptype == DEPENDENCY_NORMAL)
		{
			result = FUNC5(result, deprec->objid);
		}
	}

	FUNC7(scan);
	FUNC9(depRel, AccessShareLock);

	return result;
}