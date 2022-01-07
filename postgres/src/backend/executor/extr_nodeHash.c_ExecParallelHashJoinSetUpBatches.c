
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
typedef int name ;
struct TYPE_15__ {int nbatch; TYPE_2__* batches; int hashCxt; int area; TYPE_1__* parallel_state; } ;
struct TYPE_14__ {int batch_barrier; } ;
struct TYPE_13__ {void* outer_tuples; void* inner_tuples; TYPE_3__* shared; } ;
struct TYPE_12__ {int nbatch; int fileset; int nparticipants; int batches; } ;
typedef TYPE_1__ ParallelHashJoinState ;
typedef TYPE_2__ ParallelHashJoinBatchAccessor ;
typedef TYPE_3__ ParallelHashJoinBatch ;
typedef int MemoryContext ;
typedef TYPE_4__* HashJoinTable ;


 int Assert (int ) ;
 int BarrierArriveAndWait (int *,int ) ;
 int BarrierAttach (int *) ;
 int BarrierDetach (int *) ;
 int BarrierInit (int *,int ) ;
 scalar_t__ BarrierPhase (int *) ;
 int EstimateParallelHashJoinBatch (TYPE_4__*) ;
 int MAXPGPATH ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_3__* NthParallelHashJoinBatch (TYPE_3__*,int) ;
 scalar_t__ PHJ_BATCH_PROBING ;
 int ParallelHashJoinBatchInner (TYPE_3__*) ;
 int ParallelHashJoinBatchOuter (TYPE_3__*,int ) ;
 scalar_t__ ParallelWorkerNumber ;
 int SHARED_TUPLESTORE_SINGLE_PASS ;
 int dsa_allocate0 (int ,int) ;
 TYPE_3__* dsa_get_address (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 int snprintf (char*,int,char*,int,int) ;
 void* sts_initialize (int ,int ,scalar_t__,int,int ,int *,char*) ;

__attribute__((used)) static void
ExecParallelHashJoinSetUpBatches(HashJoinTable hashtable, int nbatch)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 ParallelHashJoinBatch *batches;
 MemoryContext oldcxt;
 int i;

 Assert(hashtable->batches == ((void*)0));


 pstate->batches =
  dsa_allocate0(hashtable->area,
       EstimateParallelHashJoinBatch(hashtable) * nbatch);
 pstate->nbatch = nbatch;
 batches = dsa_get_address(hashtable->area, pstate->batches);


 oldcxt = MemoryContextSwitchTo(hashtable->hashCxt);


 hashtable->nbatch = nbatch;
 hashtable->batches = (ParallelHashJoinBatchAccessor *)
  palloc0(sizeof(ParallelHashJoinBatchAccessor) * hashtable->nbatch);


 for (i = 0; i < hashtable->nbatch; ++i)
 {
  ParallelHashJoinBatchAccessor *accessor = &hashtable->batches[i];
  ParallelHashJoinBatch *shared = NthParallelHashJoinBatch(batches, i);
  char name[MAXPGPATH];





  BarrierInit(&shared->batch_barrier, 0);
  if (i == 0)
  {

   BarrierAttach(&shared->batch_barrier);
   while (BarrierPhase(&shared->batch_barrier) < PHJ_BATCH_PROBING)
    BarrierArriveAndWait(&shared->batch_barrier, 0);
   BarrierDetach(&shared->batch_barrier);
  }


  accessor->shared = shared;


  snprintf(name, sizeof(name), "i%dof%d", i, hashtable->nbatch);
  accessor->inner_tuples =
   sts_initialize(ParallelHashJoinBatchInner(shared),
         pstate->nparticipants,
         ParallelWorkerNumber + 1,
         sizeof(uint32),
         SHARED_TUPLESTORE_SINGLE_PASS,
         &pstate->fileset,
         name);
  snprintf(name, sizeof(name), "o%dof%d", i, hashtable->nbatch);
  accessor->outer_tuples =
   sts_initialize(ParallelHashJoinBatchOuter(shared,
               pstate->nparticipants),
         pstate->nparticipants,
         ParallelWorkerNumber + 1,
         sizeof(uint32),
         SHARED_TUPLESTORE_SINGLE_PASS,
         &pstate->fileset,
         name);
 }

 MemoryContextSwitchTo(oldcxt);
}
