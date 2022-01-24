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
typedef  int /*<<< orphan*/  TupleQueueReader ;
struct TYPE_7__ {int /*<<< orphan*/ * tqueue; int /*<<< orphan*/ ** reader; TYPE_2__* pcxt; } ;
struct TYPE_6__ {int nworkers_launched; TYPE_1__* worker; } ;
struct TYPE_5__ {int /*<<< orphan*/  bgwhandle; } ;
typedef  TYPE_3__ ParallelExecutorInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(ParallelExecutorInfo *pei)
{
	int			nworkers = pei->pcxt->nworkers_launched;
	int			i;

	FUNC0(pei->reader == NULL);

	if (nworkers > 0)
	{
		pei->reader = (TupleQueueReader **)
			FUNC2(nworkers * sizeof(TupleQueueReader *));

		for (i = 0; i < nworkers; i++)
		{
			FUNC3(pei->tqueue[i],
							  pei->pcxt->worker[i].bgwhandle);
			pei->reader[i] = FUNC1(pei->tqueue[i]);
		}
	}
}