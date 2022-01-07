
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32 ;
typedef int TupleTableSlot ;
struct TYPE_16__ {int * ecxt_outertuple; } ;
struct TYPE_15__ {int skewTuples; int totalTuples; scalar_t__ nbuckets; scalar_t__ nbuckets_optimal; scalar_t__ spaceUsed; scalar_t__ spacePeak; int partialTuples; int keepNulls; } ;
struct TYPE_13__ {TYPE_4__* ps_ExprContext; } ;
struct TYPE_14__ {TYPE_1__ ps; int * hashkeys; TYPE_3__* hashtable; } ;
typedef int PlanState ;
typedef int List ;
typedef TYPE_2__ HashState ;
typedef int HashJoinTuple ;
typedef TYPE_3__* HashJoinTable ;
typedef TYPE_4__ ExprContext ;


 scalar_t__ ExecHashGetHashValue (TYPE_3__*,TYPE_4__*,int *,int,int ,int *) ;
 int ExecHashGetSkewBucket (TYPE_3__*,int ) ;
 int ExecHashIncreaseNumBuckets (TYPE_3__*) ;
 int ExecHashSkewTableInsert (TYPE_3__*,int *,int ,int) ;
 int ExecHashTableInsert (TYPE_3__*,int *,int ) ;
 int * ExecProcNode (int *) ;
 int INVALID_SKEW_BUCKET_NO ;
 scalar_t__ TupIsNull (int *) ;
 int * outerPlanState (TYPE_2__*) ;

__attribute__((used)) static void
MultiExecPrivateHash(HashState *node)
{
 PlanState *outerNode;
 List *hashkeys;
 HashJoinTable hashtable;
 TupleTableSlot *slot;
 ExprContext *econtext;
 uint32 hashvalue;




 outerNode = outerPlanState(node);
 hashtable = node->hashtable;




 hashkeys = node->hashkeys;
 econtext = node->ps.ps_ExprContext;





 for (;;)
 {
  slot = ExecProcNode(outerNode);
  if (TupIsNull(slot))
   break;

  econtext->ecxt_outertuple = slot;
  if (ExecHashGetHashValue(hashtable, econtext, hashkeys,
         0, hashtable->keepNulls,
         &hashvalue))
  {
   int bucketNumber;

   bucketNumber = ExecHashGetSkewBucket(hashtable, hashvalue);
   if (bucketNumber != INVALID_SKEW_BUCKET_NO)
   {

    ExecHashSkewTableInsert(hashtable, slot, hashvalue,
          bucketNumber);
    hashtable->skewTuples += 1;
   }
   else
   {

    ExecHashTableInsert(hashtable, slot, hashvalue);
   }
   hashtable->totalTuples += 1;
  }
 }


 if (hashtable->nbuckets != hashtable->nbuckets_optimal)
  ExecHashIncreaseNumBuckets(hashtable);


 hashtable->spaceUsed += hashtable->nbuckets * sizeof(HashJoinTuple);
 if (hashtable->spaceUsed > hashtable->spacePeak)
  hashtable->spacePeak = hashtable->spaceUsed;

 hashtable->partialTuples = hashtable->totalTuples;
}
