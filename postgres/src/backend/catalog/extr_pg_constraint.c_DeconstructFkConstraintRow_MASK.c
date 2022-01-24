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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_constraint_conffeqop ; 
 int /*<<< orphan*/  Anum_pg_constraint_confkey ; 
 int /*<<< orphan*/  Anum_pg_constraint_conkey ; 
 int /*<<< orphan*/  Anum_pg_constraint_conpfeqop ; 
 int /*<<< orphan*/  Anum_pg_constraint_conppeqop ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ INT2OID ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(HeapTuple tuple, int *numfks,
						   AttrNumber *conkey, AttrNumber *confkey,
						   Oid *pf_eq_oprs, Oid *pp_eq_oprs, Oid *ff_eq_oprs)
{
	Oid			constrId;
	Datum		adatum;
	bool		isNull;
	ArrayType  *arr;
	int			numkeys;

	constrId = ((Form_pg_constraint) FUNC7(tuple))->oid;

	/*
	 * We expect the arrays to be 1-D arrays of the right types; verify that.
	 * We don't need to use deconstruct_array() since the array data is just
	 * going to look like a C array of values.
	 */
	adatum = FUNC8(CONSTROID, tuple,
							 Anum_pg_constraint_conkey, &isNull);
	if (isNull)
		FUNC9(ERROR, "null conkey for constraint %u", constrId);
	arr = FUNC5(adatum);	/* ensure not toasted */
	if (FUNC4(arr) != 1 ||
		FUNC3(arr) ||
		FUNC2(arr) != INT2OID)
		FUNC9(ERROR, "conkey is not a 1-D smallint array");
	numkeys = FUNC1(arr)[0];
	if (numkeys <= 0 || numkeys > INDEX_MAX_KEYS)
		FUNC9(ERROR, "foreign key constraint cannot have %d columns", numkeys);
	FUNC10(conkey, FUNC0(arr), numkeys * sizeof(int16));
	if ((Pointer) arr != FUNC6(adatum))
		FUNC11(arr);				/* free de-toasted copy, if any */

	adatum = FUNC8(CONSTROID, tuple,
							 Anum_pg_constraint_confkey, &isNull);
	if (isNull)
		FUNC9(ERROR, "null confkey for constraint %u", constrId);
	arr = FUNC5(adatum);	/* ensure not toasted */
	if (FUNC4(arr) != 1 ||
		FUNC1(arr)[0] != numkeys ||
		FUNC3(arr) ||
		FUNC2(arr) != INT2OID)
		FUNC9(ERROR, "confkey is not a 1-D smallint array");
	FUNC10(confkey, FUNC0(arr), numkeys * sizeof(int16));
	if ((Pointer) arr != FUNC6(adatum))
		FUNC11(arr);				/* free de-toasted copy, if any */

	if (pf_eq_oprs)
	{
		adatum = FUNC8(CONSTROID, tuple,
								 Anum_pg_constraint_conpfeqop, &isNull);
		if (isNull)
			FUNC9(ERROR, "null conpfeqop for constraint %u", constrId);
		arr = FUNC5(adatum);	/* ensure not toasted */
		/* see TryReuseForeignKey if you change the test below */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numkeys ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC9(ERROR, "conpfeqop is not a 1-D Oid array");
		FUNC10(pf_eq_oprs, FUNC0(arr), numkeys * sizeof(Oid));
		if ((Pointer) arr != FUNC6(adatum))
			FUNC11(arr);			/* free de-toasted copy, if any */
	}

	if (pp_eq_oprs)
	{
		adatum = FUNC8(CONSTROID, tuple,
								 Anum_pg_constraint_conppeqop, &isNull);
		if (isNull)
			FUNC9(ERROR, "null conppeqop for constraint %u", constrId);
		arr = FUNC5(adatum);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numkeys ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC9(ERROR, "conppeqop is not a 1-D Oid array");
		FUNC10(pp_eq_oprs, FUNC0(arr), numkeys * sizeof(Oid));
		if ((Pointer) arr != FUNC6(adatum))
			FUNC11(arr);			/* free de-toasted copy, if any */
	}

	if (ff_eq_oprs)
	{
		adatum = FUNC8(CONSTROID, tuple,
								 Anum_pg_constraint_conffeqop, &isNull);
		if (isNull)
			FUNC9(ERROR, "null conffeqop for constraint %u", constrId);
		arr = FUNC5(adatum);	/* ensure not toasted */
		if (FUNC4(arr) != 1 ||
			FUNC1(arr)[0] != numkeys ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC9(ERROR, "conffeqop is not a 1-D Oid array");
		FUNC10(ff_eq_oprs, FUNC0(arr), numkeys * sizeof(Oid));
		if ((Pointer) arr != FUNC6(adatum))
			FUNC11(arr);			/* free de-toasted copy, if any */
	}

	*numfks = numkeys;
}