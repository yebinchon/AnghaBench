#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_description_classoid ; 
 int /*<<< orphan*/  Anum_pg_description_description ; 
 int /*<<< orphan*/  Anum_pg_description_objoid ; 
 int /*<<< orphan*/  Anum_pg_description_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DescriptionObjIndexId ; 
 int /*<<< orphan*/  DescriptionRelationId ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC11(Oid oid, Oid classoid, int32 subid)
{
	Relation	description;
	ScanKeyData skey[3];
	SysScanDesc sd;
	TupleDesc	tupdesc;
	HeapTuple	tuple;
	char	   *comment;

	/* Use the index to search for a matching old tuple */

	FUNC3(&skey[0],
				Anum_pg_description_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(oid));
	FUNC3(&skey[1],
				Anum_pg_description_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(classoid));
	FUNC3(&skey[2],
				Anum_pg_description_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC0(subid));

	description = FUNC10(DescriptionRelationId, AccessShareLock);
	tupdesc = FUNC2(description);

	sd = FUNC6(description, DescriptionObjIndexId, true,
							NULL, 3, skey);

	comment = NULL;
	while ((tuple = FUNC8(sd)) != NULL)
	{
		Datum		value;
		bool		isnull;

		/* Found the tuple, get description field */
		value = FUNC5(tuple, Anum_pg_description_description, tupdesc, &isnull);
		if (!isnull)
			comment = FUNC4(value);
		break;					/* Assume there can be only one match */
	}

	FUNC7(sd);

	/* Done */
	FUNC9(description, AccessShareLock);

	return comment;
}