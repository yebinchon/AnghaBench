#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int minrows; int /*<<< orphan*/  compute_stats; TYPE_2__* extra_data; int /*<<< orphan*/  attrtypid; TYPE_3__* attr; } ;
typedef  TYPE_1__ VacAttrStats ;
struct TYPE_7__ {int attstattarget; } ;
struct TYPE_6__ {void* ltopr; int /*<<< orphan*/  eqfunc; void* eqopr; } ;
typedef  TYPE_2__ StdAnalyzeData ;
typedef  void* Oid ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  compute_distinct_stats ; 
 int /*<<< orphan*/  compute_scalar_stats ; 
 int /*<<< orphan*/  compute_trivial_stats ; 
 int default_statistics_target ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,void**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

bool
FUNC4(VacAttrStats *stats)
{
	Form_pg_attribute attr = stats->attr;
	Oid			ltopr;
	Oid			eqopr;
	StdAnalyzeData *mystats;

	/* If the attstattarget column is negative, use the default value */
	/* NB: it is okay to scribble on stats->attr since it's a copy */
	if (attr->attstattarget < 0)
		attr->attstattarget = default_statistics_target;

	/* Look for default "<" and "=" operators for column's type */
	FUNC2(stats->attrtypid,
							 false, false, false,
							 &ltopr, &eqopr, NULL,
							 NULL);

	/* Save the operator info for compute_stats routines */
	mystats = (StdAnalyzeData *) FUNC3(sizeof(StdAnalyzeData));
	mystats->eqopr = eqopr;
	mystats->eqfunc = FUNC0(eqopr) ? FUNC1(eqopr) : InvalidOid;
	mystats->ltopr = ltopr;
	stats->extra_data = mystats;

	/*
	 * Determine which standard statistics algorithm to use
	 */
	if (FUNC0(eqopr) && FUNC0(ltopr))
	{
		/* Seems to be a scalar datatype */
		stats->compute_stats = compute_scalar_stats;
		/*--------------------
		 * The following choice of minrows is based on the paper
		 * "Random sampling for histogram construction: how much is enough?"
		 * by Surajit Chaudhuri, Rajeev Motwani and Vivek Narasayya, in
		 * Proceedings of ACM SIGMOD International Conference on Management
		 * of Data, 1998, Pages 436-447.  Their Corollary 1 to Theorem 5
		 * says that for table size n, histogram size k, maximum relative
		 * error in bin size f, and error probability gamma, the minimum
		 * random sample size is
		 *		r = 4 * k * ln(2*n/gamma) / f^2
		 * Taking f = 0.5, gamma = 0.01, n = 10^6 rows, we obtain
		 *		r = 305.82 * k
		 * Note that because of the log function, the dependence on n is
		 * quite weak; even at n = 10^12, a 300*k sample gives <= 0.66
		 * bin size error with probability 0.99.  So there's no real need to
		 * scale for n, which is a good thing because we don't necessarily
		 * know it at this point.
		 *--------------------
		 */
		stats->minrows = 300 * attr->attstattarget;
	}
	else if (FUNC0(eqopr))
	{
		/* We can still recognize distinct values */
		stats->compute_stats = compute_distinct_stats;
		/* Might as well use the same minrows as above */
		stats->minrows = 300 * attr->attstattarget;
	}
	else
	{
		/* Can't do much but the trivial stuff */
		stats->compute_stats = compute_trivial_stats;
		/* Might as well use the same minrows as above */
		stats->minrows = 300 * attr->attstattarget;
	}

	return true;
}