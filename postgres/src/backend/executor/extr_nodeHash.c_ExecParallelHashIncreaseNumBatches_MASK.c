#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsa_pointer_atomic ;
struct TYPE_16__ {int nbatch; int nbuckets; int /*<<< orphan*/  area; TYPE_1__* batches; TYPE_2__* parallel_state; } ;
struct TYPE_15__ {double ntuples; long estimated_size; double old_ntuples; int /*<<< orphan*/  space_exhausted; int /*<<< orphan*/  chunks; void* buckets; } ;
struct TYPE_14__ {int old_nbatch; long space_allowed; int nparticipants; int nbatch; int nbuckets; int /*<<< orphan*/  grow_batches_barrier; void* old_batches; void* growth; int /*<<< orphan*/  chunk_work_queue; void* batches; int /*<<< orphan*/  build_barrier; } ;
struct TYPE_13__ {TYPE_3__* shared; } ;
typedef  TYPE_2__ ParallelHashJoinState ;
typedef  TYPE_3__ ParallelHashJoinBatch ;
typedef  TYPE_4__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 void* InvalidDsaPointer ; 
 int FUNC10 (int,int) ; 
 int MaxAllocSize ; 
 double FUNC11 (double,int) ; 
 double NTUP_PER_BUCKET ; 
 scalar_t__ PHJ_BUILD_HASHING_INNER ; 
 void* PHJ_GROWTH_DISABLED ; 
 void* PHJ_GROWTH_NEED_MORE_BATCHES ; 
 void* PHJ_GROWTH_OK ; 
#define  PHJ_GROW_BATCHES_ALLOCATING 132 
#define  PHJ_GROW_BATCHES_DECIDING 131 
#define  PHJ_GROW_BATCHES_ELECTING 130 
#define  PHJ_GROW_BATCHES_FINISHING 129 
 int FUNC12 (scalar_t__) ; 
#define  PHJ_GROW_BATCHES_REPARTITIONING 128 
 int /*<<< orphan*/  WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING ; 
 int /*<<< orphan*/  WAIT_EVENT_HASH_GROW_BATCHES_DECIDING ; 
 int /*<<< orphan*/  WAIT_EVENT_HASH_GROW_BATCHES_ELECTING ; 
 int /*<<< orphan*/  WAIT_EVENT_HASH_GROW_BATCHES_FINISHING ; 
 int /*<<< orphan*/  WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING ; 
 double FUNC13 (double) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,void*) ; 
 int FUNC19 (int) ; 
 long work_mem ; 

