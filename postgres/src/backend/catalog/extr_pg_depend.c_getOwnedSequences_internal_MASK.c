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
struct TYPE_2__ {scalar_t__ classid; scalar_t__ objsubid; scalar_t__ refobjsubid; char deptype; int /*<<< orphan*/  objid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_depend ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 char DEPENDENCY_AUTO ; 
 char DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC12(Oid relid, AttrNumber attnum, char deptype)
{
	List	   *result = NIL;
	Relation	depRel;
	ScanKeyData key[3];
	SysScanDesc scan;
	HeapTuple	tup;

	depRel = FUNC11(DependRelationId, AccessShareLock);

	FUNC4(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(RelationRelationId));
	FUNC4(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relid));
	if (attnum)
		FUNC4(&key[2],
					Anum_pg_depend_refobjsubid,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC2(attnum));

	scan = FUNC7(depRel, DependReferenceIndexId, true,
							  NULL, attnum ? 3 : 2, key);

	while (FUNC1(tup = FUNC9(scan)))
	{
		Form_pg_depend deprec = (Form_pg_depend) FUNC0(tup);

		/*
		 * We assume any auto or internal dependency of a sequence on a column
		 * must be what we are looking for.  (We need the relkind test because
		 * indexes can also have auto dependencies on columns.)
		 */
		if (deprec->classid == RelationRelationId &&
			deprec->objsubid == 0 &&
			deprec->refobjsubid != 0 &&
			(deprec->deptype == DEPENDENCY_AUTO || deprec->deptype == DEPENDENCY_INTERNAL) &&
			FUNC5(deprec->objid) == RELKIND_SEQUENCE)
		{
			if (!deptype || deprec->deptype == deptype)
				result = FUNC6(result, deprec->objid);
		}
	}

	FUNC8(scan);

	FUNC10(depRel, AccessShareLock);

	return result;
}