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
struct TYPE_11__ {TYPE_1__* rel; int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_2__ VariableStatData ;
struct TYPE_13__ {scalar_t__ nnumbers; double* numbers; } ;
struct TYPE_12__ {double stanullfrac; } ;
struct TYPE_10__ {double tuples; double rows; } ;
typedef  double Selectivity ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__* Form_pg_statistic ;
typedef  TYPE_4__ AttStatsSlot ;

/* Variables and functions */
 int /*<<< orphan*/  ATTSTATSSLOT_NUMBERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCV ; 
 double FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC8 (TYPE_2__*,int*) ; 

void
FUNC9(PlannerInfo *root, Node *hashkey, double nbuckets,
						   Selectivity *mcv_freq,
						   Selectivity *bucketsize_frac)
{
	VariableStatData vardata;
	double		estfract,
				ndistinct,
				stanullfrac,
				avgfreq;
	bool		isdefault;
	AttStatsSlot sslot;

	FUNC5(root, hashkey, 0, &vardata);

	/* Look up the frequency of the most common value, if available */
	*mcv_freq = 0.0;

	if (FUNC1(vardata.statsTuple))
	{
		if (FUNC7(&sslot, vardata.statsTuple,
							 STATISTIC_KIND_MCV, InvalidOid,
							 ATTSTATSSLOT_NUMBERS))
		{
			/*
			 * The first MCV stat is for the most common value.
			 */
			if (sslot.nnumbers > 0)
				*mcv_freq = sslot.numbers[0];
			FUNC6(&sslot);
		}
	}

	/* Get number of distinct values */
	ndistinct = FUNC8(&vardata, &isdefault);

	/*
	 * If ndistinct isn't real, punt.  We normally return 0.1, but if the
	 * mcv_freq is known to be even higher than that, use it instead.
	 */
	if (isdefault)
	{
		*bucketsize_frac = (Selectivity) FUNC2(0.1, *mcv_freq);
		FUNC3(vardata);
		return;
	}

	/* Get fraction that are null */
	if (FUNC1(vardata.statsTuple))
	{
		Form_pg_statistic stats;

		stats = (Form_pg_statistic) FUNC0(vardata.statsTuple);
		stanullfrac = stats->stanullfrac;
	}
	else
		stanullfrac = 0.0;

	/* Compute avg freq of all distinct data values in raw relation */
	avgfreq = (1.0 - stanullfrac) / ndistinct;

	/*
	 * Adjust ndistinct to account for restriction clauses.  Observe we are
	 * assuming that the data distribution is affected uniformly by the
	 * restriction clauses!
	 *
	 * XXX Possibly better way, but much more expensive: multiply by
	 * selectivity of rel's restriction clauses that mention the target Var.
	 */
	if (vardata.rel && vardata.rel->tuples > 0)
	{
		ndistinct *= vardata.rel->rows / vardata.rel->tuples;
		ndistinct = FUNC4(ndistinct);
	}

	/*
	 * Initial estimate of bucketsize fraction is 1/nbuckets as long as the
	 * number of buckets is less than the expected number of distinct values;
	 * otherwise it is 1/ndistinct.
	 */
	if (ndistinct > nbuckets)
		estfract = 1.0 / nbuckets;
	else
		estfract = 1.0 / ndistinct;

	/*
	 * Adjust estimated bucketsize upward to account for skewed distribution.
	 */
	if (avgfreq > 0.0 && *mcv_freq > avgfreq)
		estfract *= *mcv_freq / avgfreq;

	/*
	 * Clamp bucketsize to sane range (the above adjustment could easily
	 * produce an out-of-range result).  We set the lower bound a little above
	 * zero, since zero isn't a very sane result.
	 */
	if (estfract < 1.0e-6)
		estfract = 1.0e-6;
	else if (estfract > 1.0)
		estfract = 1.0;

	*bucketsize_frac = (Selectivity) estfract;

	FUNC3(vardata);
}