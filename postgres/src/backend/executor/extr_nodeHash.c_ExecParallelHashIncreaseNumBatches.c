
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
struct TYPE_16__ {int nbatch; int nbuckets; int area; TYPE_1__* batches; TYPE_2__* parallel_state; } ;
struct TYPE_15__ {double ntuples; long estimated_size; double old_ntuples; int space_exhausted; int chunks; void* buckets; } ;
struct TYPE_14__ {int old_nbatch; long space_allowed; int nparticipants; int nbatch; int nbuckets; int grow_batches_barrier; void* old_batches; void* growth; int chunk_work_queue; void* batches; int build_barrier; } ;
struct TYPE_13__ {TYPE_3__* shared; } ;
typedef TYPE_2__ ParallelHashJoinState ;
typedef TYPE_3__ ParallelHashJoinBatch ;
typedef TYPE_4__* HashJoinTable ;


 int Assert (int) ;
 int BarrierArriveAndWait (int *,int ) ;
 scalar_t__ BarrierPhase (int *) ;
 int ExecParallelHashCloseBatchAccessors (TYPE_4__*) ;
 int ExecParallelHashEnsureBatchAccessors (TYPE_4__*) ;
 int ExecParallelHashJoinSetUpBatches (TYPE_4__*,int) ;
 int ExecParallelHashMergeCounters (TYPE_4__*) ;
 int ExecParallelHashRepartitionFirst (TYPE_4__*) ;
 int ExecParallelHashRepartitionRest (TYPE_4__*) ;
 int ExecParallelHashTableSetCurrentBatch (TYPE_4__*,int ) ;
 int INT_MAX ;
 void* InvalidDsaPointer ;
 int Max (int,int) ;
 int MaxAllocSize ;
 double Min (double,int) ;
 double NTUP_PER_BUCKET ;
 scalar_t__ PHJ_BUILD_HASHING_INNER ;
 void* PHJ_GROWTH_DISABLED ;
 void* PHJ_GROWTH_NEED_MORE_BATCHES ;
 void* PHJ_GROWTH_OK ;




 int PHJ_GROW_BATCHES_PHASE (scalar_t__) ;

 int WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING ;
 int WAIT_EVENT_HASH_GROW_BATCHES_DECIDING ;
 int WAIT_EVENT_HASH_GROW_BATCHES_ELECTING ;
 int WAIT_EVENT_HASH_GROW_BATCHES_FINISHING ;
 int WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING ;
 double ceil (double) ;
 void* dsa_allocate (int ,int) ;
 int dsa_free (int ,void*) ;
 scalar_t__ dsa_get_address (int ,void*) ;
 int dsa_pointer_atomic_init (int *,void*) ;
 int dsa_pointer_atomic_write (int *,void*) ;
 int my_log2 (int) ;
 long work_mem ;

