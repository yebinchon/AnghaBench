#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nbatch; TYPE_3__* batches; TYPE_2__* parallel_state; } ;
struct TYPE_10__ {int at_least_one_chunk; size_t preallocated; TYPE_1__* shared; } ;
struct TYPE_9__ {scalar_t__ growth; scalar_t__ space_allowed; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {scalar_t__ estimated_size; int space_exhausted; } ;
typedef  TYPE_2__ ParallelHashJoinState ;
typedef  TYPE_3__ ParallelHashJoinBatchAccessor ;
typedef  scalar_t__ ParallelHashGrowth ;
typedef  TYPE_4__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ HASH_CHUNK_HEADER_SIZE ; 
 scalar_t__ HASH_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 size_t FUNC5 (size_t) ; 
 size_t FUNC6 (size_t,scalar_t__) ; 
 scalar_t__ PHJ_GROWTH_DISABLED ; 
 scalar_t__ PHJ_GROWTH_NEED_MORE_BATCHES ; 
 scalar_t__ PHJ_GROWTH_NEED_MORE_BUCKETS ; 

__attribute__((used)) static bool
FUNC7(HashJoinTable hashtable, int batchno, size_t size)
{
	ParallelHashJoinState *pstate = hashtable->parallel_state;
	ParallelHashJoinBatchAccessor *batch = &hashtable->batches[batchno];
	size_t		want = FUNC6(size, HASH_CHUNK_SIZE - HASH_CHUNK_HEADER_SIZE);

	FUNC0(batchno > 0);
	FUNC0(batchno < hashtable->nbatch);
	FUNC0(size == FUNC5(size));

	FUNC3(&pstate->lock, LW_EXCLUSIVE);

	/* Has another participant commanded us to help grow? */
	if (pstate->growth == PHJ_GROWTH_NEED_MORE_BATCHES ||
		pstate->growth == PHJ_GROWTH_NEED_MORE_BUCKETS)
	{
		ParallelHashGrowth growth = pstate->growth;

		FUNC4(&pstate->lock);
		if (growth == PHJ_GROWTH_NEED_MORE_BATCHES)
			FUNC1(hashtable);
		else if (growth == PHJ_GROWTH_NEED_MORE_BUCKETS)
			FUNC2(hashtable);

		return false;
	}

	if (pstate->growth != PHJ_GROWTH_DISABLED &&
		batch->at_least_one_chunk &&
		(batch->shared->estimated_size + want + HASH_CHUNK_HEADER_SIZE
		 > pstate->space_allowed))
	{
		/*
		 * We have determined that this batch would exceed the space budget if
		 * loaded into memory.  Command all participants to help repartition.
		 */
		batch->shared->space_exhausted = true;
		pstate->growth = PHJ_GROWTH_NEED_MORE_BATCHES;
		FUNC4(&pstate->lock);

		return false;
	}

	batch->at_least_one_chunk = true;
	batch->shared->estimated_size += want + HASH_CHUNK_HEADER_SIZE;
	batch->preallocated = want;
	FUNC4(&pstate->lock);

	return true;
}