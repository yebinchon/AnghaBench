
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int TupleTableSlot ;
struct TYPE_13__ {int * ecxt_innertuple; } ;
struct TYPE_12__ {scalar_t__ hj_CurHashValue; TYPE_1__* hj_CurTuple; int hj_HashTupleSlot; int hj_CurBucketNo; int hj_HashTable; int * hashclauses; } ;
struct TYPE_11__ {scalar_t__ hashvalue; } ;
typedef TYPE_1__* HashJoinTuple ;
typedef int HashJoinTable ;
typedef TYPE_2__ HashJoinState ;
typedef int ExprState ;
typedef TYPE_3__ ExprContext ;


 TYPE_1__* ExecParallelHashFirstTuple (int ,int ) ;
 TYPE_1__* ExecParallelHashNextTuple (int ,TYPE_1__*) ;
 scalar_t__ ExecQualAndReset (int *,TYPE_3__*) ;
 int * ExecStoreMinimalTuple (int ,int ,int) ;
 int HJTUPLE_MINTUPLE (TYPE_1__*) ;

bool
ExecParallelScanHashBucket(HashJoinState *hjstate,
         ExprContext *econtext)
{
 ExprState *hjclauses = hjstate->hashclauses;
 HashJoinTable hashtable = hjstate->hj_HashTable;
 HashJoinTuple hashTuple = hjstate->hj_CurTuple;
 uint32 hashvalue = hjstate->hj_CurHashValue;





 if (hashTuple != ((void*)0))
  hashTuple = ExecParallelHashNextTuple(hashtable, hashTuple);
 else
  hashTuple = ExecParallelHashFirstTuple(hashtable,
              hjstate->hj_CurBucketNo);

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

  hashTuple = ExecParallelHashNextTuple(hashtable, hashTuple);
 }




 return 0;
}
