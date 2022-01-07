
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32 ;
typedef int dsa_pointer ;
typedef int TupleTableSlot ;
struct TYPE_19__ {int * shared; } ;
struct TYPE_23__ {TYPE_3__* batches; TYPE_2__ buckets; TYPE_1__* parallel_state; } ;
struct TYPE_22__ {int hashvalue; } ;
struct TYPE_21__ {scalar_t__ t_len; } ;
struct TYPE_20__ {size_t preallocated; int ntuples; int inner_tuples; } ;
struct TYPE_18__ {int build_barrier; } ;
typedef TYPE_4__* MinimalTuple ;
typedef TYPE_5__* HashJoinTuple ;
typedef TYPE_6__* HashJoinTable ;


 int Assert (int) ;
 scalar_t__ BarrierPhase (int *) ;
 TYPE_4__* ExecFetchSlotMinimalTuple (int *,int*) ;
 int ExecHashGetBucketAndBatch (TYPE_6__*,int ,int*,int*) ;
 int ExecParallelHashPushTuple (int *,TYPE_5__*,int ) ;
 TYPE_5__* ExecParallelHashTupleAlloc (TYPE_6__*,scalar_t__,int *) ;
 int ExecParallelHashTuplePrealloc (TYPE_6__*,int,size_t) ;
 int HJTUPLE_MINTUPLE (TYPE_5__*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 size_t MAXALIGN (scalar_t__) ;
 scalar_t__ PHJ_BUILD_HASHING_INNER ;
 int heap_free_minimal_tuple (TYPE_4__*) ;
 int memcpy (int ,TYPE_4__*,scalar_t__) ;
 int sts_puttuple (int ,int *,TYPE_4__*) ;

void
ExecParallelHashTableInsert(HashJoinTable hashtable,
       TupleTableSlot *slot,
       uint32 hashvalue)
{
 bool shouldFree;
 MinimalTuple tuple = ExecFetchSlotMinimalTuple(slot, &shouldFree);
 dsa_pointer shared;
 int bucketno;
 int batchno;

retry:
 ExecHashGetBucketAndBatch(hashtable, hashvalue, &bucketno, &batchno);

 if (batchno == 0)
 {
  HashJoinTuple hashTuple;


  Assert(BarrierPhase(&hashtable->parallel_state->build_barrier) ==
      PHJ_BUILD_HASHING_INNER);
  hashTuple = ExecParallelHashTupleAlloc(hashtable,
              HJTUPLE_OVERHEAD + tuple->t_len,
              &shared);
  if (hashTuple == ((void*)0))
   goto retry;


  hashTuple->hashvalue = hashvalue;
  memcpy(HJTUPLE_MINTUPLE(hashTuple), tuple, tuple->t_len);


  ExecParallelHashPushTuple(&hashtable->buckets.shared[bucketno],
          hashTuple, shared);
 }
 else
 {
  size_t tuple_size = MAXALIGN(HJTUPLE_OVERHEAD + tuple->t_len);

  Assert(batchno > 0);


  if (hashtable->batches[batchno].preallocated < tuple_size)
  {
   if (!ExecParallelHashTuplePrealloc(hashtable, batchno, tuple_size))
    goto retry;
  }

  Assert(hashtable->batches[batchno].preallocated >= tuple_size);
  hashtable->batches[batchno].preallocated -= tuple_size;
  sts_puttuple(hashtable->batches[batchno].inner_tuples, &hashvalue,
      tuple);
 }
 ++hashtable->batches[batchno].ntuples;

 if (shouldFree)
  heap_free_minimal_tuple(tuple);
}
