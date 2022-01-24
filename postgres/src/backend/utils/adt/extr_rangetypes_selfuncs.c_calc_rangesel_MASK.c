#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  double float4 ;
struct TYPE_8__ {int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_1__ VariableStatData ;
typedef  int /*<<< orphan*/  TypeCacheEntry ;
struct TYPE_10__ {int nnumbers; double* numbers; } ;
struct TYPE_9__ {double stanullfrac; } ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  int Oid ;
typedef  TYPE_2__* Form_pg_statistic ;
typedef  TYPE_3__ AttStatsSlot ;

/* Variables and functions */
 int /*<<< orphan*/  ATTSTATSSLOT_NUMBERS ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
#define  OID_RANGE_CONTAINED_OP 139 
#define  OID_RANGE_CONTAINS_ELEM_OP 138 
#define  OID_RANGE_CONTAINS_OP 137 
#define  OID_RANGE_GREATER_EQUAL_OP 136 
#define  OID_RANGE_GREATER_OP 135 
#define  OID_RANGE_LEFT_OP 134 
#define  OID_RANGE_LESS_EQUAL_OP 133 
#define  OID_RANGE_LESS_OP 132 
#define  OID_RANGE_OVERLAPS_LEFT_OP 131 
#define  OID_RANGE_OVERLAPS_RIGHT_OP 130 
#define  OID_RANGE_OVERLAP_OP 129 
#define  OID_RANGE_RIGHT_OP 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM ; 
 double FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 double FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC9(TypeCacheEntry *typcache, VariableStatData *vardata,
			  const RangeType *constval, Oid operator)
{
	double		hist_selec;
	double		selec;
	float4		empty_frac,
				null_frac;

	/*
	 * First look up the fraction of NULLs and empty ranges from pg_statistic.
	 */
	if (FUNC2(vardata->statsTuple))
	{
		Form_pg_statistic stats;
		AttStatsSlot sslot;

		stats = (Form_pg_statistic) FUNC1(vardata->statsTuple);
		null_frac = stats->stanullfrac;

		/* Try to get fraction of empty ranges */
		if (FUNC8(&sslot, vardata->statsTuple,
							 STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM,
							 InvalidOid,
							 ATTSTATSSLOT_NUMBERS))
		{
			if (sslot.nnumbers != 1)
				FUNC6(ERROR, "invalid empty fraction statistic");	/* shouldn't happen */
			empty_frac = sslot.numbers[0];
			FUNC7(&sslot);
		}
		else
		{
			/* No empty fraction statistic. Assume no empty ranges. */
			empty_frac = 0.0;
		}
	}
	else
	{
		/*
		 * No stats are available. Follow through the calculations below
		 * anyway, assuming no NULLs and no empty ranges. This still allows us
		 * to give a better-than-nothing estimate based on whether the
		 * constant is an empty range or not.
		 */
		null_frac = 0.0;
		empty_frac = 0.0;
	}

	if (FUNC3(constval))
	{
		/*
		 * An empty range matches all ranges, all empty ranges, or nothing,
		 * depending on the operator
		 */
		switch (operator)
		{
				/* these return false if either argument is empty */
			case OID_RANGE_OVERLAP_OP:
			case OID_RANGE_OVERLAPS_LEFT_OP:
			case OID_RANGE_OVERLAPS_RIGHT_OP:
			case OID_RANGE_LEFT_OP:
			case OID_RANGE_RIGHT_OP:
				/* nothing is less than an empty range */
			case OID_RANGE_LESS_OP:
				selec = 0.0;
				break;

				/* only empty ranges can be contained by an empty range */
			case OID_RANGE_CONTAINED_OP:
				/* only empty ranges are <= an empty range */
			case OID_RANGE_LESS_EQUAL_OP:
				selec = empty_frac;
				break;

				/* everything contains an empty range */
			case OID_RANGE_CONTAINS_OP:
				/* everything is >= an empty range */
			case OID_RANGE_GREATER_EQUAL_OP:
				selec = 1.0;
				break;

				/* all non-empty ranges are > an empty range */
			case OID_RANGE_GREATER_OP:
				selec = 1.0 - empty_frac;
				break;

				/* an element cannot be empty */
			case OID_RANGE_CONTAINS_ELEM_OP:
			default:
				FUNC6(ERROR, "unexpected operator %u", operator);
				selec = 0.0;	/* keep compiler quiet */
				break;
		}
	}
	else
	{
		/*
		 * Calculate selectivity using bound histograms. If that fails for
		 * some reason, e.g no histogram in pg_statistic, use the default
		 * constant estimate for the fraction of non-empty values. This is
		 * still somewhat better than just returning the default estimate,
		 * because this still takes into account the fraction of empty and
		 * NULL tuples, if we had statistics for them.
		 */
		hist_selec = FUNC4(typcache, vardata, constval,
										   operator);
		if (hist_selec < 0.0)
			hist_selec = FUNC5(operator);

		/*
		 * Now merge the results for the empty ranges and histogram
		 * calculations, realizing that the histogram covers only the
		 * non-null, non-empty values.
		 */
		if (operator == OID_RANGE_CONTAINED_OP)
		{
			/* empty is contained by anything non-empty */
			selec = (1.0 - empty_frac) * hist_selec + empty_frac;
		}
		else
		{
			/* with any other operator, empty Op non-empty matches nothing */
			selec = (1.0 - empty_frac) * hist_selec;
		}
	}

	/* all range operators are strict */
	selec *= (1.0 - null_frac);

	/* result should be in range, but make sure... */
	FUNC0(selec);

	return selec;
}