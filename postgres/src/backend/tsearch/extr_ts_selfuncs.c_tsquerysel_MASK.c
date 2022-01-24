#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_1__ VariableStatData ;
struct TYPE_14__ {int /*<<< orphan*/  nnumbers; int /*<<< orphan*/  numbers; int /*<<< orphan*/  nvalues; int /*<<< orphan*/  values; } ;
struct TYPE_13__ {double stanullfrac; } ;
struct TYPE_12__ {scalar_t__ size; } ;
typedef  TYPE_2__* TSQuery ;
typedef  double Selectivity ;
typedef  TYPE_3__* Form_pg_statistic ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ AttStatsSlot ;

/* Variables and functions */
 int ATTSTATSSLOT_NUMBERS ; 
 int ATTSTATSSLOT_VALUES ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCELEM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 double FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static Selectivity
FUNC7(VariableStatData *vardata, Datum constval)
{
	Selectivity selec;
	TSQuery		query;

	/* The caller made sure the const is a TSQuery, so get it now */
	query = FUNC0(constval);

	/* Empty query matches nothing */
	if (query->size == 0)
		return (Selectivity) 0.0;

	if (FUNC2(vardata->statsTuple))
	{
		Form_pg_statistic stats;
		AttStatsSlot sslot;

		stats = (Form_pg_statistic) FUNC1(vardata->statsTuple);

		/* MCELEM will be an array of TEXT elements for a tsvector column */
		if (FUNC4(&sslot, vardata->statsTuple,
							 STATISTIC_KIND_MCELEM, InvalidOid,
							 ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
		{
			/*
			 * There is a most-common-elements slot for the tsvector Var, so
			 * use that.
			 */
			selec = FUNC5(query, sslot.values, sslot.nvalues,
										 sslot.numbers, sslot.nnumbers);
			FUNC3(&sslot);
		}
		else
		{
			/* No most-common-elements info, so do without */
			selec = FUNC6(query);
		}

		/*
		 * MCE stats count only non-null rows, so adjust for null rows.
		 */
		selec *= (1.0 - stats->stanullfrac);
	}
	else
	{
		/* No stats at all, so do without */
		selec = FUNC6(query);
		/* we assume no nulls here, so no stanullfrac correction */
	}

	return selec;
}