#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  statsTuple; TYPE_1__* rel; scalar_t__ isunique; } ;
typedef  TYPE_2__ VariableStatData ;
struct TYPE_12__ {scalar_t__ nnumbers; double* numbers; } ;
struct TYPE_11__ {double stanullfrac; } ;
struct TYPE_9__ {double tuples; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__* Form_pg_statistic ;
typedef  TYPE_4__ AttStatsSlot ;

/* Variables and functions */
 int /*<<< orphan*/  ATTSTATSSLOT_NUMBERS ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCV ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC5 (TYPE_2__*,int*) ; 

double
FUNC6(VariableStatData *vardata, Oid operator,
				 Node *other,
				 bool varonleft, bool negate)
{
	double		selec;
	double		nullfrac = 0.0;
	bool		isdefault;

	/*
	 * Grab the nullfrac for use below.
	 */
	if (FUNC2(vardata->statsTuple))
	{
		Form_pg_statistic stats;

		stats = (Form_pg_statistic) FUNC1(vardata->statsTuple);
		nullfrac = stats->stanullfrac;
	}

	/*
	 * If we matched the var to a unique index or DISTINCT clause, assume
	 * there is exactly one match regardless of anything else.  (This is
	 * slightly bogus, since the index or clause's equality operator might be
	 * different from ours, but it's much more likely to be right than
	 * ignoring the information.)
	 */
	if (vardata->isunique && vardata->rel && vardata->rel->tuples >= 1.0)
	{
		selec = 1.0 / vardata->rel->tuples;
	}
	else if (FUNC2(vardata->statsTuple))
	{
		double		ndistinct;
		AttStatsSlot sslot;

		/*
		 * Search is for a value that we do not know a priori, but we will
		 * assume it is not NULL.  Estimate the selectivity as non-null
		 * fraction divided by number of distinct values, so that we get a
		 * result averaged over all possible values whether common or
		 * uncommon.  (Essentially, we are assuming that the not-yet-known
		 * comparison value is equally likely to be any of the possible
		 * values, regardless of their frequency in the table.  Is that a good
		 * idea?)
		 */
		selec = 1.0 - nullfrac;
		ndistinct = FUNC5(vardata, &isdefault);
		if (ndistinct > 1)
			selec /= ndistinct;

		/*
		 * Cross-check: selectivity should never be estimated as more than the
		 * most common value's.
		 */
		if (FUNC4(&sslot, vardata->statsTuple,
							 STATISTIC_KIND_MCV, InvalidOid,
							 ATTSTATSSLOT_NUMBERS))
		{
			if (sslot.nnumbers > 0 && selec > sslot.numbers[0])
				selec = sslot.numbers[0];
			FUNC3(&sslot);
		}
	}
	else
	{
		/*
		 * No ANALYZE stats available, so make a guess using estimated number
		 * of distinct values and assuming they are equally common. (The guess
		 * is unlikely to be very good, but we do know a few special cases.)
		 */
		selec = 1.0 / FUNC5(vardata, &isdefault);
	}

	/* now adjust if we wanted <> rather than = */
	if (negate)
		selec = 1.0 - selec - nullfrac;

	/* result should be in range, but make sure... */
	FUNC0(selec);

	return selec;
}