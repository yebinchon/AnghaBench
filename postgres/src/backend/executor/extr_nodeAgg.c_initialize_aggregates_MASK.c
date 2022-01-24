#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int numtrans; int /*<<< orphan*/ * pertrans; TYPE_1__* phase; } ;
struct TYPE_6__ {int /*<<< orphan*/  numsets; } ;
typedef  int /*<<< orphan*/ * AggStatePerTrans ;
typedef  int /*<<< orphan*/ * AggStatePerGroup ;
typedef  TYPE_2__ AggState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void
FUNC3(AggState *aggstate,
					  AggStatePerGroup *pergroups,
					  int numReset)
{
	int			transno;
	int			numGroupingSets = FUNC0(aggstate->phase->numsets, 1);
	int			setno = 0;
	int			numTrans = aggstate->numtrans;
	AggStatePerTrans transstates = aggstate->pertrans;

	if (numReset == 0)
		numReset = numGroupingSets;

	for (setno = 0; setno < numReset; setno++)
	{
		AggStatePerGroup pergroup = pergroups[setno];

		FUNC2(aggstate, setno, false);

		for (transno = 0; transno < numTrans; transno++)
		{
			AggStatePerTrans pertrans = &transstates[transno];
			AggStatePerGroup pergroupstate = &pergroup[transno];

			FUNC1(aggstate, pertrans, pergroupstate);
		}
	}
}