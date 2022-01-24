#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int reqs; int /*<<< orphan*/  dataDumper; struct TYPE_14__* next; } ;
typedef  TYPE_1__ TocEntry ;
struct TYPE_16__ {int tocCount; TYPE_1__* toc; } ;
struct TYPE_15__ {int numWorkers; } ;
typedef  TYPE_2__ ParallelState ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_DUMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int REQ_DATA ; 
 int /*<<< orphan*/  TocEntrySizeCompare ; 
 int /*<<< orphan*/  WFW_ALL_IDLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  mark_dump_job_done ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC6(ArchiveHandle *AH, ParallelState *pstate)
{
	TocEntry   *te;

	if (pstate && pstate->numWorkers > 1)
	{
		/*
		 * In parallel mode, this code runs in the master process.  We
		 * construct an array of candidate TEs, then sort it into decreasing
		 * size order, then dispatch each TE to a data-transfer worker.  By
		 * dumping larger tables first, we avoid getting into a situation
		 * where we're down to one job and it's big, losing parallelism.
		 */
		TocEntry  **tes;
		int			ntes;

		tes = (TocEntry **) FUNC4(AH->tocCount * sizeof(TocEntry *));
		ntes = 0;
		for (te = AH->toc->next; te != AH->toc; te = te->next)
		{
			/* Consider only TEs with dataDumper functions ... */
			if (!te->dataDumper)
				continue;
			/* ... and ignore ones not enabled for dump */
			if ((te->reqs & REQ_DATA) == 0)
				continue;

			tes[ntes++] = te;
		}

		if (ntes > 1)
			FUNC5((void *) tes, ntes, sizeof(TocEntry *),
				  TocEntrySizeCompare);

		for (int i = 0; i < ntes; i++)
			FUNC0(AH, pstate, tes[i], ACT_DUMP,
								   mark_dump_job_done, NULL);

		FUNC3(tes);

		/* Now wait for workers to finish. */
		FUNC1(AH, pstate, WFW_ALL_IDLE);
	}
	else
	{
		/* Non-parallel mode: just dump all candidate TEs sequentially. */
		for (te = AH->toc->next; te != AH->toc; te = te->next)
		{
			/* Must have same filter conditions as above */
			if (!te->dataDumper)
				continue;
			if ((te->reqs & REQ_DATA) == 0)
				continue;

			FUNC2(AH, te);
		}
	}
}