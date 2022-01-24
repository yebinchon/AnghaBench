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
struct TYPE_2__ {scalar_t__ refclassid; scalar_t__ deptype; int /*<<< orphan*/  refobjid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_depend_classid ; 
 int /*<<< orphan*/  Anum_pg_depend_objid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ DEPENDENCY_EXTENSION ; 
 int /*<<< orphan*/  DependDependerIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 scalar_t__ ExtensionRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC9(Oid classId, Oid objectId)
{
	Oid			result = InvalidOid;
	Relation	depRel;
	ScanKeyData key[2];
	SysScanDesc scan;
	HeapTuple	tup;

	depRel = FUNC8(DependRelationId, AccessShareLock);

	FUNC3(&key[0],
				Anum_pg_depend_classid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(classId));
	FUNC3(&key[1],
				Anum_pg_depend_objid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(objectId));

	scan = FUNC4(depRel, DependDependerIndexId, true,
							  NULL, 2, key);

	while (FUNC1((tup = FUNC6(scan))))
	{
		Form_pg_depend depform = (Form_pg_depend) FUNC0(tup);

		if (depform->refclassid == ExtensionRelationId &&
			depform->deptype == DEPENDENCY_EXTENSION)
		{
			result = depform->refobjid;
			break;				/* no need to keep scanning */
		}
	}

	FUNC5(scan);

	FUNC7(depRel, AccessShareLock);

	return result;
}