#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mcv2_slot ;
typedef  int /*<<< orphan*/  mcv1_slot ;
typedef  int /*<<< orphan*/  hist2_slot ;
typedef  int /*<<< orphan*/  hist1_slot ;
struct TYPE_11__ {TYPE_1__* rel; int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_2__ VariableStatData ;
struct TYPE_13__ {int nvalues; double* numbers; int /*<<< orphan*/ * values; } ;
struct TYPE_12__ {double stanullfrac; } ;
struct TYPE_10__ {double rows; } ;
typedef  double Selectivity ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* Form_pg_statistic ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  TYPE_4__ AttStatsSlot ;

/* Variables and functions */
 int ATTSTATSSLOT_NUMBERS ; 
 int ATTSTATSSLOT_VALUES ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int MAX_CONSIDERED_ELEMS ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  STATISTIC_KIND_HISTOGRAM ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 double FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,double,int /*<<< orphan*/ *,int) ; 
 double FUNC10 (double*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Selectivity
FUNC12(Oid operator,
					VariableStatData *vardata1, VariableStatData *vardata2)
{
	Form_pg_statistic stats;
	Selectivity selec = 0.0,
				sumcommon1 = 0.0,
				sumcommon2 = 0.0;
	double		nullfrac1 = 0.0,
				nullfrac2 = 0.0,
				hist2_weight = 0.0;
	bool		mcv1_exists = false,
				mcv2_exists = false,
				hist1_exists = false,
				hist2_exists = false;
	int			opr_codenum;
	FmgrInfo	proc;
	int			i,
				mcv1_length = 0,
				mcv2_length = 0;
	AttStatsSlot mcv1_slot;
	AttStatsSlot mcv2_slot;
	AttStatsSlot hist1_slot;
	AttStatsSlot hist2_slot;

	if (FUNC2(vardata1->statsTuple))
	{
		stats = (Form_pg_statistic) FUNC1(vardata1->statsTuple);
		nullfrac1 = stats->stanullfrac;

		mcv1_exists = FUNC6(&mcv1_slot, vardata1->statsTuple,
									   STATISTIC_KIND_MCV, InvalidOid,
									   ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS);
		hist1_exists = FUNC6(&hist1_slot, vardata1->statsTuple,
										STATISTIC_KIND_HISTOGRAM, InvalidOid,
										ATTSTATSSLOT_VALUES);
		/* Arbitrarily limit number of MCVs considered */
		mcv1_length = FUNC3(mcv1_slot.nvalues, MAX_CONSIDERED_ELEMS);
		if (mcv1_exists)
			sumcommon1 = FUNC10(mcv1_slot.numbers, mcv1_length);
	}
	else
	{
		FUNC11(&mcv1_slot, 0, sizeof(mcv1_slot));
		FUNC11(&hist1_slot, 0, sizeof(hist1_slot));
	}

	if (FUNC2(vardata2->statsTuple))
	{
		stats = (Form_pg_statistic) FUNC1(vardata2->statsTuple);
		nullfrac2 = stats->stanullfrac;

		mcv2_exists = FUNC6(&mcv2_slot, vardata2->statsTuple,
									   STATISTIC_KIND_MCV, InvalidOid,
									   ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS);
		hist2_exists = FUNC6(&hist2_slot, vardata2->statsTuple,
										STATISTIC_KIND_HISTOGRAM, InvalidOid,
										ATTSTATSSLOT_VALUES);
		/* Arbitrarily limit number of MCVs considered */
		mcv2_length = FUNC3(mcv2_slot.nvalues, MAX_CONSIDERED_ELEMS);
		if (mcv2_exists)
			sumcommon2 = FUNC10(mcv2_slot.numbers, mcv2_length);
	}
	else
	{
		FUNC11(&mcv2_slot, 0, sizeof(mcv2_slot));
		FUNC11(&hist2_slot, 0, sizeof(hist2_slot));
	}

	opr_codenum = FUNC8(operator);
	FUNC4(FUNC7(operator), &proc);

	/* Estimate number of input rows represented by RHS histogram. */
	if (hist2_exists && vardata2->rel)
		hist2_weight = (1.0 - nullfrac2 - sumcommon2) * vardata2->rel->rows;

	/*
	 * Consider each element of the LHS MCV list, matching it to whatever RHS
	 * stats we have.  Scale according to the known frequency of the MCV.
	 */
	if (mcv1_exists && (mcv2_exists || hist2_exists))
	{
		for (i = 0; i < mcv1_length; i++)
		{
			selec += mcv1_slot.numbers[i] *
				FUNC9(mcv1_slot.values[i],
								   mcv2_exists, mcv2_slot.values, mcv2_length,
								   hist2_exists,
								   hist2_slot.values, hist2_slot.nvalues,
								   hist2_weight,
								   &proc, opr_codenum);
		}
	}

	/*
	 * Consider each element of the LHS histogram, except for the first and
	 * last elements, which we exclude on the grounds that they're outliers
	 * and thus not very representative.  Scale on the assumption that each
	 * such histogram element represents an equal share of the LHS histogram
	 * population (which is a bit bogus, because the members of its bucket may
	 * not all act the same with respect to the join clause, but it's hard to
	 * do better).
	 *
	 * If there are too many histogram elements, decimate to limit runtime.
	 */
	if (hist1_exists && hist1_slot.nvalues > 2 && (mcv2_exists || hist2_exists))
	{
		double		hist_selec_sum = 0.0;
		int			k,
					n;

		k = (hist1_slot.nvalues - 3) / MAX_CONSIDERED_ELEMS + 1;

		n = 0;
		for (i = 1; i < hist1_slot.nvalues - 1; i += k)
		{
			hist_selec_sum +=
				FUNC9(hist1_slot.values[i],
								   mcv2_exists, mcv2_slot.values, mcv2_length,
								   hist2_exists,
								   hist2_slot.values, hist2_slot.nvalues,
								   hist2_weight,
								   &proc, opr_codenum);
			n++;
		}

		selec += (1.0 - nullfrac1 - sumcommon1) * hist_selec_sum / n;
	}

	/*
	 * If useful statistics are not available then use the default estimate.
	 * We can apply null fractions if known, though.
	 */
	if ((!mcv1_exists && !hist1_exists) || (!mcv2_exists && !hist2_exists))
		selec = (1.0 - nullfrac1) * (1.0 - nullfrac2) * FUNC0(operator);

	/* Release stats. */
	FUNC5(&mcv1_slot);
	FUNC5(&mcv2_slot);
	FUNC5(&hist1_slot);
	FUNC5(&hist2_slot);

	return selec;
}