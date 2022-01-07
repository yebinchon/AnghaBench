
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_18__ {TYPE_5__** unshared; } ;
struct TYPE_21__ {int nbuckets; int nbuckets_optimal; int log2_nbuckets; int log2_nbuckets_optimal; TYPE_3__ buckets; TYPE_4__* chunks; } ;
struct TYPE_17__ {TYPE_5__* unshared; } ;
struct TYPE_20__ {TYPE_2__ next; int hashvalue; } ;
struct TYPE_16__ {TYPE_4__* unshared; } ;
struct TYPE_19__ {size_t used; TYPE_1__ next; } ;
struct TYPE_15__ {scalar_t__ t_len; } ;
typedef TYPE_4__* HashMemoryChunk ;
typedef TYPE_5__* HashJoinTuple ;
typedef TYPE_6__* HashJoinTable ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecHashGetBucketAndBatch (TYPE_6__*,int ,int*,int*) ;
 scalar_t__ HASH_CHUNK_DATA (TYPE_4__*) ;
 TYPE_10__* HJTUPLE_MINTUPLE (TYPE_5__*) ;
 scalar_t__ HJTUPLE_OVERHEAD ;
 int INT_MAX ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int memset (TYPE_5__**,int ,int) ;
 int printf (char*,TYPE_6__*,int,int) ;
 scalar_t__ repalloc (TYPE_5__**,int) ;

__attribute__((used)) static void
ExecHashIncreaseNumBuckets(HashJoinTable hashtable)
{
 HashMemoryChunk chunk;


 if (hashtable->nbuckets >= hashtable->nbuckets_optimal)
  return;






 hashtable->nbuckets = hashtable->nbuckets_optimal;
 hashtable->log2_nbuckets = hashtable->log2_nbuckets_optimal;

 Assert(hashtable->nbuckets > 1);
 Assert(hashtable->nbuckets <= (INT_MAX / 2));
 Assert(hashtable->nbuckets == (1 << hashtable->log2_nbuckets));







 hashtable->buckets.unshared =
  (HashJoinTuple *) repalloc(hashtable->buckets.unshared,
           hashtable->nbuckets * sizeof(HashJoinTuple));

 memset(hashtable->buckets.unshared, 0,
     hashtable->nbuckets * sizeof(HashJoinTuple));


 for (chunk = hashtable->chunks; chunk != ((void*)0); chunk = chunk->next.unshared)
 {

  size_t idx = 0;

  while (idx < chunk->used)
  {
   HashJoinTuple hashTuple = (HashJoinTuple) (HASH_CHUNK_DATA(chunk) + idx);
   int bucketno;
   int batchno;

   ExecHashGetBucketAndBatch(hashtable, hashTuple->hashvalue,
           &bucketno, &batchno);


   hashTuple->next.unshared = hashtable->buckets.unshared[bucketno];
   hashtable->buckets.unshared[bucketno] = hashTuple;


   idx += MAXALIGN(HJTUPLE_OVERHEAD +
       HJTUPLE_MINTUPLE(hashTuple)->t_len);
  }


  CHECK_FOR_INTERRUPTS();
 }
}
