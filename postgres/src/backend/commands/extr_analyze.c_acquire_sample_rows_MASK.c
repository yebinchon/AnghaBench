#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_9__ {double m; } ;
struct TYPE_8__ {int /*<<< orphan*/  randstate; } ;
typedef  TYPE_1__ ReservoirStateData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ BlockSamplerData ;
typedef  double BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,double,int,int /*<<< orphan*/ ) ; 
 double FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_rows ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,double,double,double,double,int,double) ; 
 double FUNC11 (double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 double FUNC15 (TYPE_1__*,double,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vac_strategy ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int
FUNC24(Relation onerel, int elevel,
					HeapTuple *rows, int targrows,
					double *totalrows, double *totaldeadrows)
{
	int			numrows = 0;	/* # rows now in reservoir */
	double		samplerows = 0; /* total # rows collected */
	double		liverows = 0;	/* # live rows seen */
	double		deadrows = 0;	/* # dead rows seen */
	double		rowstoskip = -1;	/* -1 means not set yet */
	BlockNumber totalblocks;
	TransactionId OldestXmin;
	BlockSamplerData bs;
	ReservoirStateData rstate;
	TupleTableSlot *slot;
	TableScanDesc scan;

	FUNC0(targrows > 0);

	totalblocks = FUNC7(onerel);

	/* Need a cutoff xmin for HeapTupleSatisfiesVacuum */
	OldestXmin = FUNC6(onerel, PROCARRAY_FLAGS_VACUUM);

	/* Prepare for sampling block numbers */
	FUNC2(&bs, totalblocks, targrows, FUNC14());
	/* Prepare for sampling rows */
	FUNC16(&rstate, targrows);

	scan = FUNC18(onerel);
	slot = FUNC22(onerel, NULL);

	/* Outer loop over blocks to sample */
	while (FUNC1(&bs))
	{
		BlockNumber targblock = FUNC3(&bs);

		FUNC23();

		if (!FUNC20(scan, targblock, vac_strategy))
			continue;

		while (FUNC21(scan, OldestXmin, &liverows, &deadrows, slot))
		{
			/*
			 * The first targrows sample rows are simply copied into the
			 * reservoir. Then we start replacing tuples in the sample until
			 * we reach the end of the relation.  This algorithm is from Jeff
			 * Vitter's paper (see full citation in utils/misc/sampling.c). It
			 * works by repeatedly computing the number of tuples to skip
			 * before selecting a tuple, which replaces a randomly chosen
			 * element of the reservoir (current set of tuples).  At all times
			 * the reservoir is a true random sample of the tuples we've
			 * passed over so far, so when we fall off the end of the relation
			 * we're done.
			 */
			if (numrows < targrows)
				rows[numrows++] = FUNC4(slot);
			else
			{
				/*
				 * t in Vitter's paper is the number of records already
				 * processed.  If we need to compute a new S value, we must
				 * use the not-yet-incremented value of samplerows as t.
				 */
				if (rowstoskip < 0)
					rowstoskip = FUNC15(&rstate, samplerows, targrows);

				if (rowstoskip <= 0)
				{
					/*
					 * Found a suitable tuple, so save it, replacing one old
					 * tuple at random
					 */
					int			k = (int) (targrows * FUNC17(rstate.randstate));

					FUNC0(k >= 0 && k < targrows);
					FUNC12(rows[k]);
					rows[k] = FUNC4(slot);
				}

				rowstoskip -= 1;
			}

			samplerows += 1;
		}
	}

	FUNC5(slot);
	FUNC19(scan);

	/*
	 * If we didn't find as many tuples as we wanted then we're done. No sort
	 * is needed, since they're already in order.
	 *
	 * Otherwise we need to sort the collected tuples by position
	 * (itempointer). It's not worth worrying about corner cases where the
	 * tuples are already sorted.
	 */
	if (numrows == targrows)
		FUNC13((void *) rows, numrows, sizeof(HeapTuple), compare_rows);

	/*
	 * Estimate total numbers of live and dead rows in relation, extrapolating
	 * on the assumption that the average tuple density in pages we didn't
	 * scan is the same as in the pages we did scan.  Since what we scanned is
	 * a random sample of the pages in the relation, this should be a good
	 * assumption.
	 */
	if (bs.m > 0)
	{
		*totalrows = FUNC11((liverows / bs.m) * totalblocks + 0.5);
		*totaldeadrows = FUNC11((deadrows / bs.m) * totalblocks + 0.5);
	}
	else
	{
		*totalrows = 0.0;
		*totaldeadrows = 0.0;
	}

	/*
	 * Emit some interesting relation info
	 */
	FUNC9(elevel,
			(FUNC10("\"%s\": scanned %d of %u pages, "
					"containing %.0f live rows and %.0f dead rows; "
					"%d rows in sample, %.0f estimated total rows",
					FUNC8(onerel),
					bs.m, totalblocks,
					liverows, deadrows,
					numrows, *totalrows)));

	return numrows;
}