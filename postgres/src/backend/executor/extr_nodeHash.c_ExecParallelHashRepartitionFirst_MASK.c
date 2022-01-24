#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_22__ {int /*<<< orphan*/ * shared; } ;
struct TYPE_27__ {scalar_t__ nbatch; int /*<<< orphan*/  area; TYPE_3__* batches; TYPE_2__ buckets; TYPE_1__* parallel_state; } ;
struct TYPE_26__ {int /*<<< orphan*/  hashvalue; } ;
struct TYPE_25__ {size_t used; } ;
struct TYPE_24__ {scalar_t__ t_len; } ;
struct TYPE_23__ {size_t estimated_size; int /*<<< orphan*/  ntuples; int /*<<< orphan*/  old_ntuples; int /*<<< orphan*/  inner_tuples; } ;
struct TYPE_21__ {scalar_t__ nbatch; } ;
typedef  TYPE_4__* MinimalTuple ;
typedef  TYPE_5__* HashMemoryChunk ;
typedef  TYPE_6__* HashJoinTuple ;
typedef  TYPE_7__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_5__* FUNC3 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (TYPE_7__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 TYPE_4__* FUNC7 (TYPE_6__*) ; 
 scalar_t__ HJTUPLE_OVERHEAD ; 
 size_t FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC12(HashJoinTable hashtable)
{
	dsa_pointer chunk_shared;
	HashMemoryChunk chunk;

	FUNC0(hashtable->nbatch == hashtable->parallel_state->nbatch);

	while ((chunk = FUNC3(hashtable, &chunk_shared)))
	{
		size_t		idx = 0;

		/* Repartition all tuples in this chunk. */
		while (idx < chunk->used)
		{
			HashJoinTuple hashTuple = (HashJoinTuple) (FUNC6(chunk) + idx);
			MinimalTuple tuple = FUNC7(hashTuple);
			HashJoinTuple copyTuple;
			dsa_pointer shared;
			int			bucketno;
			int			batchno;

			FUNC2(hashtable, hashTuple->hashvalue,
									  &bucketno, &batchno);

			FUNC0(batchno < hashtable->nbatch);
			if (batchno == 0)
			{
				/* It still belongs in batch 0.  Copy to a new chunk. */
				copyTuple =
					FUNC5(hashtable,
											   HJTUPLE_OVERHEAD + tuple->t_len,
											   &shared);
				copyTuple->hashvalue = hashTuple->hashvalue;
				FUNC10(FUNC7(copyTuple), tuple, tuple->t_len);
				FUNC4(&hashtable->buckets.shared[bucketno],
										  copyTuple, shared);
			}
			else
			{
				size_t		tuple_size =
				FUNC8(HJTUPLE_OVERHEAD + tuple->t_len);

				/* It belongs in a later batch. */
				hashtable->batches[batchno].estimated_size += tuple_size;
				FUNC11(hashtable->batches[batchno].inner_tuples,
							 &hashTuple->hashvalue, tuple);
			}

			/* Count this tuple. */
			++hashtable->batches[0].old_ntuples;
			++hashtable->batches[batchno].ntuples;

			idx += FUNC8(HJTUPLE_OVERHEAD +
							FUNC7(hashTuple)->t_len);
		}

		/* Free this chunk. */
		FUNC9(hashtable->area, chunk_shared);

		FUNC1();
	}
}