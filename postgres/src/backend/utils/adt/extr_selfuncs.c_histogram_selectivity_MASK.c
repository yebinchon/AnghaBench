#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_1__ VariableStatData ;
struct TYPE_12__ {int nvalues; int /*<<< orphan*/ * values; int /*<<< orphan*/  stacoll; } ;
struct TYPE_11__ {int /*<<< orphan*/  fn_oid; } ;
typedef  TYPE_2__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ AttStatsSlot ;

/* Variables and functions */
 int /*<<< orphan*/  ATTSTATSSLOT_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  STATISTIC_KIND_HISTOGRAM ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

double
FUNC7(VariableStatData *vardata, FmgrInfo *opproc,
					  Datum constval, bool varonleft,
					  int min_hist_size, int n_skip,
					  int *hist_size)
{
	double		result;
	AttStatsSlot sslot;

	/* check sanity of parameters */
	FUNC0(n_skip >= 0);
	FUNC0(min_hist_size > 2 * n_skip);

	if (FUNC3(vardata->statsTuple) &&
		FUNC6(vardata, opproc->fn_oid) &&
		FUNC5(&sslot, vardata->statsTuple,
						 STATISTIC_KIND_HISTOGRAM, InvalidOid,
						 ATTSTATSSLOT_VALUES))
	{
		*hist_size = sslot.nvalues;
		if (sslot.nvalues >= min_hist_size)
		{
			int			nmatch = 0;
			int			i;

			for (i = n_skip; i < sslot.nvalues - n_skip; i++)
			{
				if (varonleft ?
					FUNC1(FUNC2(opproc,
												   sslot.stacoll,
												   sslot.values[i],
												   constval)) :
					FUNC1(FUNC2(opproc,
												   sslot.stacoll,
												   constval,
												   sslot.values[i])))
					nmatch++;
			}
			result = ((double) nmatch) / ((double) (sslot.nvalues - 2 * n_skip));
		}
		else
			result = -1;
		FUNC4(&sslot);
	}
	else
	{
		*hist_size = 0;
		result = -1;
	}

	return result;
}