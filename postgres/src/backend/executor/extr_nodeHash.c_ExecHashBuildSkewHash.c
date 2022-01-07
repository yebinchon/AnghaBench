
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {int nvalues; int * values; scalar_t__* numbers; } ;
struct TYPE_11__ {int skewInherit; int skewColumn; int skewTable; } ;
struct TYPE_10__ {int skewEnabled; int skewBucketLen; int* skewBucketNums; scalar_t__ spaceUsed; int spaceUsedSkew; scalar_t__ spacePeak; size_t nSkewBuckets; TYPE_1__** skewBucket; int batchCxt; int * collations; int * outer_hashfunctions; } ;
struct TYPE_9__ {int hashvalue; int * tuples; } ;
typedef int HeapTupleData ;
typedef TYPE_1__ HashSkewBucket ;
typedef TYPE_2__* HashJoinTable ;
typedef TYPE_3__ Hash ;
typedef int FmgrInfo ;
typedef TYPE_4__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 int BoolGetDatum (int ) ;
 int DatumGetUInt32 (int ) ;
 int FunctionCall1Coll (int *,int ,int ) ;
 int HeapTupleIsValid (int *) ;
 int Int16GetDatum (int ) ;
 int InvalidOid ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int *) ;
 scalar_t__ SKEW_BUCKET_OVERHEAD ;
 double SKEW_MIN_OUTER_FRACTION ;
 int STATISTIC_KIND_MCV ;
 int STATRELATTINH ;
 int * SearchSysCache3 (int ,int ,int ,int ) ;
 int free_attstatsslot (TYPE_4__*) ;
 scalar_t__ get_attstatsslot (TYPE_4__*,int *,int ,int ,int) ;

__attribute__((used)) static void
ExecHashBuildSkewHash(HashJoinTable hashtable, Hash *node, int mcvsToUse)
{
 HeapTupleData *statsTuple;
 AttStatsSlot sslot;


 if (!OidIsValid(node->skewTable))
  return;

 if (mcvsToUse <= 0)
  return;




 statsTuple = SearchSysCache3(STATRELATTINH,
         ObjectIdGetDatum(node->skewTable),
         Int16GetDatum(node->skewColumn),
         BoolGetDatum(node->skewInherit));
 if (!HeapTupleIsValid(statsTuple))
  return;

 if (get_attstatsslot(&sslot, statsTuple,
       STATISTIC_KIND_MCV, InvalidOid,
       ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
 {
  double frac;
  int nbuckets;
  FmgrInfo *hashfunctions;
  int i;

  if (mcvsToUse > sslot.nvalues)
   mcvsToUse = sslot.nvalues;






  frac = 0;
  for (i = 0; i < mcvsToUse; i++)
   frac += sslot.numbers[i];
  if (frac < SKEW_MIN_OUTER_FRACTION)
  {
   free_attstatsslot(&sslot);
   ReleaseSysCache(statsTuple);
   return;
  }
  nbuckets = 2;
  while (nbuckets <= mcvsToUse)
   nbuckets <<= 1;

  nbuckets <<= 2;

  hashtable->skewEnabled = 1;
  hashtable->skewBucketLen = nbuckets;






  hashtable->skewBucket = (HashSkewBucket **)
   MemoryContextAllocZero(hashtable->batchCxt,
           nbuckets * sizeof(HashSkewBucket *));
  hashtable->skewBucketNums = (int *)
   MemoryContextAllocZero(hashtable->batchCxt,
           mcvsToUse * sizeof(int));

  hashtable->spaceUsed += nbuckets * sizeof(HashSkewBucket *)
   + mcvsToUse * sizeof(int);
  hashtable->spaceUsedSkew += nbuckets * sizeof(HashSkewBucket *)
   + mcvsToUse * sizeof(int);
  if (hashtable->spaceUsed > hashtable->spacePeak)
   hashtable->spacePeak = hashtable->spaceUsed;
  hashfunctions = hashtable->outer_hashfunctions;

  for (i = 0; i < mcvsToUse; i++)
  {
   uint32 hashvalue;
   int bucket;

   hashvalue = DatumGetUInt32(FunctionCall1Coll(&hashfunctions[0],
               hashtable->collations[0],
               sslot.values[i]));







   bucket = hashvalue & (nbuckets - 1);
   while (hashtable->skewBucket[bucket] != ((void*)0) &&
       hashtable->skewBucket[bucket]->hashvalue != hashvalue)
    bucket = (bucket + 1) & (nbuckets - 1);





   if (hashtable->skewBucket[bucket] != ((void*)0))
    continue;


   hashtable->skewBucket[bucket] = (HashSkewBucket *)
    MemoryContextAlloc(hashtable->batchCxt,
           sizeof(HashSkewBucket));
   hashtable->skewBucket[bucket]->hashvalue = hashvalue;
   hashtable->skewBucket[bucket]->tuples = ((void*)0);
   hashtable->skewBucketNums[hashtable->nSkewBuckets] = bucket;
   hashtable->nSkewBuckets++;
   hashtable->spaceUsed += SKEW_BUCKET_OVERHEAD;
   hashtable->spaceUsedSkew += SKEW_BUCKET_OVERHEAD;
   if (hashtable->spaceUsed > hashtable->spacePeak)
    hashtable->spacePeak = hashtable->spaceUsed;
  }

  free_attstatsslot(&sslot);
 }

 ReleaseSysCache(statsTuple);
}
