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
typedef  int uint64 ;
struct TYPE_5__ {scalar_t__ donetuples; scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ doneblocks; int nblocks; int firstblock; int lb; scalar_t__ ntuples; int /*<<< orphan*/  step; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ SystemRowsSamplerData ;
typedef  int /*<<< orphan*/  SamplerRandomState ;
typedef  TYPE_2__ SampleScanState ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BlockNumber
FUNC3(SampleScanState *node, BlockNumber nblocks)
{
	SystemRowsSamplerData *sampler = (SystemRowsSamplerData *) node->tsm_state;

	/* First call within scan? */
	if (sampler->doneblocks == 0)
	{
		/* First scan within query? */
		if (sampler->step == 0)
		{
			/* Initialize now that we have scan descriptor */
			SamplerRandomState randstate;

			/* If relation is empty, there's nothing to scan */
			if (nblocks == 0)
				return InvalidBlockNumber;

			/* We only need an RNG during this setup step */
			FUNC2(sampler->seed, randstate);

			/* Compute nblocks/firstblock/step only once per query */
			sampler->nblocks = nblocks;

			/* Choose random starting block within the relation */
			/* (Actually this is the predecessor of the first block visited) */
			sampler->firstblock = FUNC1(randstate) *
				sampler->nblocks;

			/* Find relative prime as step size for linear probing */
			sampler->step = FUNC0(sampler->nblocks, randstate);
		}

		/* Reinitialize lb */
		sampler->lb = sampler->firstblock;
	}

	/* If we've read all blocks or returned all needed tuples, we're done */
	if (++sampler->doneblocks > sampler->nblocks ||
		node->donetuples >= sampler->ntuples)
		return InvalidBlockNumber;

	/*
	 * It's probably impossible for scan->rs_nblocks to decrease between scans
	 * within a query; but just in case, loop until we select a block number
	 * less than scan->rs_nblocks.  We don't care if scan->rs_nblocks has
	 * increased since the first scan.
	 */
	do
	{
		/* Advance lb, using uint64 arithmetic to forestall overflow */
		sampler->lb = ((uint64) sampler->lb + sampler->step) % sampler->nblocks;
	} while (sampler->lb >= nblocks);

	return sampler->lb;
}