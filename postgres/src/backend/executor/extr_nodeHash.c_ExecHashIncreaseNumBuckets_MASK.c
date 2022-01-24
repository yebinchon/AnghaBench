#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_5__** unshared; } ;
struct TYPE_21__ {int nbuckets; int nbuckets_optimal; int log2_nbuckets; int log2_nbuckets_optimal; TYPE_3__ buckets; TYPE_4__* chunks; } ;
struct TYPE_17__ {TYPE_5__* unshared; } ;
struct TYPE_20__ {TYPE_2__ next; int /*<<< orphan*/  hashvalue; } ;
struct TYPE_16__ {TYPE_4__* unshared; } ;
struct TYPE_19__ {size_t used; TYPE_1__ next; } ;
struct TYPE_15__ {scalar_t__ t_len; } ;
typedef  TYPE_4__* HashMemoryChunk ;
typedef  TYPE_5__* HashJoinTuple ;
typedef  TYPE_6__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 TYPE_10__* FUNC4 (TYPE_5__*) ; 
 scalar_t__ HJTUPLE_OVERHEAD ; 
 int INT_MAX ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_6__*,int,int) ; 
 scalar_t__ FUNC8 (TYPE_5__**,int) ; 

__attribute__((used)) static void
FUNC9(HashJoinTable hashtable)
{
	HashMemoryChunk chunk;

	/* do nothing if not an increase (it's called increase for a reason) */
	if (hashtable->nbuckets >= hashtable->nbuckets_optimal)
		return;

#ifdef HJDEBUG
	printf("Hashjoin %p: increasing nbuckets %d => %d\n",
		   hashtable, hashtable->nbuckets, hashtable->nbuckets_optimal);
#endif

	hashtable->nbuckets = hashtable->nbuckets_optimal;
	hashtable->log2_nbuckets = hashtable->log2_nbuckets_optimal;

	FUNC0(hashtable->nbuckets > 1);
	FUNC0(hashtable->nbuckets <= (INT_MAX / 2));
	FUNC0(hashtable->nbuckets == (1 << hashtable->log2_nbuckets));

	/*
	 * Just reallocate the proper number of buckets - we don't need to walk
	 * through them - we can walk the dense-allocated chunks (just like in
	 * ExecHashIncreaseNumBatches, but without all the copying into new
	 * chunks)
	 */
	hashtable->buckets.unshared =
		(HashJoinTuple *) FUNC8(hashtable->buckets.unshared,
								   hashtable->nbuckets * sizeof(HashJoinTuple));

	FUNC6(hashtable->buckets.unshared, 0,
		   hashtable->nbuckets * sizeof(HashJoinTuple));

	/* scan through all tuples in all chunks to rebuild the hash table */
	for (chunk = hashtable->chunks; chunk != NULL; chunk = chunk->next.unshared)
	{
		/* process all tuples stored in this chunk */
		size_t		idx = 0;

		while (idx < chunk->used)
		{
			HashJoinTuple hashTuple = (HashJoinTuple) (FUNC3(chunk) + idx);
			int			bucketno;
			int			batchno;

			FUNC2(hashtable, hashTuple->hashvalue,
									  &bucketno, &batchno);

			/* add the tuple to the proper bucket */
			hashTuple->next.unshared = hashtable->buckets.unshared[bucketno];
			hashtable->buckets.unshared[bucketno] = hashTuple;

			/* advance index past the tuple */
			idx += FUNC5(HJTUPLE_OVERHEAD +
							FUNC4(hashTuple)->t_len);
		}

		/* allow this loop to be cancellable */
		FUNC1();
	}
}