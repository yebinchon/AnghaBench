
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {TYPE_6__** unshared; } ;
struct TYPE_31__ {int nbatch; int curbatch; int growEnabled; int spaceUsed; int nbuckets_optimal; int nbuckets; TYPE_6__** innerBatchFile; TYPE_3__ buckets; TYPE_5__* chunks; int log2_nbuckets_optimal; int log2_nbuckets; TYPE_6__** outerBatchFile; int hashCxt; } ;
struct TYPE_26__ {TYPE_6__* unshared; } ;
struct TYPE_30__ {int hashvalue; TYPE_2__ next; } ;
struct TYPE_25__ {TYPE_5__* unshared; } ;
struct TYPE_29__ {size_t used; TYPE_1__ next; } ;
struct TYPE_28__ {int t_len; } ;
typedef TYPE_4__* MinimalTuple ;
typedef int MemoryContext ;
typedef TYPE_5__* HashMemoryChunk ;
typedef TYPE_6__* HashJoinTuple ;
typedef TYPE_7__* HashJoinTable ;
typedef TYPE_6__ BufFile ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecHashGetBucketAndBatch (TYPE_7__*,int ,int*,int*) ;
 int ExecHashJoinSaveTuple (TYPE_4__*,int ,TYPE_6__**) ;
 scalar_t__ HASH_CHUNK_DATA (TYPE_5__*) ;
 TYPE_4__* HJTUPLE_MINTUPLE (TYPE_6__*) ;
 int HJTUPLE_OVERHEAD ;
 int INT_MAX ;
 scalar_t__ MAXALIGN (int) ;
 int MaxAllocSize ;
 int MemSet (TYPE_6__**,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int Min (int,int) ;
 int PrepareTempTablespaces () ;
 int dense_alloc (TYPE_7__*,int) ;
 int memcpy (TYPE_6__*,TYPE_6__*,int) ;
 int memset (TYPE_6__**,int ,int) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_5__*) ;
 int printf (char*,TYPE_7__*,...) ;
 TYPE_6__** repalloc (TYPE_6__**,int) ;

__attribute__((used)) static void
ExecHashIncreaseNumBatches(HashJoinTable hashtable)
{
 int oldnbatch = hashtable->nbatch;
 int curbatch = hashtable->curbatch;
 int nbatch;
 MemoryContext oldcxt;
 long ninmemory;
 long nfreed;
 HashMemoryChunk oldchunks;


 if (!hashtable->growEnabled)
  return;


 if (oldnbatch > Min(INT_MAX / 2, MaxAllocSize / (sizeof(void *) * 2)))
  return;

 nbatch = oldnbatch * 2;
 Assert(nbatch > 1);






 oldcxt = MemoryContextSwitchTo(hashtable->hashCxt);

 if (hashtable->innerBatchFile == ((void*)0))
 {

  hashtable->innerBatchFile = (BufFile **)
   palloc0(nbatch * sizeof(BufFile *));
  hashtable->outerBatchFile = (BufFile **)
   palloc0(nbatch * sizeof(BufFile *));

  PrepareTempTablespaces();
 }
 else
 {

  hashtable->innerBatchFile = (BufFile **)
   repalloc(hashtable->innerBatchFile, nbatch * sizeof(BufFile *));
  hashtable->outerBatchFile = (BufFile **)
   repalloc(hashtable->outerBatchFile, nbatch * sizeof(BufFile *));
  MemSet(hashtable->innerBatchFile + oldnbatch, 0,
      (nbatch - oldnbatch) * sizeof(BufFile *));
  MemSet(hashtable->outerBatchFile + oldnbatch, 0,
      (nbatch - oldnbatch) * sizeof(BufFile *));
 }

 MemoryContextSwitchTo(oldcxt);

 hashtable->nbatch = nbatch;





 ninmemory = nfreed = 0;


 if (hashtable->nbuckets_optimal != hashtable->nbuckets)
 {

  Assert(hashtable->nbuckets_optimal > hashtable->nbuckets);

  hashtable->nbuckets = hashtable->nbuckets_optimal;
  hashtable->log2_nbuckets = hashtable->log2_nbuckets_optimal;

  hashtable->buckets.unshared =
   repalloc(hashtable->buckets.unshared,
      sizeof(HashJoinTuple) * hashtable->nbuckets);
 }






 memset(hashtable->buckets.unshared, 0,
     sizeof(HashJoinTuple) * hashtable->nbuckets);
 oldchunks = hashtable->chunks;
 hashtable->chunks = ((void*)0);


 while (oldchunks != ((void*)0))
 {
  HashMemoryChunk nextchunk = oldchunks->next.unshared;


  size_t idx = 0;


  while (idx < oldchunks->used)
  {
   HashJoinTuple hashTuple = (HashJoinTuple) (HASH_CHUNK_DATA(oldchunks) + idx);
   MinimalTuple tuple = HJTUPLE_MINTUPLE(hashTuple);
   int hashTupleSize = (HJTUPLE_OVERHEAD + tuple->t_len);
   int bucketno;
   int batchno;

   ninmemory++;
   ExecHashGetBucketAndBatch(hashtable, hashTuple->hashvalue,
           &bucketno, &batchno);

   if (batchno == curbatch)
   {

    HashJoinTuple copyTuple;

    copyTuple = (HashJoinTuple) dense_alloc(hashtable, hashTupleSize);
    memcpy(copyTuple, hashTuple, hashTupleSize);


    copyTuple->next.unshared = hashtable->buckets.unshared[bucketno];
    hashtable->buckets.unshared[bucketno] = copyTuple;
   }
   else
   {

    Assert(batchno > curbatch);
    ExecHashJoinSaveTuple(HJTUPLE_MINTUPLE(hashTuple),
           hashTuple->hashvalue,
           &hashtable->innerBatchFile[batchno]);

    hashtable->spaceUsed -= hashTupleSize;
    nfreed++;
   }


   idx += MAXALIGN(hashTupleSize);


   CHECK_FOR_INTERRUPTS();
  }


  pfree(oldchunks);
  oldchunks = nextchunk;
 }
 if (nfreed == 0 || nfreed == ninmemory)
 {
  hashtable->growEnabled = 0;




 }
}
