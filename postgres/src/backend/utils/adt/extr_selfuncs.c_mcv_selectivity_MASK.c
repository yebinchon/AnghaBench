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
struct TYPE_12__ {int nvalues; scalar_t__* numbers; int /*<<< orphan*/ * values; int /*<<< orphan*/  stacoll; } ;
struct TYPE_11__ {int /*<<< orphan*/  fn_oid; } ;
typedef  TYPE_2__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ AttStatsSlot ;

/* Variables and functions */
 int ATTSTATSSLOT_NUMBERS ; 
 int ATTSTATSSLOT_VALUES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  STATISTIC_KIND_MCV ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

double
FUNC6(VariableStatData *vardata, FmgrInfo *opproc,
				Datum constval, bool varonleft,
				double *sumcommonp)
{
	double		mcv_selec,
				sumcommon;
	AttStatsSlot sslot;
	int			i;

	mcv_selec = 0.0;
	sumcommon = 0.0;

	if (FUNC2(vardata->statsTuple) &&
		FUNC5(vardata, opproc->fn_oid) &&
		FUNC4(&sslot, vardata->statsTuple,
						 STATISTIC_KIND_MCV, InvalidOid,
						 ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
	{
		for (i = 0; i < sslot.nvalues; i++)
		{
			if (varonleft ?
				FUNC0(FUNC1(opproc,
											   sslot.stacoll,
											   sslot.values[i],
											   constval)) :
				FUNC0(FUNC1(opproc,
											   sslot.stacoll,
											   constval,
											   sslot.values[i])))
				mcv_selec += sslot.numbers[i];
			sumcommon += sslot.numbers[i];
		}
		FUNC3(&sslot);
	}

	*sumcommonp = sumcommon;
	return mcv_selec;
}