#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  float4 ;
struct TYPE_8__ {scalar_t__ staop; scalar_t__ stacoll; int nnumbers; int /*<<< orphan*/ * numbers_arr; int /*<<< orphan*/ * numbers; int /*<<< orphan*/ * values_arr; int /*<<< orphan*/  nvalues; int /*<<< orphan*/  values; scalar_t__ valuetype; } ;
struct TYPE_7__ {int stakind1; scalar_t__ staop1; scalar_t__ stacoll1; } ;
struct TYPE_6__ {int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typlen; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  TYPE_2__* Form_pg_statistic ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ AttStatsSlot ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int ATTSTATSSLOT_NUMBERS ; 
 int ATTSTATSSLOT_VALUES ; 
 scalar_t__ Anum_pg_statistic_stanumbers1 ; 
 scalar_t__ Anum_pg_statistic_stavalues1 ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FLOAT4OID ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int STATISTIC_NUM_SLOTS ; 
 int /*<<< orphan*/  STATRELATTINH ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

bool
FUNC16(AttStatsSlot *sslot, HeapTuple statstuple,
				 int reqkind, Oid reqop, int flags)
{
	Form_pg_statistic stats = (Form_pg_statistic) FUNC6(statstuple);
	int			i;
	Datum		val;
	bool		isnull;
	ArrayType  *statarray;
	Oid			arrayelemtype;
	int			narrayelem;
	HeapTuple	typeTuple;
	Form_pg_type typeForm;

	/* initialize *sslot properly */
	FUNC14(sslot, 0, sizeof(AttStatsSlot));

	for (i = 0; i < STATISTIC_NUM_SLOTS; i++)
	{
		if ((&stats->stakind1)[i] == reqkind &&
			(reqop == InvalidOid || (&stats->staop1)[i] == reqop))
			break;
	}
	if (i >= STATISTIC_NUM_SLOTS)
		return false;			/* not there */

	sslot->staop = (&stats->staop1)[i];
	sslot->stacoll = (&stats->stacoll1)[i];

	/*
	 * XXX Hopefully-temporary hack: if stacoll isn't set, inject the default
	 * collation.  This won't matter for non-collation-aware datatypes.  For
	 * those that are, this covers cases where stacoll has not been set.  In
	 * the short term we need this because some code paths involving type NAME
	 * do not pass any collation to prefix_selectivity and related functions.
	 * Even when that's been fixed, it's likely that some add-on typanalyze
	 * functions won't get the word right away about filling stacoll during
	 * ANALYZE, so we'll probably need this for awhile.
	 */
	if (sslot->stacoll == InvalidOid)
		sslot->stacoll = DEFAULT_COLLATION_OID;

	if (flags & ATTSTATSSLOT_VALUES)
	{
		val = FUNC11(STATRELATTINH, statstuple,
							  Anum_pg_statistic_stavalues1 + i,
							  &isnull);
		if (isnull)
			FUNC13(ERROR, "stavalues is null");

		/*
		 * Detoast the array if needed, and in any case make a copy that's
		 * under control of this AttStatsSlot.
		 */
		statarray = FUNC5(val);

		/*
		 * Extract the actual array element type, and pass it back in case the
		 * caller needs it.
		 */
		sslot->valuetype = arrayelemtype = FUNC2(statarray);

		/* Need info about element type */
		typeTuple = FUNC10(TYPEOID, FUNC8(arrayelemtype));
		if (!FUNC7(typeTuple))
			FUNC13(ERROR, "cache lookup failed for type %u", arrayelemtype);
		typeForm = (Form_pg_type) FUNC6(typeTuple);

		/* Deconstruct array into Datum elements; NULLs not expected */
		FUNC12(statarray,
						  arrayelemtype,
						  typeForm->typlen,
						  typeForm->typbyval,
						  typeForm->typalign,
						  &sslot->values, NULL, &sslot->nvalues);

		/*
		 * If the element type is pass-by-reference, we now have a bunch of
		 * Datums that are pointers into the statarray, so we need to keep
		 * that until free_attstatsslot.  Otherwise, all the useful info is in
		 * sslot->values[], so we can free the array object immediately.
		 */
		if (!typeForm->typbyval)
			sslot->values_arr = statarray;
		else
			FUNC15(statarray);

		FUNC9(typeTuple);
	}

	if (flags & ATTSTATSSLOT_NUMBERS)
	{
		val = FUNC11(STATRELATTINH, statstuple,
							  Anum_pg_statistic_stanumbers1 + i,
							  &isnull);
		if (isnull)
			FUNC13(ERROR, "stanumbers is null");

		/*
		 * Detoast the array if needed, and in any case make a copy that's
		 * under control of this AttStatsSlot.
		 */
		statarray = FUNC5(val);

		/*
		 * We expect the array to be a 1-D float4 array; verify that. We don't
		 * need to use deconstruct_array() since the array data is just going
		 * to look like a C array of float4 values.
		 */
		narrayelem = FUNC1(statarray)[0];
		if (FUNC4(statarray) != 1 || narrayelem <= 0 ||
			FUNC3(statarray) ||
			FUNC2(statarray) != FLOAT4OID)
			FUNC13(ERROR, "stanumbers is not a 1-D float4 array");

		/* Give caller a pointer directly into the statarray */
		sslot->numbers = (float4 *) FUNC0(statarray);
		sslot->nnumbers = narrayelem;

		/* We'll free the statarray in free_attstatsslot */
		sslot->numbers_arr = statarray;
	}

	return true;
}