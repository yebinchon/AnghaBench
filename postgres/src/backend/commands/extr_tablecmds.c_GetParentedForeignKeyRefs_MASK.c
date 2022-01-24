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
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  conparentid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_confrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contype ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  F_CHAREQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_KEY ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC15(Relation partition)
{
	Relation	pg_constraint;
	HeapTuple	tuple;
	SysScanDesc scan;
	ScanKeyData key[2];
	List	   *constraints = NIL;

	/*
	 * If no indexes, or no columns are referenceable by FKs, we can avoid the
	 * scan.
	 */
	if (FUNC5(partition) == NIL ||
		FUNC8(FUNC4(partition,
												INDEX_ATTR_BITMAP_KEY)))
		return NIL;

	/* Search for constraints referencing this table */
	pg_constraint = FUNC14(ConstraintRelationId, AccessShareLock);
	FUNC7(&key[0],
				Anum_pg_constraint_confrelid, BTEqualStrategyNumber,
				F_OIDEQ, FUNC2(FUNC6(partition)));
	FUNC7(&key[1],
				Anum_pg_constraint_contype, BTEqualStrategyNumber,
				F_CHAREQ, FUNC0(CONSTRAINT_FOREIGN));

	/* XXX This is a seqscan, as we don't have a usable index */
	scan = FUNC10(pg_constraint, InvalidOid, true, NULL, 2, key);
	while ((tuple = FUNC12(scan)) != NULL)
	{
		Form_pg_constraint constrForm = (Form_pg_constraint) FUNC1(tuple);

		/*
		 * We only need to process constraints that are part of larger ones.
		 */
		if (!FUNC3(constrForm->conparentid))
			continue;

		constraints = FUNC9(constraints, constrForm->oid);
	}

	FUNC11(scan);
	FUNC13(pg_constraint, AccessShareLock);

	return constraints;
}