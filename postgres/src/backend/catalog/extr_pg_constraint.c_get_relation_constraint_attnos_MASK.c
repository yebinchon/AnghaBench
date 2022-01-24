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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
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
 int /*<<< orphan*/  Anum_pg_constraint_conname ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2OID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Bitmapset *
FUNC25(Oid relid, const char *conname,
							   bool missing_ok, Oid *constraintOid)
{
	Bitmapset  *conattnos = NULL;
	Relation	pg_constraint;
	HeapTuple	tuple;
	SysScanDesc scan;
	ScanKeyData skey[3];

	/* Set *constraintOid, to avoid complaints about uninitialized vars */
	*constraintOid = InvalidOid;

	pg_constraint = FUNC24(ConstraintRelationId, AccessShareLock);

	FUNC12(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(relid));
	FUNC12(&skey[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(InvalidOid));
	FUNC12(&skey[2],
				Anum_pg_constraint_conname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC5(conname));

	scan = FUNC20(pg_constraint, ConstraintRelidTypidNameIndexId, true,
							  NULL, 3, skey);

	/* There can be at most one matching row */
	if (FUNC8(tuple = FUNC22(scan)))
	{
		Datum		adatum;
		bool		isNull;

		*constraintOid = ((Form_pg_constraint) FUNC7(tuple))->oid;

		/* Extract the conkey array, ie, attnums of constrained columns */
		adatum = FUNC19(tuple, Anum_pg_constraint_conkey,
							  FUNC11(pg_constraint), &isNull);
		if (!isNull)
		{
			ArrayType  *arr;
			int			numcols;
			int16	   *attnums;
			int			i;

			arr = FUNC6(adatum);	/* ensure not toasted */
			numcols = FUNC1(arr)[0];
			if (FUNC4(arr) != 1 ||
				numcols < 0 ||
				FUNC3(arr) ||
				FUNC2(arr) != INT2OID)
				FUNC14(ERROR, "conkey is not a 1-D smallint array");
			attnums = (int16 *) FUNC0(arr);

			/* Construct the result value */
			for (i = 0; i < numcols; i++)
			{
				conattnos = FUNC13(conattnos,
										   attnums[i] - FirstLowInvalidHeapAttributeNumber);
			}
		}
	}

	FUNC21(scan);

	/* If no such constraint exists, complain */
	if (!FUNC10(*constraintOid) && !missing_ok)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_UNDEFINED_OBJECT),
				 FUNC17("constraint \"%s\" for table \"%s\" does not exist",
						conname, FUNC18(relid))));

	FUNC23(pg_constraint, AccessShareLock);

	return conattnos;
}