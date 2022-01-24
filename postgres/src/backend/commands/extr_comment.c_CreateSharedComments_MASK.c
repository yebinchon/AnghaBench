#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_shdescription_classoid ; 
 int Anum_pg_shdescription_description ; 
 int Anum_pg_shdescription_objoid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int Natts_pg_shdescription ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDescriptionObjIndexId ; 
 int /*<<< orphan*/  SharedDescriptionRelationId ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(Oid oid, Oid classoid, const char *comment)
{
	Relation	shdescription;
	ScanKeyData skey[2];
	SysScanDesc sd;
	HeapTuple	oldtuple;
	HeapTuple	newtuple = NULL;
	Datum		values[Natts_pg_shdescription];
	bool		nulls[Natts_pg_shdescription];
	bool		replaces[Natts_pg_shdescription];
	int			i;

	/* Reduce empty-string to NULL case */
	if (comment != NULL && FUNC10(comment) == 0)
		comment = NULL;

	/* Prepare to form or update a tuple, if necessary */
	if (comment != NULL)
	{
		for (i = 0; i < Natts_pg_shdescription; i++)
		{
			nulls[i] = false;
			replaces[i] = true;
		}
		values[Anum_pg_shdescription_objoid - 1] = FUNC4(oid);
		values[Anum_pg_shdescription_classoid - 1] = FUNC4(classoid);
		values[Anum_pg_shdescription_description - 1] = FUNC0(comment);
	}

	/* Use the index to search for a matching old tuple */

	FUNC6(&skey[0],
				Anum_pg_shdescription_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(oid));
	FUNC6(&skey[1],
				Anum_pg_shdescription_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(classoid));

	shdescription = FUNC15(SharedDescriptionRelationId, RowExclusiveLock);

	sd = FUNC11(shdescription, SharedDescriptionObjIndexId, true,
							NULL, 2, skey);

	while ((oldtuple = FUNC13(sd)) != NULL)
	{
		/* Found the old tuple, so delete or update it */

		if (comment == NULL)
			FUNC1(shdescription, &oldtuple->t_self);
		else
		{
			newtuple = FUNC9(oldtuple, FUNC5(shdescription),
										 values, nulls, replaces);
			FUNC3(shdescription, &oldtuple->t_self, newtuple);
		}

		break;					/* Assume there can be only one match */
	}

	FUNC12(sd);

	/* If we didn't find an old tuple, insert a new one */

	if (newtuple == NULL && comment != NULL)
	{
		newtuple = FUNC7(FUNC5(shdescription),
								   values, nulls);
		FUNC2(shdescription, newtuple);
	}

	if (newtuple != NULL)
		FUNC8(newtuple);

	/* Done */

	FUNC14(shdescription, NoLock);
}