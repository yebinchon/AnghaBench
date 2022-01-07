
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
typedef scalar_t__ dsa_pointer ;
struct TYPE_25__ {scalar_t__ t_len; } ;
struct TYPE_20__ {int * shared; } ;
struct TYPE_24__ {TYPE_3__ buckets; TYPE_2__* batches; int area; TYPE_4__* parallel_state; } ;
struct TYPE_23__ {int hashvalue; } ;
struct TYPE_22__ {size_t used; } ;
struct TYPE_21__ {int nbuckets; int grow_buckets_barrier; int growth; int chunk_work_queue; int build_barrier; } ;
struct TYPE_19__ {TYPE_1__* shared; } ;
struct TYPE_18__ {size_t size; int chunks; int buckets; } ;
typedef TYPE_4__ ParallelHashJoinState ;
typedef TYPE_5__* HashMemoryChunk ;
typedef TYPE_6__* HashJoinTuple ;
typedef TYPE_7__* HashJoinTable ;


 int Assert (int) ;
 int BarrierArriveAndWait (int *,int ) ;
 scalar_t__ BarrierPhase (int *) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecHashGetBucketAndBatch (TYPE_7__*,int ,int*,int*) ;
 int ExecParallelHashEnsureBatchAccessors (TYPE_7__*) ;
 TYPE_5__* ExecParallelHashPopChunkQueue (TYPE_7__*,scalar_t__*) ;
 int ExecParallelHashPushTuple (int *,TYPE_6__*,scalar_t__) ;
 int ExecParallelHashTableSetCurrentBatch (TYPE_7__*,int ) ;
 int HASH_CHUNK_DATA (TYPE_5__*) ;
 scalar_t__ HASH_CHUNK_HEADER_SIZE ;
 TYPE_8__* HJTUPLE_MINTUPLE (TYPE_6__*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 int InvalidDsaPointer ;
 size_t MAXALIGN (scalar_t__) ;
 scalar_t__ PHJ_BUILD_HASHING_INNER ;
 int PHJ_GROWTH_OK ;


 int PHJ_GROW_BUCKETS_PHASE (scalar_t__) ;

 int WAIT_EVENT_HASH_GROW_BUCKETS_ALLOCATING ;
 int WAIT_EVENT_HASH_GROW_BUCKETS_ELECTING ;
 int WAIT_EVENT_HASH_GROW_BUCKETS_REINSERTING ;
 int dsa_allocate (int ,size_t) ;
 int dsa_free (int ,int ) ;
 scalar_t__ dsa_get_address (int ,int ) ;
 int dsa_pointer_atomic_init (int *,int ) ;

__attribute__((used)) static void
ExecParallelHashIncreaseNumBuckets(HashJoinTable hashtable)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 int i;
 HashMemoryChunk chunk;
 dsa_pointer chunk_s;

 Assert(BarrierPhase(&pstate->build_barrier) == PHJ_BUILD_HASHING_INNER);






 switch (PHJ_GROW_BUCKETS_PHASE(BarrierPhase(&pstate->grow_buckets_barrier)))
 {
  case 129:

   if (BarrierArriveAndWait(&pstate->grow_buckets_barrier,
          WAIT_EVENT_HASH_GROW_BUCKETS_ELECTING))
   {
    size_t size;
    dsa_pointer_atomic *buckets;


    pstate->nbuckets *= 2;
    size = pstate->nbuckets * sizeof(dsa_pointer_atomic);
    hashtable->batches[0].shared->size += size / 2;
    dsa_free(hashtable->area, hashtable->batches[0].shared->buckets);
    hashtable->batches[0].shared->buckets =
     dsa_allocate(hashtable->area, size);
    buckets = (dsa_pointer_atomic *)
     dsa_get_address(hashtable->area,
         hashtable->batches[0].shared->buckets);
    for (i = 0; i < pstate->nbuckets; ++i)
     dsa_pointer_atomic_init(&buckets[i], InvalidDsaPointer);


    pstate->chunk_work_queue = hashtable->batches[0].shared->chunks;


    pstate->growth = PHJ_GROWTH_OK;
   }


  case 130:

   BarrierArriveAndWait(&pstate->grow_buckets_barrier,
         WAIT_EVENT_HASH_GROW_BUCKETS_ALLOCATING);


  case 128:

   ExecParallelHashEnsureBatchAccessors(hashtable);
   ExecParallelHashTableSetCurrentBatch(hashtable, 0);
   while ((chunk = ExecParallelHashPopChunkQueue(hashtable, &chunk_s)))
   {
    size_t idx = 0;

    while (idx < chunk->used)
    {
     HashJoinTuple hashTuple = (HashJoinTuple) (HASH_CHUNK_DATA(chunk) + idx);
     dsa_pointer shared = chunk_s + HASH_CHUNK_HEADER_SIZE + idx;
     int bucketno;
     int batchno;

     ExecHashGetBucketAndBatch(hashtable, hashTuple->hashvalue,
             &bucketno, &batchno);
     Assert(batchno == 0);


     ExecParallelHashPushTuple(&hashtable->buckets.shared[bucketno],
             hashTuple, shared);


     idx += MAXALIGN(HJTUPLE_OVERHEAD +
         HJTUPLE_MINTUPLE(hashTuple)->t_len);
    }


    CHECK_FOR_INTERRUPTS();
   }
   BarrierArriveAndWait(&pstate->grow_buckets_barrier,
         WAIT_EVENT_HASH_GROW_BUCKETS_REINSERTING);
 }
}
