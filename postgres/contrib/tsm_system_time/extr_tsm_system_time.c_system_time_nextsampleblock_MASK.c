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
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_5__ {scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ doneblocks; int nblocks; int firstblock; int lb; scalar_t__ millis; int /*<<< orphan*/  step; int /*<<< orphan*/  start_time; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ SystemTimeSamplerData ;
typedef  int /*<<< orphan*/  SamplerRandomState ;
typedef  TYPE_2__ SampleScanState ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BlockNumber
FUNC6(SampleScanState *node, BlockNumber nblocks)
{
	SystemTimeSamplerData *sampler = (SystemTimeSamplerData *) node->tsm_state;
	instr_time	cur_time;

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
			FUNC5(sampler->seed, randstate);

			/* Compute nblocks/firstblock/step only once per query */
			sampler->nblocks = nblocks;

			/* Choose random starting block within the relation */
			/* (Actually this is the predecessor of the first block visited) */
			sampler->firstblock = FUNC4(randstate) *
				sampler->nblocks;

			/* Find relative prime as step size for linear probing */
			sampler->step = FUNC3(sampler->nblocks, randstate);
		}

		/* Reinitialize lb and start_time */
		sampler->lb = sampler->firstblock;
		FUNC1(sampler->start_time);
	}

	/* If we've read all blocks in relation, we're done */
	if (++sampler->doneblocks > sampler->nblocks)
		return InvalidBlockNumber;

	/* If we've used up all the allotted time, we're done */
	FUNC1(cur_time);
	FUNC2(cur_time, sampler->start_time);
	if (FUNC0(cur_time) >= sampler->millis)
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