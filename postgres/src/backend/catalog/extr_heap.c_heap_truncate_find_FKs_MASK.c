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
struct TYPE_2__ {scalar_t__ contype; int /*<<< orphan*/  conrelid; int /*<<< orphan*/  confrelid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_oid_cmp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC11(List *relationIds)
{
	List	   *result = NIL;
	Relation	fkeyRel;
	SysScanDesc fkeyScan;
	HeapTuple	tuple;

	/*
	 * Must scan pg_constraint.  Right now, it is a seqscan because there is
	 * no available index on confrelid.
	 */
	fkeyRel = FUNC10(ConstraintRelationId, AccessShareLock);

	fkeyScan = FUNC6(fkeyRel, InvalidOid, false,
								  NULL, 0, NULL);

	while (FUNC1(tuple = FUNC8(fkeyScan)))
	{
		Form_pg_constraint con = (Form_pg_constraint) FUNC0(tuple);

		/* Not a foreign key */
		if (con->contype != CONSTRAINT_FOREIGN)
			continue;

		/* Not referencing one of our list of tables */
		if (!FUNC4(relationIds, con->confrelid))
			continue;

		/* Add referencer to result, unless present in input list */
		if (!FUNC4(relationIds, con->conrelid))
			result = FUNC2(result, con->conrelid);
	}

	FUNC7(fkeyScan);
	FUNC9(fkeyRel, AccessShareLock);

	/* Now sort and de-duplicate the result list */
	FUNC5(result, list_oid_cmp);
	FUNC3(result);

	return result;
}