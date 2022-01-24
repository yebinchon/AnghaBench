#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_15__ {int nbatch; TYPE_2__* batches; int /*<<< orphan*/  hashCxt; int /*<<< orphan*/  area; TYPE_1__* parallel_state; } ;
struct TYPE_14__ {int /*<<< orphan*/  batch_barrier; } ;
struct TYPE_13__ {void* outer_tuples; void* inner_tuples; TYPE_3__* shared; } ;
struct TYPE_12__ {int nbatch; int /*<<< orphan*/  fileset; int /*<<< orphan*/  nparticipants; int /*<<< orphan*/  batches; } ;
typedef  TYPE_1__ ParallelHashJoinState ;
typedef  TYPE_2__ ParallelHashJoinBatchAccessor ;
typedef  TYPE_3__ ParallelHashJoinBatch ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_4__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,int) ; 
 scalar_t__ PHJ_BATCH_PROBING ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ParallelWorkerNumber ; 
 int /*<<< orphan*/  SHARED_TUPLESTORE_SINGLE_PASS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC16(HashJoinTable hashtable, int nbatch)
{
	ParallelHashJoinState *pstate = hashtable->parallel_state;
	ParallelHashJoinBatch *batches;
	MemoryContext oldcxt;
	int			i;

	FUNC0(hashtable->batches == NULL);

	/* Allocate space. */
	pstate->batches =
		FUNC11(hashtable->area,
					  FUNC6(hashtable) * nbatch);
	pstate->nbatch = nbatch;
	batches = FUNC12(hashtable->area, pstate->batches);

	/* Use hash join memory context. */
	oldcxt = FUNC7(hashtable->hashCxt);

	/* Allocate this backend's accessor array. */
	hashtable->nbatch = nbatch;
	hashtable->batches = (ParallelHashJoinBatchAccessor *)
		FUNC13(sizeof(ParallelHashJoinBatchAccessor) * hashtable->nbatch);

	/* Set up the shared state, tuplestores and backend-local accessors. */
	for (i = 0; i < hashtable->nbatch; ++i)
	{
		ParallelHashJoinBatchAccessor *accessor = &hashtable->batches[i];
		ParallelHashJoinBatch *shared = FUNC8(batches, i);
		char		name[MAXPGPATH];

		/*
		 * All members of shared were zero-initialized.  We just need to set
		 * up the Barrier.
		 */
		FUNC4(&shared->batch_barrier, 0);
		if (i == 0)
		{
			/* Batch 0 doesn't need to be loaded. */
			FUNC2(&shared->batch_barrier);
			while (FUNC5(&shared->batch_barrier) < PHJ_BATCH_PROBING)
				FUNC1(&shared->batch_barrier, 0);
			FUNC3(&shared->batch_barrier);
		}

		/* Initialize accessor state.  All members were zero-initialized. */
		accessor->shared = shared;

		/* Initialize the shared tuplestores. */
		FUNC14(name, sizeof(name), "i%dof%d", i, hashtable->nbatch);
		accessor->inner_tuples =
			FUNC15(FUNC9(shared),
						   pstate->nparticipants,
						   ParallelWorkerNumber + 1,
						   sizeof(uint32),
						   SHARED_TUPLESTORE_SINGLE_PASS,
						   &pstate->fileset,
						   name);
		FUNC14(name, sizeof(name), "o%dof%d", i, hashtable->nbatch);
		accessor->outer_tuples =
			FUNC15(FUNC10(shared,
													  pstate->nparticipants),
						   pstate->nparticipants,
						   ParallelWorkerNumber + 1,
						   sizeof(uint32),
						   SHARED_TUPLESTORE_SINGLE_PASS,
						   &pstate->fileset,
						   name);
	}

	FUNC7(oldcxt);
}