#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  dsa_pointer ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_19__ {int /*<<< orphan*/ * shared; } ;
struct TYPE_23__ {TYPE_3__* batches; TYPE_2__ buckets; TYPE_1__* parallel_state; } ;
struct TYPE_22__ {int /*<<< orphan*/  hashvalue; } ;
struct TYPE_21__ {scalar_t__ t_len; } ;
struct TYPE_20__ {size_t preallocated; int /*<<< orphan*/  ntuples; int /*<<< orphan*/  inner_tuples; } ;
struct TYPE_18__ {int /*<<< orphan*/  build_barrier; } ;
typedef  TYPE_4__* MinimalTuple ;
typedef  TYPE_5__* HashJoinTuple ;
typedef  TYPE_6__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ HJTUPLE_OVERHEAD ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ PHJ_BUILD_HASHING_INNER ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 

void
FUNC12(HashJoinTable hashtable,
							TupleTableSlot *slot,
							uint32 hashvalue)
{
	bool		shouldFree;
	MinimalTuple tuple = FUNC2(slot, &shouldFree);
	dsa_pointer shared;
	int			bucketno;
	int			batchno;

retry:
	FUNC3(hashtable, hashvalue, &bucketno, &batchno);

	if (batchno == 0)
	{
		HashJoinTuple hashTuple;

		/* Try to load it into memory. */
		FUNC0(FUNC1(&hashtable->parallel_state->build_barrier) ==
			   PHJ_BUILD_HASHING_INNER);
		hashTuple = FUNC5(hashtable,
											   HJTUPLE_OVERHEAD + tuple->t_len,
											   &shared);
		if (hashTuple == NULL)
			goto retry;

		/* Store the hash value in the HashJoinTuple header. */
		hashTuple->hashvalue = hashvalue;
		FUNC10(FUNC7(hashTuple), tuple, tuple->t_len);

		/* Push it onto the front of the bucket's list */
		FUNC4(&hashtable->buckets.shared[bucketno],
								  hashTuple, shared);
	}
	else
	{
		size_t		tuple_size = FUNC8(HJTUPLE_OVERHEAD + tuple->t_len);

		FUNC0(batchno > 0);

		/* Try to preallocate space in the batch if necessary. */
		if (hashtable->batches[batchno].preallocated < tuple_size)
		{
			if (!FUNC6(hashtable, batchno, tuple_size))
				goto retry;
		}

		FUNC0(hashtable->batches[batchno].preallocated >= tuple_size);
		hashtable->batches[batchno].preallocated -= tuple_size;
		FUNC11(hashtable->batches[batchno].inner_tuples, &hashvalue,
					 tuple);
	}
	++hashtable->batches[batchno].ntuples;

	if (shouldFree)
		FUNC9(tuple);
}