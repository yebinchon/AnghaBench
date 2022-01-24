#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int Anum_pg_extension_extcondition ; 
 int Anum_pg_extension_extconfig ; 
 int /*<<< orphan*/  Anum_pg_extension_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExtensionOidIndexId ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int Natts_pg_extension ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TEXTOID ; 
 int /*<<< orphan*/ * FUNC13 (int*,int,scalar_t__,int,int,char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,int,int,char,int**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(Oid extensionoid, Oid tableoid)
{
	Relation	extRel;
	ScanKeyData key[1];
	SysScanDesc extScan;
	HeapTuple	extTup;
	Datum		arrayDatum;
	int			arrayLength;
	int			arrayIndex;
	bool		isnull;
	Datum		repl_val[Natts_pg_extension];
	bool		repl_null[Natts_pg_extension];
	bool		repl_repl[Natts_pg_extension];
	ArrayType  *a;

	/* Find the pg_extension tuple */
	extRel = FUNC23(ExtensionRelationId, RowExclusiveLock);

	FUNC12(&key[0],
				Anum_pg_extension_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(extensionoid));

	extScan = FUNC19(extRel, ExtensionOidIndexId, true,
								 NULL, 1, key);

	extTup = FUNC21(extScan);

	if (!FUNC8(extTup))	/* should not happen */
		FUNC15(ERROR, "could not find tuple for extension %u",
			 extensionoid);

	/* Search extconfig for the tableoid */
	arrayDatum = FUNC16(extTup, Anum_pg_extension_extconfig,
							  FUNC11(extRel), &isnull);
	if (isnull)
	{
		/* nothing to do */
		a = NULL;
		arrayLength = 0;
		arrayIndex = -1;
	}
	else
	{
		Oid		   *arrayData;
		int			i;

		a = FUNC7(arrayDatum);

		arrayLength = FUNC1(a)[0];
		if (FUNC5(a) != 1 ||
			FUNC4(a)[0] != 1 ||
			arrayLength < 0 ||
			FUNC3(a) ||
			FUNC2(a) != OIDOID)
			FUNC15(ERROR, "extconfig is not a 1-D Oid array");
		arrayData = (Oid *) FUNC0(a);

		arrayIndex = -1;		/* flag for no deletion needed */

		for (i = 0; i < arrayLength; i++)
		{
			if (arrayData[i] == tableoid)
			{
				arrayIndex = i; /* index to remove */
				break;
			}
		}
	}

	/* If tableoid is not in extconfig, nothing to do */
	if (arrayIndex < 0)
	{
		FUNC20(extScan);
		FUNC22(extRel, RowExclusiveLock);
		return;
	}

	/* Modify or delete the extconfig value */
	FUNC18(repl_val, 0, sizeof(repl_val));
	FUNC18(repl_null, false, sizeof(repl_null));
	FUNC18(repl_repl, false, sizeof(repl_repl));

	if (arrayLength <= 1)
	{
		/* removing only element, just set array to null */
		repl_null[Anum_pg_extension_extconfig - 1] = true;
	}
	else
	{
		/* squeeze out the target element */
		Datum	   *dvalues;
		int			nelems;
		int			i;

		/* We already checked there are no nulls */
		FUNC14(a, OIDOID, sizeof(Oid), true, 'i',
						  &dvalues, NULL, &nelems);

		for (i = arrayIndex; i < arrayLength - 1; i++)
			dvalues[i] = dvalues[i + 1];

		a = FUNC13(dvalues, arrayLength - 1,
							OIDOID, sizeof(Oid), true, 'i');

		repl_val[Anum_pg_extension_extconfig - 1] = FUNC10(a);
	}
	repl_repl[Anum_pg_extension_extconfig - 1] = true;

	/* Modify or delete the extcondition value */
	arrayDatum = FUNC16(extTup, Anum_pg_extension_extcondition,
							  FUNC11(extRel), &isnull);
	if (isnull)
	{
		FUNC15(ERROR, "extconfig and extcondition arrays do not match");
	}
	else
	{
		a = FUNC7(arrayDatum);

		if (FUNC5(a) != 1 ||
			FUNC4(a)[0] != 1 ||
			FUNC3(a) ||
			FUNC2(a) != TEXTOID)
			FUNC15(ERROR, "extcondition is not a 1-D text array");
		if (FUNC1(a)[0] != arrayLength)
			FUNC15(ERROR, "extconfig and extcondition arrays do not match");
	}

	if (arrayLength <= 1)
	{
		/* removing only element, just set array to null */
		repl_null[Anum_pg_extension_extcondition - 1] = true;
	}
	else
	{
		/* squeeze out the target element */
		Datum	   *dvalues;
		int			nelems;
		int			i;

		/* We already checked there are no nulls */
		FUNC14(a, TEXTOID, -1, false, 'i',
						  &dvalues, NULL, &nelems);

		for (i = arrayIndex; i < arrayLength - 1; i++)
			dvalues[i] = dvalues[i + 1];

		a = FUNC13(dvalues, arrayLength - 1,
							TEXTOID, -1, false, 'i');

		repl_val[Anum_pg_extension_extcondition - 1] = FUNC10(a);
	}
	repl_repl[Anum_pg_extension_extcondition - 1] = true;

	extTup = FUNC17(extTup, FUNC11(extRel),
							   repl_val, repl_null, repl_repl);

	FUNC6(extRel, &extTup->t_self, extTup);

	FUNC20(extScan);

	FUNC22(extRel, RowExclusiveLock);
}