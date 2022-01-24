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
typedef  scalar_t__ int16 ;
struct TYPE_2__ {scalar_t__ contype; int /*<<< orphan*/  oid; scalar_t__ condeferrable; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conkey ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_PRIMARY ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2OID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Bitmapset *
FUNC19(Oid relid, bool deferrableOk, Oid *constraintOid)
{
	Bitmapset  *pkattnos = NULL;
	Relation	pg_constraint;
	HeapTuple	tuple;
	SysScanDesc scan;
	ScanKeyData skey[1];

	/* Set *constraintOid, to avoid complaints about uninitialized vars */
	*constraintOid = InvalidOid;

	/* Scan pg_constraint for constraints of the target rel */
	pg_constraint = FUNC18(ConstraintRelationId, AccessShareLock);

	FUNC10(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC8(relid));

	scan = FUNC14(pg_constraint, ConstraintRelidTypidNameIndexId, true,
							  NULL, 1, skey);

	while (FUNC7(tuple = FUNC16(scan)))
	{
		Form_pg_constraint con = (Form_pg_constraint) FUNC6(tuple);
		Datum		adatum;
		bool		isNull;
		ArrayType  *arr;
		int16	   *attnums;
		int			numkeys;
		int			i;

		/* Skip constraints that are not PRIMARY KEYs */
		if (con->contype != CONSTRAINT_PRIMARY)
			continue;

		/*
		 * If the primary key is deferrable, but we've been instructed to
		 * ignore deferrable constraints, then we might as well give up
		 * searching, since there can only be a single primary key on a table.
		 */
		if (con->condeferrable && !deferrableOk)
			break;

		/* Extract the conkey array, ie, attnums of PK's columns */
		adatum = FUNC13(tuple, Anum_pg_constraint_conkey,
							  FUNC9(pg_constraint), &isNull);
		if (isNull)
			FUNC12(ERROR, "null conkey for constraint %u",
				 ((Form_pg_constraint) FUNC6(tuple))->oid);
		arr = FUNC5(adatum);	/* ensure not toasted */
		numkeys = FUNC1(arr)[0];
		if (FUNC4(arr) != 1 ||
			numkeys < 0 ||
			FUNC3(arr) ||
			FUNC2(arr) != INT2OID)
			FUNC12(ERROR, "conkey is not a 1-D smallint array");
		attnums = (int16 *) FUNC0(arr);

		/* Construct the result value */
		for (i = 0; i < numkeys; i++)
		{
			pkattnos = FUNC11(pkattnos,
									  attnums[i] - FirstLowInvalidHeapAttributeNumber);
		}
		*constraintOid = ((Form_pg_constraint) FUNC6(tuple))->oid;

		/* No need to search further */
		break;
	}

	FUNC15(scan);

	FUNC17(pg_constraint, AccessShareLock);

	return pkattnos;
}