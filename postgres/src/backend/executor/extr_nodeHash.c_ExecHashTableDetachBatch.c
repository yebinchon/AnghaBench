
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
typedef int dsa_pointer ;
struct TYPE_12__ {int curbatch; int nbuckets; int spacePeak; int area; TYPE_1__* batches; int * parallel_state; } ;
struct TYPE_9__ {int shared; } ;
struct TYPE_11__ {TYPE_2__ next; } ;
struct TYPE_10__ {scalar_t__ size; int buckets; int chunks; int batch_barrier; } ;
struct TYPE_8__ {int outer_tuples; int inner_tuples; TYPE_3__* shared; } ;
typedef TYPE_3__ ParallelHashJoinBatch ;
typedef TYPE_4__* HashMemoryChunk ;
typedef TYPE_5__* HashJoinTable ;


 int Assert (int) ;
 scalar_t__ BarrierArriveAndDetach (int *) ;
 scalar_t__ BarrierPhase (int *) ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int InvalidDsaPointer ;
 int Max (int ,scalar_t__) ;
 scalar_t__ PHJ_BATCH_DONE ;
 int dsa_free (int ,int ) ;
 TYPE_4__* dsa_get_address (int ,int ) ;
 int sts_end_parallel_scan (int ) ;

void
ExecHashTableDetachBatch(HashJoinTable hashtable)
{
 if (hashtable->parallel_state != ((void*)0) &&
  hashtable->curbatch >= 0)
 {
  int curbatch = hashtable->curbatch;
  ParallelHashJoinBatch *batch = hashtable->batches[curbatch].shared;


  sts_end_parallel_scan(hashtable->batches[curbatch].inner_tuples);
  sts_end_parallel_scan(hashtable->batches[curbatch].outer_tuples);


  if (BarrierArriveAndDetach(&batch->batch_barrier))
  {





   Assert(BarrierPhase(&batch->batch_barrier) == PHJ_BATCH_DONE);


   while (DsaPointerIsValid(batch->chunks))
   {
    HashMemoryChunk chunk =
    dsa_get_address(hashtable->area, batch->chunks);
    dsa_pointer next = chunk->next.shared;

    dsa_free(hashtable->area, batch->chunks);
    batch->chunks = next;
   }
   if (DsaPointerIsValid(batch->buckets))
   {
    dsa_free(hashtable->area, batch->buckets);
    batch->buckets = InvalidDsaPointer;
   }
  }






  hashtable->spacePeak =
   Max(hashtable->spacePeak,
    batch->size + sizeof(dsa_pointer_atomic) * hashtable->nbuckets);


  hashtable->curbatch = -1;
 }
}
