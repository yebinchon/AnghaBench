
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


typedef int TupleTableSlot ;
struct TYPE_18__ {int * ecxt_innertuple; } ;
struct TYPE_17__ {size_t hj_CurBucketNo; size_t hj_CurSkewBucketNo; TYPE_4__* hj_CurTuple; int hj_HashTupleSlot; TYPE_5__* hj_HashTable; } ;
struct TYPE_12__ {TYPE_4__** unshared; } ;
struct TYPE_16__ {size_t nbuckets; size_t nSkewBuckets; int* skewBucketNums; TYPE_2__** skewBucket; TYPE_1__ buckets; } ;
struct TYPE_14__ {TYPE_4__* unshared; } ;
struct TYPE_15__ {TYPE_3__ next; } ;
struct TYPE_13__ {TYPE_4__* tuples; } ;
typedef TYPE_4__* HashJoinTuple ;
typedef TYPE_5__* HashJoinTable ;
typedef TYPE_6__ HashJoinState ;
typedef TYPE_7__ ExprContext ;


 int CHECK_FOR_INTERRUPTS () ;
 int * ExecStoreMinimalTuple (int ,int ,int) ;
 int HJTUPLE_MINTUPLE (TYPE_4__*) ;
 int HeapTupleHeaderHasMatch (int ) ;
 int ResetExprContext (TYPE_7__*) ;

bool
ExecScanHashTableForUnmatched(HashJoinState *hjstate, ExprContext *econtext)
{
 HashJoinTable hashtable = hjstate->hj_HashTable;
 HashJoinTuple hashTuple = hjstate->hj_CurTuple;

 for (;;)
 {





  if (hashTuple != ((void*)0))
   hashTuple = hashTuple->next.unshared;
  else if (hjstate->hj_CurBucketNo < hashtable->nbuckets)
  {
   hashTuple = hashtable->buckets.unshared[hjstate->hj_CurBucketNo];
   hjstate->hj_CurBucketNo++;
  }
  else if (hjstate->hj_CurSkewBucketNo < hashtable->nSkewBuckets)
  {
   int j = hashtable->skewBucketNums[hjstate->hj_CurSkewBucketNo];

   hashTuple = hashtable->skewBucket[j]->tuples;
   hjstate->hj_CurSkewBucketNo++;
  }
  else
   break;

  while (hashTuple != ((void*)0))
  {
   if (!HeapTupleHeaderHasMatch(HJTUPLE_MINTUPLE(hashTuple)))
   {
    TupleTableSlot *inntuple;


    inntuple = ExecStoreMinimalTuple(HJTUPLE_MINTUPLE(hashTuple),
             hjstate->hj_HashTupleSlot,
             0);
    econtext->ecxt_innertuple = inntuple;






    ResetExprContext(econtext);

    hjstate->hj_CurTuple = hashTuple;
    return 1;
   }

   hashTuple = hashTuple->next.unshared;
  }


  CHECK_FOR_INTERRUPTS();
 }




 return 0;
}
