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
struct TYPE_2__ {scalar_t__ conindid; scalar_t__ oid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC8(Oid relationId, Oid indexId)
{
	Relation	pg_constraint;
	SysScanDesc scan;
	ScanKeyData key;
	HeapTuple	tuple;
	Oid			constraintId = InvalidOid;

	pg_constraint = FUNC7(ConstraintRelationId, AccessShareLock);

	FUNC2(&key,
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC1(relationId));
	scan = FUNC3(pg_constraint, ConstraintRelidTypidNameIndexId,
							  true, NULL, 1, &key);
	while ((tuple = FUNC5(scan)) != NULL)
	{
		Form_pg_constraint constrForm;

		constrForm = (Form_pg_constraint) FUNC0(tuple);
		if (constrForm->conindid == indexId)
		{
			constraintId = constrForm->oid;
			break;
		}
	}
	FUNC4(scan);

	FUNC6(pg_constraint, AccessShareLock);
	return constraintId;
}