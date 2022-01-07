
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
struct TYPE_7__ {int * shared; } ;
struct TYPE_11__ {int curbatch; TYPE_4__* batches; scalar_t__ current_chunk_shared; int * current_chunk; int nbuckets; int log2_nbuckets; TYPE_3__* parallel_state; int area; TYPE_1__ buckets; } ;
struct TYPE_10__ {int at_least_one_chunk; TYPE_2__* shared; } ;
struct TYPE_9__ {int nbuckets; } ;
struct TYPE_8__ {scalar_t__ buckets; } ;
typedef TYPE_5__* HashJoinTable ;


 int Assert (int) ;
 scalar_t__ InvalidDsaPointer ;
 scalar_t__ dsa_get_address (int ,scalar_t__) ;
 int my_log2 (int ) ;

void
ExecParallelHashTableSetCurrentBatch(HashJoinTable hashtable, int batchno)
{
 Assert(hashtable->batches[batchno].shared->buckets != InvalidDsaPointer);

 hashtable->curbatch = batchno;
 hashtable->buckets.shared = (dsa_pointer_atomic *)
  dsa_get_address(hashtable->area,
      hashtable->batches[batchno].shared->buckets);
 hashtable->nbuckets = hashtable->parallel_state->nbuckets;
 hashtable->log2_nbuckets = my_log2(hashtable->nbuckets);
 hashtable->current_chunk = ((void*)0);
 hashtable->current_chunk_shared = InvalidDsaPointer;
 hashtable->batches[batchno].at_least_one_chunk = 0;
}
