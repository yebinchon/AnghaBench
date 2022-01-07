
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32 ;
typedef int TupleTableSlot ;
struct TYPE_16__ {TYPE_4__** unshared; } ;
struct TYPE_19__ {int curbatch; double totalTuples; double skewTuples; int nbatch; double nbuckets_optimal; int log2_nbuckets_optimal; scalar_t__ spaceUsed; scalar_t__ spacePeak; scalar_t__ spaceAllowed; int * innerBatchFile; TYPE_2__ buckets; } ;
struct TYPE_15__ {TYPE_4__* unshared; } ;
struct TYPE_18__ {TYPE_1__ next; int hashvalue; } ;
struct TYPE_17__ {int t_len; } ;
typedef TYPE_3__* MinimalTuple ;
typedef TYPE_4__* HashJoinTuple ;
typedef TYPE_5__* HashJoinTable ;


 int Assert (int) ;
 TYPE_3__* ExecFetchSlotMinimalTuple (int *,int*) ;
 int ExecHashGetBucketAndBatch (TYPE_5__*,int ,int*,int*) ;
 int ExecHashIncreaseNumBatches (TYPE_5__*) ;
 int ExecHashJoinSaveTuple (TYPE_3__*,int ,int *) ;
 int HJTUPLE_MINTUPLE (TYPE_4__*) ;
 int HJTUPLE_OVERHEAD ;
 int HeapTupleHeaderClearMatch (int ) ;
 int INT_MAX ;
 int MaxAllocSize ;
 double NTUP_PER_BUCKET ;
 scalar_t__ dense_alloc (TYPE_5__*,int) ;
 int heap_free_minimal_tuple (TYPE_3__*) ;
 int memcpy (int ,TYPE_3__*,int ) ;

void
ExecHashTableInsert(HashJoinTable hashtable,
     TupleTableSlot *slot,
     uint32 hashvalue)
{
 bool shouldFree;
 MinimalTuple tuple = ExecFetchSlotMinimalTuple(slot, &shouldFree);
 int bucketno;
 int batchno;

 ExecHashGetBucketAndBatch(hashtable, hashvalue,
         &bucketno, &batchno);




 if (batchno == hashtable->curbatch)
 {



  HashJoinTuple hashTuple;
  int hashTupleSize;
  double ntuples = (hashtable->totalTuples - hashtable->skewTuples);


  hashTupleSize = HJTUPLE_OVERHEAD + tuple->t_len;
  hashTuple = (HashJoinTuple) dense_alloc(hashtable, hashTupleSize);

  hashTuple->hashvalue = hashvalue;
  memcpy(HJTUPLE_MINTUPLE(hashTuple), tuple, tuple->t_len);







  HeapTupleHeaderClearMatch(HJTUPLE_MINTUPLE(hashTuple));


  hashTuple->next.unshared = hashtable->buckets.unshared[bucketno];
  hashtable->buckets.unshared[bucketno] = hashTuple;






  if (hashtable->nbatch == 1 &&
   ntuples > (hashtable->nbuckets_optimal * NTUP_PER_BUCKET))
  {

   if (hashtable->nbuckets_optimal <= INT_MAX / 2 &&
    hashtable->nbuckets_optimal * 2 <= MaxAllocSize / sizeof(HashJoinTuple))
   {
    hashtable->nbuckets_optimal *= 2;
    hashtable->log2_nbuckets_optimal += 1;
   }
  }


  hashtable->spaceUsed += hashTupleSize;
  if (hashtable->spaceUsed > hashtable->spacePeak)
   hashtable->spacePeak = hashtable->spaceUsed;
  if (hashtable->spaceUsed +
   hashtable->nbuckets_optimal * sizeof(HashJoinTuple)
   > hashtable->spaceAllowed)
   ExecHashIncreaseNumBatches(hashtable);
 }
 else
 {



  Assert(batchno > hashtable->curbatch);
  ExecHashJoinSaveTuple(tuple,
         hashvalue,
         &hashtable->innerBatchFile[batchno]);
 }

 if (shouldFree)
  heap_free_minimal_tuple(tuple);
}
