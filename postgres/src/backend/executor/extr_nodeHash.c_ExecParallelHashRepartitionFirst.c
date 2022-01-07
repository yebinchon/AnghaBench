
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int dsa_pointer ;
struct TYPE_22__ {int * shared; } ;
struct TYPE_27__ {scalar_t__ nbatch; int area; TYPE_3__* batches; TYPE_2__ buckets; TYPE_1__* parallel_state; } ;
struct TYPE_26__ {int hashvalue; } ;
struct TYPE_25__ {size_t used; } ;
struct TYPE_24__ {scalar_t__ t_len; } ;
struct TYPE_23__ {size_t estimated_size; int ntuples; int old_ntuples; int inner_tuples; } ;
struct TYPE_21__ {scalar_t__ nbatch; } ;
typedef TYPE_4__* MinimalTuple ;
typedef TYPE_5__* HashMemoryChunk ;
typedef TYPE_6__* HashJoinTuple ;
typedef TYPE_7__* HashJoinTable ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecHashGetBucketAndBatch (TYPE_7__*,int ,int*,int*) ;
 TYPE_5__* ExecParallelHashPopChunkQueue (TYPE_7__*,int *) ;
 int ExecParallelHashPushTuple (int *,TYPE_6__*,int ) ;
 TYPE_6__* ExecParallelHashTupleAlloc (TYPE_7__*,scalar_t__,int *) ;
 scalar_t__ HASH_CHUNK_DATA (TYPE_5__*) ;
 TYPE_4__* HJTUPLE_MINTUPLE (TYPE_6__*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 size_t MAXALIGN (scalar_t__) ;
 int dsa_free (int ,int ) ;
 int memcpy (TYPE_4__*,TYPE_4__*,scalar_t__) ;
 int sts_puttuple (int ,int *,TYPE_4__*) ;

__attribute__((used)) static void
ExecParallelHashRepartitionFirst(HashJoinTable hashtable)
{
 dsa_pointer chunk_shared;
 HashMemoryChunk chunk;

 Assert(hashtable->nbatch == hashtable->parallel_state->nbatch);

 while ((chunk = ExecParallelHashPopChunkQueue(hashtable, &chunk_shared)))
 {
  size_t idx = 0;


  while (idx < chunk->used)
  {
   HashJoinTuple hashTuple = (HashJoinTuple) (HASH_CHUNK_DATA(chunk) + idx);
   MinimalTuple tuple = HJTUPLE_MINTUPLE(hashTuple);
   HashJoinTuple copyTuple;
   dsa_pointer shared;
   int bucketno;
   int batchno;

   ExecHashGetBucketAndBatch(hashtable, hashTuple->hashvalue,
           &bucketno, &batchno);

   Assert(batchno < hashtable->nbatch);
   if (batchno == 0)
   {

    copyTuple =
     ExecParallelHashTupleAlloc(hashtable,
              HJTUPLE_OVERHEAD + tuple->t_len,
              &shared);
    copyTuple->hashvalue = hashTuple->hashvalue;
    memcpy(HJTUPLE_MINTUPLE(copyTuple), tuple, tuple->t_len);
    ExecParallelHashPushTuple(&hashtable->buckets.shared[bucketno],
            copyTuple, shared);
   }
   else
   {
    size_t tuple_size =
    MAXALIGN(HJTUPLE_OVERHEAD + tuple->t_len);


    hashtable->batches[batchno].estimated_size += tuple_size;
    sts_puttuple(hashtable->batches[batchno].inner_tuples,
        &hashTuple->hashvalue, tuple);
   }


   ++hashtable->batches[0].old_ntuples;
   ++hashtable->batches[batchno].ntuples;

   idx += MAXALIGN(HJTUPLE_OVERHEAD +
       HJTUPLE_MINTUPLE(hashTuple)->t_len);
  }


  dsa_free(hashtable->area, chunk_shared);

  CHECK_FOR_INTERRUPTS();
 }
}
