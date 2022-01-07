
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32 ;
typedef int TupleTableSlot ;
struct TYPE_17__ {scalar_t__ spaceUsed; int spaceUsedSkew; scalar_t__ spacePeak; scalar_t__ spaceAllowedSkew; scalar_t__ spaceAllowed; TYPE_1__** skewBucket; int batchCxt; } ;
struct TYPE_14__ {TYPE_4__* unshared; } ;
struct TYPE_16__ {TYPE_2__ next; int hashvalue; } ;
struct TYPE_15__ {int t_len; } ;
struct TYPE_13__ {TYPE_4__* tuples; } ;
typedef TYPE_3__* MinimalTuple ;
typedef TYPE_4__* HashJoinTuple ;
typedef TYPE_5__* HashJoinTable ;


 int Assert (int) ;
 TYPE_3__* ExecFetchSlotMinimalTuple (int *,int*) ;
 int ExecHashIncreaseNumBatches (TYPE_5__*) ;
 int ExecHashRemoveNextSkewBucket (TYPE_5__*) ;
 int HJTUPLE_MINTUPLE (TYPE_4__*) ;
 int HJTUPLE_OVERHEAD ;
 int HeapTupleHeaderClearMatch (int ) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int heap_free_minimal_tuple (TYPE_3__*) ;
 int memcpy (int ,TYPE_3__*,int) ;

__attribute__((used)) static void
ExecHashSkewTableInsert(HashJoinTable hashtable,
      TupleTableSlot *slot,
      uint32 hashvalue,
      int bucketNumber)
{
 bool shouldFree;
 MinimalTuple tuple = ExecFetchSlotMinimalTuple(slot, &shouldFree);
 HashJoinTuple hashTuple;
 int hashTupleSize;


 hashTupleSize = HJTUPLE_OVERHEAD + tuple->t_len;
 hashTuple = (HashJoinTuple) MemoryContextAlloc(hashtable->batchCxt,
               hashTupleSize);
 hashTuple->hashvalue = hashvalue;
 memcpy(HJTUPLE_MINTUPLE(hashTuple), tuple, tuple->t_len);
 HeapTupleHeaderClearMatch(HJTUPLE_MINTUPLE(hashTuple));


 hashTuple->next.unshared = hashtable->skewBucket[bucketNumber]->tuples;
 hashtable->skewBucket[bucketNumber]->tuples = hashTuple;
 Assert(hashTuple != hashTuple->next.unshared);


 hashtable->spaceUsed += hashTupleSize;
 hashtable->spaceUsedSkew += hashTupleSize;
 if (hashtable->spaceUsed > hashtable->spacePeak)
  hashtable->spacePeak = hashtable->spaceUsed;
 while (hashtable->spaceUsedSkew > hashtable->spaceAllowedSkew)
  ExecHashRemoveNextSkewBucket(hashtable);


 if (hashtable->spaceUsed > hashtable->spaceAllowed)
  ExecHashIncreaseNumBatches(hashtable);

 if (shouldFree)
  heap_free_minimal_tuple(tuple);
}
