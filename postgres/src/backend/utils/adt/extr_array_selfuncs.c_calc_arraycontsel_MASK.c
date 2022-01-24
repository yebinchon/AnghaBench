#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hslot ;
struct TYPE_13__ {int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_1__ VariableStatData ;
struct TYPE_16__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_14__ {TYPE_4__ cmp_proc_finfo; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_17__ {int /*<<< orphan*/  nnumbers; int /*<<< orphan*/ * numbers; int /*<<< orphan*/  nvalues; int /*<<< orphan*/ * values; } ;
struct TYPE_15__ {double stanullfrac; } ;
typedef  double Selectivity ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* Form_pg_statistic ;
typedef  TYPE_4__ FmgrInfo ;
typedef  scalar_t__ Datum ;
typedef  TYPE_5__ AttStatsSlot ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int ATTSTATSSLOT_NUMBERS ; 
 int ATTSTATSSLOT_VALUES ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OID_ARRAY_CONTAINED_OP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATISTIC_KIND_DECHIST ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCELEM ; 
 int /*<<< orphan*/  TYPECACHE_CMP_PROC_FINFO ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Selectivity
FUNC13(VariableStatData *vardata, Datum constval,
				  Oid elemtype, Oid operator)
{
	Selectivity selec;
	TypeCacheEntry *typentry;
	FmgrInfo   *cmpfunc;
	ArrayType  *array;

	/* Get element type's default comparison function */
	typentry = FUNC8(elemtype, TYPECACHE_CMP_PROC_FINFO);
	if (!FUNC4(typentry->cmp_proc_finfo.fn_oid))
		return FUNC0(operator);
	cmpfunc = &typentry->cmp_proc_finfo;

	/*
	 * The caller made sure the const is an array with same element type, so
	 * get it now
	 */
	array = FUNC1(constval);

	if (FUNC3(vardata->statsTuple) &&
		FUNC12(vardata, cmpfunc->fn_oid))
	{
		Form_pg_statistic stats;
		AttStatsSlot sslot;
		AttStatsSlot hslot;

		stats = (Form_pg_statistic) FUNC2(vardata->statsTuple);

		/* MCELEM will be an array of same type as column */
		if (FUNC7(&sslot, vardata->statsTuple,
							 STATISTIC_KIND_MCELEM, InvalidOid,
							 ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
		{
			/*
			 * For "array <@ const" case we also need histogram of distinct
			 * element counts.
			 */
			if (operator != OID_ARRAY_CONTAINED_OP ||
				!FUNC7(&hslot, vardata->statsTuple,
								  STATISTIC_KIND_DECHIST, InvalidOid,
								  ATTSTATSSLOT_NUMBERS))
				FUNC10(&hslot, 0, sizeof(hslot));

			/* Use the most-common-elements slot for the array Var. */
			selec = FUNC9(array, typentry,
									   sslot.values, sslot.nvalues,
									   sslot.numbers, sslot.nnumbers,
									   hslot.numbers, hslot.nnumbers,
									   operator);

			FUNC6(&hslot);
			FUNC6(&sslot);
		}
		else
		{
			/* No most-common-elements info, so do without */
			selec = FUNC9(array, typentry,
									   NULL, 0, NULL, 0, NULL, 0,
									   operator);
		}

		/*
		 * MCE stats count only non-null rows, so adjust for null rows.
		 */
		selec *= (1.0 - stats->stanullfrac);
	}
	else
	{
		/* No stats at all, so do without */
		selec = FUNC9(array, typentry,
								   NULL, 0, NULL, 0, NULL, 0,
								   operator);
		/* we assume no nulls here, so no stanullfrac correction */
	}

	/* If constant was toasted, release the copy we made */
	if (FUNC5(array) != constval)
		FUNC11(array);

	return selec;
}