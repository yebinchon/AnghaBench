#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_16__ {TYPE_4__** unshared; } ;
struct TYPE_19__ {int curbatch; double totalTuples; double skewTuples; int nbatch; double nbuckets_optimal; int log2_nbuckets_optimal; scalar_t__ spaceUsed; scalar_t__ spacePeak; scalar_t__ spaceAllowed; int /*<<< orphan*/ * innerBatchFile; TYPE_2__ buckets; } ;
struct TYPE_15__ {TYPE_4__* unshared; } ;
struct TYPE_18__ {TYPE_1__ next; int /*<<< orphan*/  hashvalue; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_len; } ;
typedef  TYPE_3__* MinimalTuple ;
typedef  TYPE_4__* HashJoinTuple ;
typedef  TYPE_5__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  HJTUPLE_OVERHEAD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int MaxAllocSize ; 
 double NTUP_PER_BUCKET ; 
 scalar_t__ FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC10(HashJoinTable hashtable,
					TupleTableSlot *slot,
					uint32 hashvalue)
{
	bool		shouldFree;
	MinimalTuple tuple = FUNC1(slot, &shouldFree);
	int			bucketno;
	int			batchno;

	FUNC2(hashtable, hashvalue,
							  &bucketno, &batchno);

	/*
	 * decide whether to put the tuple in the hash table or a temp file
	 */
	if (batchno == hashtable->curbatch)
	{
		/*
		 * put the tuple in hash table
		 */
		HashJoinTuple hashTuple;
		int			hashTupleSize;
		double		ntuples = (hashtable->totalTuples - hashtable->skewTuples);

		/* Create the HashJoinTuple */
		hashTupleSize = HJTUPLE_OVERHEAD + tuple->t_len;
		hashTuple = (HashJoinTuple) FUNC7(hashtable, hashTupleSize);

		hashTuple->hashvalue = hashvalue;
		FUNC9(FUNC5(hashTuple), tuple, tuple->t_len);

		/*
		 * We always reset the tuple-matched flag on insertion.  This is okay
		 * even when reloading a tuple from a batch file, since the tuple
		 * could not possibly have been matched to an outer tuple before it
		 * went into the batch file.
		 */
		FUNC6(FUNC5(hashTuple));

		/* Push it onto the front of the bucket's list */
		hashTuple->next.unshared = hashtable->buckets.unshared[bucketno];
		hashtable->buckets.unshared[bucketno] = hashTuple;

		/*
		 * Increase the (optimal) number of buckets if we just exceeded the
		 * NTUP_PER_BUCKET threshold, but only when there's still a single
		 * batch.
		 */
		if (hashtable->nbatch == 1 &&
			ntuples > (hashtable->nbuckets_optimal * NTUP_PER_BUCKET))
		{
			/* Guard against integer overflow and alloc size overflow */
			if (hashtable->nbuckets_optimal <= INT_MAX / 2 &&
				hashtable->nbuckets_optimal * 2 <= MaxAllocSize / sizeof(HashJoinTuple))
			{
				hashtable->nbuckets_optimal *= 2;
				hashtable->log2_nbuckets_optimal += 1;
			}
		}

		/* Account for space used, and back off if we've used too much */
		hashtable->spaceUsed += hashTupleSize;
		if (hashtable->spaceUsed > hashtable->spacePeak)
			hashtable->spacePeak = hashtable->spaceUsed;
		if (hashtable->spaceUsed +
			hashtable->nbuckets_optimal * sizeof(HashJoinTuple)
			> hashtable->spaceAllowed)
			FUNC3(hashtable);
	}
	else
	{
		/*
		 * put the tuple into a temp file for later batches
		 */
		FUNC0(batchno > hashtable->curbatch);
		FUNC4(tuple,
							  hashvalue,
							  &hashtable->innerBatchFile[batchno]);
	}

	if (shouldFree)
		FUNC8(tuple);
}