
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint32 ;
typedef int TupleTableSlot ;
struct TYPE_22__ {int * ecxt_outertuple; } ;
struct TYPE_21__ {int nbatch; int curbatch; int totalTuples; int nbuckets; int log2_nbuckets; TYPE_2__* batches; int partialTuples; int keepNulls; TYPE_3__* parallel_state; } ;
struct TYPE_17__ {TYPE_6__* ps_ExprContext; } ;
struct TYPE_20__ {TYPE_1__ ps; int * hashkeys; TYPE_5__* hashtable; } ;
struct TYPE_19__ {int total_tuples; int nbuckets; int growth; int grow_batches_barrier; int grow_buckets_barrier; int build_barrier; } ;
struct TYPE_18__ {int inner_tuples; } ;
typedef int PlanState ;
typedef TYPE_3__ ParallelHashJoinState ;
typedef int List ;
typedef TYPE_4__ HashState ;
typedef TYPE_5__* HashJoinTable ;
typedef TYPE_6__ ExprContext ;
typedef int Barrier ;


 int Assert (int) ;
 int BarrierArriveAndWait (int *,int ) ;
 int BarrierAttach (int *) ;
 int BarrierDetach (int *) ;
 int BarrierPhase (int *) ;
 int ExecHashGetHashValue (TYPE_5__*,TYPE_6__*,int *,int,int ,int *) ;
 int ExecParallelHashEnsureBatchAccessors (TYPE_5__*) ;
 int ExecParallelHashIncreaseNumBatches (TYPE_5__*) ;
 int ExecParallelHashIncreaseNumBuckets (TYPE_5__*) ;
 int ExecParallelHashMergeCounters (TYPE_5__*) ;
 int ExecParallelHashTableInsert (TYPE_5__*,int *,int ) ;
 int ExecParallelHashTableSetCurrentBatch (TYPE_5__*,int ) ;
 int * ExecProcNode (int *) ;

 int PHJ_BUILD_DONE ;

 int PHJ_BUILD_HASHING_OUTER ;
 int PHJ_GROWTH_DISABLED ;
 int PHJ_GROW_BATCHES_ELECTING ;
 int PHJ_GROW_BATCHES_PHASE (int ) ;
 int PHJ_GROW_BUCKETS_ELECTING ;
 int PHJ_GROW_BUCKETS_PHASE (int ) ;
 int TupIsNull (int *) ;
 int WAIT_EVENT_HASH_BUILD_ALLOCATING ;
 int WAIT_EVENT_HASH_BUILD_HASHING_INNER ;
 int my_log2 (int ) ;
 int * outerPlanState (TYPE_4__*) ;
 int sts_end_write (int ) ;

__attribute__((used)) static void
MultiExecParallelHash(HashState *node)
{
 ParallelHashJoinState *pstate;
 PlanState *outerNode;
 List *hashkeys;
 HashJoinTable hashtable;
 TupleTableSlot *slot;
 ExprContext *econtext;
 uint32 hashvalue;
 Barrier *build_barrier;
 int i;




 outerNode = outerPlanState(node);
 hashtable = node->hashtable;




 hashkeys = node->hashkeys;
 econtext = node->ps.ps_ExprContext;
 pstate = hashtable->parallel_state;
 build_barrier = &pstate->build_barrier;
 Assert(BarrierPhase(build_barrier) >= 129);
 switch (BarrierPhase(build_barrier))
 {
  case 129:






   BarrierArriveAndWait(build_barrier, WAIT_EVENT_HASH_BUILD_ALLOCATING);


  case 128:
   if (PHJ_GROW_BATCHES_PHASE(BarrierAttach(&pstate->grow_batches_barrier)) !=
    PHJ_GROW_BATCHES_ELECTING)
    ExecParallelHashIncreaseNumBatches(hashtable);
   if (PHJ_GROW_BUCKETS_PHASE(BarrierAttach(&pstate->grow_buckets_barrier)) !=
    PHJ_GROW_BUCKETS_ELECTING)
    ExecParallelHashIncreaseNumBuckets(hashtable);
   ExecParallelHashEnsureBatchAccessors(hashtable);
   ExecParallelHashTableSetCurrentBatch(hashtable, 0);
   for (;;)
   {
    slot = ExecProcNode(outerNode);
    if (TupIsNull(slot))
     break;
    econtext->ecxt_outertuple = slot;
    if (ExecHashGetHashValue(hashtable, econtext, hashkeys,
           0, hashtable->keepNulls,
           &hashvalue))
     ExecParallelHashTableInsert(hashtable, slot, hashvalue);
    hashtable->partialTuples++;
   }





   for (i = 0; i < hashtable->nbatch; ++i)
    sts_end_write(hashtable->batches[i].inner_tuples);





   ExecParallelHashMergeCounters(hashtable);

   BarrierDetach(&pstate->grow_buckets_barrier);
   BarrierDetach(&pstate->grow_batches_barrier);





   if (BarrierArriveAndWait(build_barrier,
          WAIT_EVENT_HASH_BUILD_HASHING_INNER))
   {







    pstate->growth = PHJ_GROWTH_DISABLED;
   }
 }





 hashtable->curbatch = -1;
 hashtable->nbuckets = pstate->nbuckets;
 hashtable->log2_nbuckets = my_log2(hashtable->nbuckets);
 hashtable->totalTuples = pstate->total_tuples;
 ExecParallelHashEnsureBatchAccessors(hashtable);






 Assert(BarrierPhase(build_barrier) == PHJ_BUILD_HASHING_OUTER ||
     BarrierPhase(build_barrier) == PHJ_BUILD_DONE);
}