__attribute__((used)) static void
FUNC20(HashJoinTable hashtable)
{
	ParallelHashJoinState *pstate = hashtable->parallel_state;
	int			i;

	FUNC0(FUNC2(&pstate->build_barrier) == PHJ_BUILD_HASHING_INNER);

	/*
	 * It's unlikely, but we need to be prepared for new participants to show
	 * up while we're in the middle of this operation so we need to switch on
	 * barrier phase here.
	 */
	switch (FUNC12(FUNC2(&pstate->grow_batches_barrier)))
	{
		case PHJ_GROW_BATCHES_ELECTING:

			/*
			 * Elect one participant to prepare to grow the number of batches.
			 * This involves reallocating or resetting the buckets of batch 0
			 * in preparation for all participants to begin repartitioning the
			 * tuples.
			 */
			if (FUNC1(&pstate->grow_batches_barrier,
									 WAIT_EVENT_HASH_GROW_BATCHES_ELECTING))
			{
				dsa_pointer_atomic *buckets;
				ParallelHashJoinBatch *old_batch0;
				int			new_nbatch;
				int			i;

				/* Move the old batch out of the way. */
				old_batch0 = hashtable->batches[0].shared;
				pstate->old_batches = pstate->batches;
				pstate->old_nbatch = hashtable->nbatch;
				pstate->batches = InvalidDsaPointer;

				/* Free this backend's old accessors. */
				FUNC3(hashtable);

				/* Figure out how many batches to use. */
				if (hashtable->nbatch == 1)
				{
					/*
					 * We are going from single-batch to multi-batch.  We need
					 * to switch from one large combined memory budget to the
					 * regular work_mem budget.
					 */
					pstate->space_allowed = work_mem * 1024L;

					/*
					 * The combined work_mem of all participants wasn't
					 * enough. Therefore one batch per participant would be
					 * approximately equivalent and would probably also be
					 * insufficient.  So try two batches per participant,
					 * rounded up to a power of two.
					 */
					new_nbatch = 1 << FUNC19(pstate->nparticipants * 2);
				}
				else
				{
					/*
					 * We were already multi-batched.  Try doubling the number
					 * of batches.
					 */
					new_nbatch = hashtable->nbatch * 2;
				}

				/* Allocate new larger generation of batches. */
				FUNC0(hashtable->nbatch == pstate->nbatch);
				FUNC5(hashtable, new_nbatch);
				FUNC0(hashtable->nbatch == pstate->nbatch);

				/* Replace or recycle batch 0's bucket array. */
				if (pstate->old_nbatch == 1)
				{
					double		dtuples;
					double		dbuckets;
					int			new_nbuckets;

					/*
					 * We probably also need a smaller bucket array.  How many
					 * tuples do we expect per batch, assuming we have only
					 * half of them so far?  Normally we don't need to change
					 * the bucket array's size, because the size of each batch
					 * stays the same as we add more batches, but in this
					 * special case we move from a large batch to many smaller
					 * batches and it would be wasteful to keep the large
					 * array.
					 */
					dtuples = (old_batch0->ntuples * 2.0) / new_nbatch;
					dbuckets = FUNC13(dtuples / NTUP_PER_BUCKET);
					dbuckets = FUNC11(dbuckets,
								   MaxAllocSize / sizeof(dsa_pointer_atomic));
					new_nbuckets = (int) dbuckets;
					new_nbuckets = FUNC10(new_nbuckets, 1024);
					new_nbuckets = 1 << FUNC19(new_nbuckets);
					FUNC15(hashtable->area, old_batch0->buckets);
					hashtable->batches[0].shared->buckets =
						FUNC14(hashtable->area,
									 sizeof(dsa_pointer_atomic) * new_nbuckets);
					buckets = (dsa_pointer_atomic *)
						FUNC16(hashtable->area,
										hashtable->batches[0].shared->buckets);
					for (i = 0; i < new_nbuckets; ++i)
						FUNC17(&buckets[i], InvalidDsaPointer);
					pstate->nbuckets = new_nbuckets;
				}
				else
				{
					/* Recycle the existing bucket array. */
					hashtable->batches[0].shared->buckets = old_batch0->buckets;
					buckets = (dsa_pointer_atomic *)
						FUNC16(hashtable->area, old_batch0->buckets);
					for (i = 0; i < hashtable->nbuckets; ++i)
						FUNC18(&buckets[i], InvalidDsaPointer);
				}

				/* Move all chunks to the work queue for parallel processing. */
				pstate->chunk_work_queue = old_batch0->chunks;

				/* Disable further growth temporarily while we're growing. */
				pstate->growth = PHJ_GROWTH_DISABLED;
			}
			else
			{
				/* All other participants just flush their tuples to disk. */
				FUNC3(hashtable);
			}
			/* Fall through. */

		case PHJ_GROW_BATCHES_ALLOCATING:
			/* Wait for the above to be finished. */
			FUNC1(&pstate->grow_batches_barrier,
								 WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING);
			/* Fall through. */

		case PHJ_GROW_BATCHES_REPARTITIONING:
			/* Make sure that we have the current dimensions and buckets. */
			FUNC4(hashtable);
			FUNC9(hashtable, 0);
			/* Then partition, flush counters. */
			FUNC7(hashtable);
			FUNC8(hashtable);
			FUNC6(hashtable);
			/* Wait for the above to be finished. */
			FUNC1(&pstate->grow_batches_barrier,
								 WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING);
			/* Fall through. */

		case PHJ_GROW_BATCHES_DECIDING:

			/*
			 * Elect one participant to clean up and decide whether further
			 * repartitioning is needed, or should be disabled because it's
			 * not helping.
			 */
			if (FUNC1(&pstate->grow_batches_barrier,
									 WAIT_EVENT_HASH_GROW_BATCHES_DECIDING))
			{
				bool		space_exhausted = false;
				bool		extreme_skew_detected = false;

				/* Make sure that we have the current dimensions and buckets. */
				FUNC4(hashtable);
				FUNC9(hashtable, 0);

				/* Are any of the new generation of batches exhausted? */
				for (i = 0; i < hashtable->nbatch; ++i)
				{
					ParallelHashJoinBatch *batch = hashtable->batches[i].shared;

					if (batch->space_exhausted ||
						batch->estimated_size > pstate->space_allowed)
					{
						int			parent;

						space_exhausted = true;

						/*
						 * Did this batch receive ALL of the tuples from its
						 * parent batch?  That would indicate that further
						 * repartitioning isn't going to help (the hash values
						 * are probably all the same).
						 */
						parent = i % pstate->old_nbatch;
						if (batch->ntuples == hashtable->batches[parent].shared->old_ntuples)
							extreme_skew_detected = true;
					}
				}

				/* Don't keep growing if it's not helping or we'd overflow. */
				if (extreme_skew_detected || hashtable->nbatch >= INT_MAX / 2)
					pstate->growth = PHJ_GROWTH_DISABLED;
				else if (space_exhausted)
					pstate->growth = PHJ_GROWTH_NEED_MORE_BATCHES;
				else
					pstate->growth = PHJ_GROWTH_OK;

				/* Free the old batches in shared memory. */
				FUNC15(hashtable->area, pstate->old_batches);
				pstate->old_batches = InvalidDsaPointer;
			}
			/* Fall through. */

		case PHJ_GROW_BATCHES_FINISHING:
			/* Wait for the above to complete. */
			FUNC1(&pstate->grow_batches_barrier,
								 WAIT_EVENT_HASH_GROW_BATCHES_FINISHING);
	}
}