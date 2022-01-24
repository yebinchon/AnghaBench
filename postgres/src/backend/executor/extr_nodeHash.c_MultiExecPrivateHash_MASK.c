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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_16__ {int /*<<< orphan*/ * ecxt_outertuple; } ;
struct TYPE_15__ {int skewTuples; int totalTuples; scalar_t__ nbuckets; scalar_t__ nbuckets_optimal; scalar_t__ spaceUsed; scalar_t__ spacePeak; int partialTuples; int /*<<< orphan*/  keepNulls; } ;
struct TYPE_13__ {TYPE_4__* ps_ExprContext; } ;
struct TYPE_14__ {TYPE_1__ ps; int /*<<< orphan*/ * hashkeys; TYPE_3__* hashtable; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ HashState ;
typedef  int /*<<< orphan*/  HashJoinTuple ;
typedef  TYPE_3__* HashJoinTable ;
typedef  TYPE_4__ ExprContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int INVALID_SKEW_BUCKET_NO ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(HashState *node)
{
	PlanState  *outerNode;
	List	   *hashkeys;
	HashJoinTable hashtable;
	TupleTableSlot *slot;
	ExprContext *econtext;
	uint32		hashvalue;

	/*
	 * get state info from node
	 */
	outerNode = FUNC7(node);
	hashtable = node->hashtable;

	/*
	 * set expression context
	 */
	hashkeys = node->hashkeys;
	econtext = node->ps.ps_ExprContext;

	/*
	 * Get all tuples from the node below the Hash node and insert into the
	 * hash table (or temp files).
	 */
	for (;;)
	{
		slot = FUNC5(outerNode);
		if (FUNC6(slot))
			break;
		/* We have to compute the hash value */
		econtext->ecxt_outertuple = slot;
		if (FUNC0(hashtable, econtext, hashkeys,
								 false, hashtable->keepNulls,
								 &hashvalue))
		{
			int			bucketNumber;

			bucketNumber = FUNC1(hashtable, hashvalue);
			if (bucketNumber != INVALID_SKEW_BUCKET_NO)
			{
				/* It's a skew tuple, so put it into that hash table */
				FUNC3(hashtable, slot, hashvalue,
										bucketNumber);
				hashtable->skewTuples += 1;
			}
			else
			{
				/* Not subject to skew optimization, so insert normally */
				FUNC4(hashtable, slot, hashvalue);
			}
			hashtable->totalTuples += 1;
		}
	}

	/* resize the hash table if needed (NTUP_PER_BUCKET exceeded) */
	if (hashtable->nbuckets != hashtable->nbuckets_optimal)
		FUNC2(hashtable);

	/* Account for the buckets in spaceUsed (reported in EXPLAIN ANALYZE) */
	hashtable->spaceUsed += hashtable->nbuckets * sizeof(HashJoinTuple);
	if (hashtable->spaceUsed > hashtable->spacePeak)
		hashtable->spacePeak = hashtable->spaceUsed;

	hashtable->partialTuples = hashtable->totalTuples;
}