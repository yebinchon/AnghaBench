
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {TYPE_1__* batches; int area; TYPE_2__* parallel_state; } ;
struct TYPE_11__ {scalar_t__ t_len; } ;
struct TYPE_10__ {int old_nbatch; int fileset; int old_batches; } ;
struct TYPE_9__ {size_t estimated_size; int inner_tuples; int old_ntuples; int ntuples; } ;
typedef int SharedTuplestoreAccessor ;
typedef TYPE_2__ ParallelHashJoinState ;
typedef int ParallelHashJoinBatch ;
typedef TYPE_3__* MinimalTuple ;
typedef TYPE_4__* HashJoinTable ;


 int CHECK_FOR_INTERRUPTS () ;
 int ExecHashGetBucketAndBatch (TYPE_4__*,int ,int*,int*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 size_t MAXALIGN (scalar_t__) ;
 int * NthParallelHashJoinBatch (int *,int) ;
 int ParallelHashJoinBatchInner (int *) ;
 scalar_t__ ParallelWorkerNumber ;
 scalar_t__ dsa_get_address (int ,int ) ;
 int ** palloc0 (int) ;
 int pfree (int **) ;
 int * sts_attach (int ,scalar_t__,int *) ;
 int sts_begin_parallel_scan (int *) ;
 int sts_end_parallel_scan (int *) ;
 TYPE_3__* sts_parallel_scan_next (int *,int *) ;
 int sts_puttuple (int ,int *,TYPE_3__*) ;

__attribute__((used)) static void
ExecParallelHashRepartitionRest(HashJoinTable hashtable)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 int old_nbatch = pstate->old_nbatch;
 SharedTuplestoreAccessor **old_inner_tuples;
 ParallelHashJoinBatch *old_batches;
 int i;


 old_batches = (ParallelHashJoinBatch *)
  dsa_get_address(hashtable->area, pstate->old_batches);
 old_inner_tuples = palloc0(sizeof(SharedTuplestoreAccessor *) * old_nbatch);
 for (i = 1; i < old_nbatch; ++i)
 {
  ParallelHashJoinBatch *shared =
  NthParallelHashJoinBatch(old_batches, i);

  old_inner_tuples[i] = sts_attach(ParallelHashJoinBatchInner(shared),
           ParallelWorkerNumber + 1,
           &pstate->fileset);
 }


 for (i = 1; i < old_nbatch; ++i)
 {
  MinimalTuple tuple;
  uint32 hashvalue;


  sts_begin_parallel_scan(old_inner_tuples[i]);
  while ((tuple = sts_parallel_scan_next(old_inner_tuples[i], &hashvalue)))
  {
   size_t tuple_size = MAXALIGN(HJTUPLE_OVERHEAD + tuple->t_len);
   int bucketno;
   int batchno;


   ExecHashGetBucketAndBatch(hashtable, hashvalue, &bucketno,
           &batchno);

   hashtable->batches[batchno].estimated_size += tuple_size;
   ++hashtable->batches[batchno].ntuples;
   ++hashtable->batches[i].old_ntuples;


   sts_puttuple(hashtable->batches[batchno].inner_tuples,
       &hashvalue, tuple);

   CHECK_FOR_INTERRUPTS();
  }
  sts_end_parallel_scan(old_inner_tuples[i]);
 }

 pfree(old_inner_tuples);
}
