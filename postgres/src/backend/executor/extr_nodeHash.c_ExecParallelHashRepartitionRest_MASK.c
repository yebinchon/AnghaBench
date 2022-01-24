#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_12__ {TYPE_1__* batches; int /*<<< orphan*/  area; TYPE_2__* parallel_state; } ;
struct TYPE_11__ {scalar_t__ t_len; } ;
struct TYPE_10__ {int old_nbatch; int /*<<< orphan*/  fileset; int /*<<< orphan*/  old_batches; } ;
struct TYPE_9__ {size_t estimated_size; int /*<<< orphan*/  inner_tuples; int /*<<< orphan*/  old_ntuples; int /*<<< orphan*/  ntuples; } ;
typedef  int /*<<< orphan*/  SharedTuplestoreAccessor ;
typedef  TYPE_2__ ParallelHashJoinState ;
typedef  int /*<<< orphan*/  ParallelHashJoinBatch ;
typedef  TYPE_3__* MinimalTuple ;
typedef  TYPE_4__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ HJTUPLE_OVERHEAD ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ParallelWorkerNumber ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC13(HashJoinTable hashtable)
{
	ParallelHashJoinState *pstate = hashtable->parallel_state;
	int			old_nbatch = pstate->old_nbatch;
	SharedTuplestoreAccessor **old_inner_tuples;
	ParallelHashJoinBatch *old_batches;
	int			i;

	/* Get our hands on the previous generation of batches. */
	old_batches = (ParallelHashJoinBatch *)
		FUNC5(hashtable->area, pstate->old_batches);
	old_inner_tuples = FUNC6(sizeof(SharedTuplestoreAccessor *) * old_nbatch);
	for (i = 1; i < old_nbatch; ++i)
	{
		ParallelHashJoinBatch *shared =
		FUNC3(old_batches, i);

		old_inner_tuples[i] = FUNC8(FUNC4(shared),
										 ParallelWorkerNumber + 1,
										 &pstate->fileset);
	}

	/* Join in the effort to repartition them. */
	for (i = 1; i < old_nbatch; ++i)
	{
		MinimalTuple tuple;
		uint32		hashvalue;

		/* Scan one partition from the previous generation. */
		FUNC9(old_inner_tuples[i]);
		while ((tuple = FUNC11(old_inner_tuples[i], &hashvalue)))
		{
			size_t		tuple_size = FUNC2(HJTUPLE_OVERHEAD + tuple->t_len);
			int			bucketno;
			int			batchno;

			/* Decide which partition it goes to in the new generation. */
			FUNC1(hashtable, hashvalue, &bucketno,
									  &batchno);

			hashtable->batches[batchno].estimated_size += tuple_size;
			++hashtable->batches[batchno].ntuples;
			++hashtable->batches[i].old_ntuples;

			/* Store the tuple its new batch. */
			FUNC12(hashtable->batches[batchno].inner_tuples,
						 &hashvalue, tuple);

			FUNC0();
		}
		FUNC10(old_inner_tuples[i]);
	}

	FUNC7(old_inner_tuples);
}