__attribute__((used)) static void
ExecParallelHashIncreaseNumBatches(HashJoinTable hashtable)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 int i;

 Assert(BarrierPhase(&pstate->build_barrier) == PHJ_BUILD_HASHING_INNER);






 switch (PHJ_GROW_BATCHES_PHASE(BarrierPhase(&pstate->grow_batches_barrier)))
 {
  case 130:







   if (BarrierArriveAndWait(&pstate->grow_batches_barrier,
          WAIT_EVENT_HASH_GROW_BATCHES_ELECTING))
   {
    dsa_pointer_atomic *buckets;
    ParallelHashJoinBatch *old_batch0;
    int new_nbatch;
    int i;


    old_batch0 = hashtable->batches[0].shared;
    pstate->old_batches = pstate->batches;
    pstate->old_nbatch = hashtable->nbatch;
    pstate->batches = InvalidDsaPointer;


    ExecParallelHashCloseBatchAccessors(hashtable);


    if (hashtable->nbatch == 1)
    {





     pstate->space_allowed = work_mem * 1024L;
     new_nbatch = 1 << my_log2(pstate->nparticipants * 2);
    }
    else
    {




     new_nbatch = hashtable->nbatch * 2;
    }


    Assert(hashtable->nbatch == pstate->nbatch);
    ExecParallelHashJoinSetUpBatches(hashtable, new_nbatch);
    Assert(hashtable->nbatch == pstate->nbatch);


    if (pstate->old_nbatch == 1)
    {
     double dtuples;
     double dbuckets;
     int new_nbuckets;
     dtuples = (old_batch0->ntuples * 2.0) / new_nbatch;
     dbuckets = ceil(dtuples / NTUP_PER_BUCKET);
     dbuckets = Min(dbuckets,
           MaxAllocSize / sizeof(dsa_pointer_atomic));
     new_nbuckets = (int) dbuckets;
     new_nbuckets = Max(new_nbuckets, 1024);
     new_nbuckets = 1 << my_log2(new_nbuckets);
     dsa_free(hashtable->area, old_batch0->buckets);
     hashtable->batches[0].shared->buckets =
      dsa_allocate(hashtable->area,
          sizeof(dsa_pointer_atomic) * new_nbuckets);
     buckets = (dsa_pointer_atomic *)
      dsa_get_address(hashtable->area,
          hashtable->batches[0].shared->buckets);
     for (i = 0; i < new_nbuckets; ++i)
      dsa_pointer_atomic_init(&buckets[i], InvalidDsaPointer);
     pstate->nbuckets = new_nbuckets;
    }
    else
    {

     hashtable->batches[0].shared->buckets = old_batch0->buckets;
     buckets = (dsa_pointer_atomic *)
      dsa_get_address(hashtable->area, old_batch0->buckets);
     for (i = 0; i < hashtable->nbuckets; ++i)
      dsa_pointer_atomic_write(&buckets[i], InvalidDsaPointer);
    }


    pstate->chunk_work_queue = old_batch0->chunks;


    pstate->growth = PHJ_GROWTH_DISABLED;
   }
   else
   {

    ExecParallelHashCloseBatchAccessors(hashtable);
   }


  case 132:

   BarrierArriveAndWait(&pstate->grow_batches_barrier,
         WAIT_EVENT_HASH_GROW_BATCHES_ALLOCATING);


  case 128:

   ExecParallelHashEnsureBatchAccessors(hashtable);
   ExecParallelHashTableSetCurrentBatch(hashtable, 0);

   ExecParallelHashRepartitionFirst(hashtable);
   ExecParallelHashRepartitionRest(hashtable);
   ExecParallelHashMergeCounters(hashtable);

   BarrierArriveAndWait(&pstate->grow_batches_barrier,
         WAIT_EVENT_HASH_GROW_BATCHES_REPARTITIONING);


  case 131:






   if (BarrierArriveAndWait(&pstate->grow_batches_barrier,
          WAIT_EVENT_HASH_GROW_BATCHES_DECIDING))
   {
    bool space_exhausted = 0;
    bool extreme_skew_detected = 0;


    ExecParallelHashEnsureBatchAccessors(hashtable);
    ExecParallelHashTableSetCurrentBatch(hashtable, 0);


    for (i = 0; i < hashtable->nbatch; ++i)
    {
     ParallelHashJoinBatch *batch = hashtable->batches[i].shared;

     if (batch->space_exhausted ||
      batch->estimated_size > pstate->space_allowed)
     {
      int parent;

      space_exhausted = 1;







      parent = i % pstate->old_nbatch;
      if (batch->ntuples == hashtable->batches[parent].shared->old_ntuples)
       extreme_skew_detected = 1;
     }
    }


    if (extreme_skew_detected || hashtable->nbatch >= INT_MAX / 2)
     pstate->growth = PHJ_GROWTH_DISABLED;
    else if (space_exhausted)
     pstate->growth = PHJ_GROWTH_NEED_MORE_BATCHES;
    else
     pstate->growth = PHJ_GROWTH_OK;


    dsa_free(hashtable->area, pstate->old_batches);
    pstate->old_batches = InvalidDsaPointer;
   }


  case 129:

   BarrierArriveAndWait(&pstate->grow_batches_barrier,
         WAIT_EVENT_HASH_GROW_BATCHES_FINISHING);
 }
}
