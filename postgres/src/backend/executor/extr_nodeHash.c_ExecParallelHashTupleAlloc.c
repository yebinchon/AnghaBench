
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int dsa_pointer_atomic ;
typedef scalar_t__ dsa_pointer ;
struct TYPE_20__ {int curbatch; scalar_t__ current_chunk_shared; int nbatch; int nbuckets; int area; TYPE_5__* current_chunk; TYPE_3__* batches; TYPE_4__* parallel_state; } ;
struct TYPE_15__ {scalar_t__ shared; } ;
struct TYPE_19__ {size_t maxlen; size_t used; TYPE_1__ next; } ;
struct TYPE_18__ {scalar_t__ growth; scalar_t__ space_allowed; int lock; int build_barrier; } ;
struct TYPE_17__ {int at_least_one_chunk; TYPE_2__* shared; scalar_t__ ntuples; } ;
struct TYPE_16__ {scalar_t__ size; int space_exhausted; int ntuples; scalar_t__ chunks; } ;
typedef scalar_t__ Size ;
typedef TYPE_4__ ParallelHashJoinState ;
typedef scalar_t__ ParallelHashGrowth ;
typedef TYPE_5__* HashMemoryChunk ;
typedef TYPE_5__* HashJoinTuple ;
typedef TYPE_7__* HashJoinTable ;


 int Assert (int) ;
 scalar_t__ BarrierPhase (int *) ;
 int ExecParallelHashIncreaseNumBatches (TYPE_7__*) ;
 int ExecParallelHashIncreaseNumBuckets (TYPE_7__*) ;
 TYPE_5__* HASH_CHUNK_DATA (TYPE_5__*) ;
 scalar_t__ HASH_CHUNK_HEADER_SIZE ;
 scalar_t__ HASH_CHUNK_SIZE ;
 size_t HASH_CHUNK_THRESHOLD ;
 int INT_MAX ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 size_t MAXALIGN (size_t) ;
 int MaxAllocSize ;
 int NTUP_PER_BUCKET ;
 scalar_t__ PHJ_BUILD_HASHING_INNER ;
 scalar_t__ PHJ_GROWTH_DISABLED ;
 scalar_t__ PHJ_GROWTH_NEED_MORE_BATCHES ;
 scalar_t__ PHJ_GROWTH_NEED_MORE_BUCKETS ;
 scalar_t__ dsa_allocate (int ,scalar_t__) ;
 TYPE_5__* dsa_get_address (int ,scalar_t__) ;

__attribute__((used)) static HashJoinTuple
ExecParallelHashTupleAlloc(HashJoinTable hashtable, size_t size,
         dsa_pointer *shared)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 dsa_pointer chunk_shared;
 HashMemoryChunk chunk;
 Size chunk_size;
 HashJoinTuple result;
 int curbatch = hashtable->curbatch;

 size = MAXALIGN(size);





 chunk = hashtable->current_chunk;
 if (chunk != ((void*)0) &&
  size <= HASH_CHUNK_THRESHOLD &&
  chunk->maxlen - chunk->used >= size)
 {

  chunk_shared = hashtable->current_chunk_shared;
  Assert(chunk == dsa_get_address(hashtable->area, chunk_shared));
  *shared = chunk_shared + HASH_CHUNK_HEADER_SIZE + chunk->used;
  result = (HashJoinTuple) (HASH_CHUNK_DATA(chunk) + chunk->used);
  chunk->used += size;

  Assert(chunk->used <= chunk->maxlen);
  Assert(result == dsa_get_address(hashtable->area, *shared));

  return result;
 }


 LWLockAcquire(&pstate->lock, LW_EXCLUSIVE);




 if (pstate->growth == PHJ_GROWTH_NEED_MORE_BATCHES ||
  pstate->growth == PHJ_GROWTH_NEED_MORE_BUCKETS)
 {
  ParallelHashGrowth growth = pstate->growth;

  hashtable->current_chunk = ((void*)0);
  LWLockRelease(&pstate->lock);


  if (growth == PHJ_GROWTH_NEED_MORE_BATCHES)
   ExecParallelHashIncreaseNumBatches(hashtable);
  else if (growth == PHJ_GROWTH_NEED_MORE_BUCKETS)
   ExecParallelHashIncreaseNumBuckets(hashtable);


  return ((void*)0);
 }


 if (size > HASH_CHUNK_THRESHOLD)
  chunk_size = size + HASH_CHUNK_HEADER_SIZE;
 else
  chunk_size = HASH_CHUNK_SIZE;


 if (pstate->growth != PHJ_GROWTH_DISABLED)
 {
  Assert(curbatch == 0);
  Assert(BarrierPhase(&pstate->build_barrier) == PHJ_BUILD_HASHING_INNER);






  if (hashtable->batches[0].at_least_one_chunk &&
   hashtable->batches[0].shared->size +
   chunk_size > pstate->space_allowed)
  {
   pstate->growth = PHJ_GROWTH_NEED_MORE_BATCHES;
   hashtable->batches[0].shared->space_exhausted = 1;
   LWLockRelease(&pstate->lock);

   return ((void*)0);
  }


  if (hashtable->nbatch == 1)
  {
   hashtable->batches[0].shared->ntuples += hashtable->batches[0].ntuples;
   hashtable->batches[0].ntuples = 0;

   if (hashtable->batches[0].shared->ntuples + 1 >
    hashtable->nbuckets * NTUP_PER_BUCKET &&
    hashtable->nbuckets < (INT_MAX / 2) &&
    hashtable->nbuckets * 2 <=
    MaxAllocSize / sizeof(dsa_pointer_atomic))
   {
    pstate->growth = PHJ_GROWTH_NEED_MORE_BUCKETS;
    LWLockRelease(&pstate->lock);

    return ((void*)0);
   }
  }
 }


 chunk_shared = dsa_allocate(hashtable->area, chunk_size);
 hashtable->batches[curbatch].shared->size += chunk_size;
 hashtable->batches[curbatch].at_least_one_chunk = 1;


 chunk = (HashMemoryChunk) dsa_get_address(hashtable->area, chunk_shared);
 *shared = chunk_shared + HASH_CHUNK_HEADER_SIZE;
 chunk->maxlen = chunk_size - HASH_CHUNK_HEADER_SIZE;
 chunk->used = size;






 chunk->next.shared = hashtable->batches[curbatch].shared->chunks;
 hashtable->batches[curbatch].shared->chunks = chunk_shared;

 if (size <= HASH_CHUNK_THRESHOLD)
 {




  hashtable->current_chunk = chunk;
  hashtable->current_chunk_shared = chunk_shared;
 }
 LWLockRelease(&pstate->lock);

 Assert(HASH_CHUNK_DATA(chunk) == dsa_get_address(hashtable->area, *shared));
 result = (HashJoinTuple) HASH_CHUNK_DATA(chunk);

 return result;
}
