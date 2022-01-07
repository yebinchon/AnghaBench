
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nbatch; TYPE_2__* batches; int area; int hashCxt; TYPE_1__* parallel_state; } ;
struct TYPE_7__ {int done; void* outer_tuples; void* inner_tuples; scalar_t__ preallocated; int * shared; } ;
struct TYPE_6__ {scalar_t__ nbatch; int fileset; int nparticipants; int batches; } ;
typedef TYPE_1__ ParallelHashJoinState ;
typedef TYPE_2__ ParallelHashJoinBatchAccessor ;
typedef int ParallelHashJoinBatch ;
typedef int MemoryContext ;
typedef TYPE_3__* HashJoinTable ;


 int DsaPointerIsValid (int ) ;
 int ExecParallelHashCloseBatchAccessors (TYPE_3__*) ;
 int MemoryContextSwitchTo (int ) ;
 int * NthParallelHashJoinBatch (int *,int) ;
 int ParallelHashJoinBatchInner (int *) ;
 int ParallelHashJoinBatchOuter (int *,int ) ;
 scalar_t__ ParallelWorkerNumber ;
 scalar_t__ dsa_get_address (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 void* sts_attach (int ,scalar_t__,int *) ;

__attribute__((used)) static void
ExecParallelHashEnsureBatchAccessors(HashJoinTable hashtable)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 ParallelHashJoinBatch *batches;
 MemoryContext oldcxt;
 int i;

 if (hashtable->batches != ((void*)0))
 {
  if (hashtable->nbatch == pstate->nbatch)
   return;
  ExecParallelHashCloseBatchAccessors(hashtable);
 }
 if (!DsaPointerIsValid(pstate->batches))
  return;


 oldcxt = MemoryContextSwitchTo(hashtable->hashCxt);


 hashtable->nbatch = pstate->nbatch;
 hashtable->batches = (ParallelHashJoinBatchAccessor *)
  palloc0(sizeof(ParallelHashJoinBatchAccessor) * hashtable->nbatch);


 batches = (ParallelHashJoinBatch *)
  dsa_get_address(hashtable->area, pstate->batches);


 for (i = 0; i < hashtable->nbatch; ++i)
 {
  ParallelHashJoinBatchAccessor *accessor = &hashtable->batches[i];
  ParallelHashJoinBatch *shared = NthParallelHashJoinBatch(batches, i);

  accessor->shared = shared;
  accessor->preallocated = 0;
  accessor->done = 0;
  accessor->inner_tuples =
   sts_attach(ParallelHashJoinBatchInner(shared),
        ParallelWorkerNumber + 1,
        &pstate->fileset);
  accessor->outer_tuples =
   sts_attach(ParallelHashJoinBatchOuter(shared,
              pstate->nparticipants),
        ParallelWorkerNumber + 1,
        &pstate->fileset);
 }

 MemoryContextSwitchTo(oldcxt);
}
