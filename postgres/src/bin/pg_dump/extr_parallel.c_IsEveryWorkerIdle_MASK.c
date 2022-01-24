#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numWorkers; TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {scalar_t__ workerStatus; } ;
typedef  TYPE_2__ ParallelState ;

/* Variables and functions */
 scalar_t__ WRKR_IDLE ; 

bool
FUNC0(ParallelState *pstate)
{
	int			i;

	for (i = 0; i < pstate->numWorkers; i++)
	{
		if (pstate->parallelSlot[i].workerStatus != WRKR_IDLE)
			return false;
	}
	return true;
}