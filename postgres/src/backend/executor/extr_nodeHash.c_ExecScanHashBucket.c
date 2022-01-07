
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int TupleTableSlot ;
struct TYPE_18__ {int * ecxt_innertuple; } ;
struct TYPE_17__ {scalar_t__ hj_CurHashValue; size_t hj_CurSkewBucketNo; size_t hj_CurBucketNo; TYPE_4__* hj_CurTuple; int hj_HashTupleSlot; TYPE_5__* hj_HashTable; int * hashclauses; } ;
struct TYPE_13__ {TYPE_4__** unshared; } ;
struct TYPE_16__ {TYPE_2__ buckets; TYPE_1__** skewBucket; } ;
struct TYPE_14__ {TYPE_4__* unshared; } ;
struct TYPE_15__ {scalar_t__ hashvalue; TYPE_3__ next; } ;
struct TYPE_12__ {TYPE_4__* tuples; } ;
typedef TYPE_4__* HashJoinTuple ;
typedef TYPE_5__* HashJoinTable ;
typedef TYPE_6__ HashJoinState ;
typedef int ExprState ;
typedef TYPE_7__ ExprContext ;


 scalar_t__ ExecQualAndReset (int *,TYPE_7__*) ;
 int * ExecStoreMinimalTuple (int ,int ,int) ;
 int HJTUPLE_MINTUPLE (TYPE_4__*) ;
 size_t INVALID_SKEW_BUCKET_NO ;

bool
ExecScanHashBucket(HashJoinState *hjstate,
       ExprContext *econtext)
{
 ExprState *hjclauses = hjstate->hashclauses;
 HashJoinTable hashtable = hjstate->hj_HashTable;
 HashJoinTuple hashTuple = hjstate->hj_CurTuple;
 uint32 hashvalue = hjstate->hj_CurHashValue;
 if (hashTuple != ((void*)0))
  hashTuple = hashTuple->next.unshared;
 else if (hjstate->hj_CurSkewBucketNo != INVALID_SKEW_BUCKET_NO)
  hashTuple = hashtable->skewBucket[hjstate->hj_CurSkewBucketNo]->tuples;
 else
  hashTuple = hashtable->buckets.unshared[hjstate->hj_CurBucketNo];

 while (hashTuple != ((void*)0))
 {
  if (hashTuple->hashvalue == hashvalue)
  {
   TupleTableSlot *inntuple;


   inntuple = ExecStoreMinimalTuple(HJTUPLE_MINTUPLE(hashTuple),
            hjstate->hj_HashTupleSlot,
            0);
   econtext->ecxt_innertuple = inntuple;

   if (ExecQualAndReset(hjclauses, econtext))
   {
    hjstate->hj_CurTuple = hashTuple;
    return 1;
   }
  }

  hashTuple = hashTuple->next.unshared;
 }




 return 0;
}
