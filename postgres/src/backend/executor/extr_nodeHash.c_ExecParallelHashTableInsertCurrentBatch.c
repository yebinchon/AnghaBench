
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32 ;
typedef int dsa_pointer ;
typedef int TupleTableSlot ;
struct TYPE_14__ {int * shared; } ;
struct TYPE_17__ {int curbatch; TYPE_1__ buckets; } ;
struct TYPE_16__ {int hashvalue; } ;
struct TYPE_15__ {scalar_t__ t_len; } ;
typedef TYPE_2__* MinimalTuple ;
typedef TYPE_3__* HashJoinTuple ;
typedef TYPE_4__* HashJoinTable ;


 int Assert (int) ;
 TYPE_2__* ExecFetchSlotMinimalTuple (int *,int*) ;
 int ExecHashGetBucketAndBatch (TYPE_4__*,int ,int*,int*) ;
 int ExecParallelHashPushTuple (int *,TYPE_3__*,int ) ;
 TYPE_3__* ExecParallelHashTupleAlloc (TYPE_4__*,scalar_t__,int *) ;
 int HJTUPLE_MINTUPLE (TYPE_3__*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 int HeapTupleHeaderClearMatch (int ) ;
 int heap_free_minimal_tuple (TYPE_2__*) ;
 int memcpy (int ,TYPE_2__*,scalar_t__) ;

void
ExecParallelHashTableInsertCurrentBatch(HashJoinTable hashtable,
          TupleTableSlot *slot,
          uint32 hashvalue)
{
 bool shouldFree;
 MinimalTuple tuple = ExecFetchSlotMinimalTuple(slot, &shouldFree);
 HashJoinTuple hashTuple;
 dsa_pointer shared;
 int batchno;
 int bucketno;

 ExecHashGetBucketAndBatch(hashtable, hashvalue, &bucketno, &batchno);
 Assert(batchno == hashtable->curbatch);
 hashTuple = ExecParallelHashTupleAlloc(hashtable,
             HJTUPLE_OVERHEAD + tuple->t_len,
             &shared);
 hashTuple->hashvalue = hashvalue;
 memcpy(HJTUPLE_MINTUPLE(hashTuple), tuple, tuple->t_len);
 HeapTupleHeaderClearMatch(HJTUPLE_MINTUPLE(hashTuple));
 ExecParallelHashPushTuple(&hashtable->buckets.shared[bucketno],
         hashTuple, shared);

 if (shouldFree)
  heap_free_minimal_tuple(tuple);
}
