
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_26__ {TYPE_2__* es_result_relation_info; } ;
struct TYPE_25__ {int * ecxt_scantuple; } ;
struct TYPE_24__ {int * ii_PredicateState; int * ii_Predicate; int ii_ReadyForInserts; int ii_ExclusionOps; int ii_Unique; } ;
struct TYPE_23__ {TYPE_1__* rd_index; } ;
struct TYPE_22__ {int ri_NumIndices; TYPE_3__* ri_RelationDesc; TYPE_5__** ri_IndexRelationInfo; TYPE_3__** ri_IndexRelationDescs; } ;
struct TYPE_21__ {int indimmediate; int indexrelid; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef TYPE_3__** RelationPtr ;
typedef TYPE_3__* Relation ;
typedef int List ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_5__ IndexInfo ;
typedef int ExprState ;
typedef TYPE_6__ ExprContext ;
typedef TYPE_7__ EState ;
typedef int Datum ;


 int CEOUC_WAIT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int * ExecPrepareQual (int *,TYPE_7__*) ;
 int ExecQual (int *,TYPE_6__*) ;
 int FormIndexDatum (TYPE_5__*,int *,TYPE_7__*,int *,int*) ;
 TYPE_6__* GetPerTupleExprContext (TYPE_7__*) ;
 int INDEX_MAX_KEYS ;
 int ItemPointerSetInvalid (int *) ;
 int * NIL ;
 int RelationGetRelationName (TYPE_3__*) ;
 int check_exclusion_or_unique_constraint (TYPE_3__*,TYPE_3__*,TYPE_5__*,int *,int *,int*,TYPE_7__*,int,int ,int,int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errtableconstraint (TYPE_3__*,int ) ;
 int list_member_oid (int *,int ) ;

bool
ExecCheckIndexConstraints(TupleTableSlot *slot,
        EState *estate, ItemPointer conflictTid,
        List *arbiterIndexes)
{
 ResultRelInfo *resultRelInfo;
 int i;
 int numIndices;
 RelationPtr relationDescs;
 Relation heapRelation;
 IndexInfo **indexInfoArray;
 ExprContext *econtext;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 ItemPointerData invalidItemPtr;
 bool checkedIndex = 0;

 ItemPointerSetInvalid(conflictTid);
 ItemPointerSetInvalid(&invalidItemPtr);




 resultRelInfo = estate->es_result_relation_info;
 numIndices = resultRelInfo->ri_NumIndices;
 relationDescs = resultRelInfo->ri_IndexRelationDescs;
 indexInfoArray = resultRelInfo->ri_IndexRelationInfo;
 heapRelation = resultRelInfo->ri_RelationDesc;





 econtext = GetPerTupleExprContext(estate);


 econtext->ecxt_scantuple = slot;





 for (i = 0; i < numIndices; i++)
 {
  Relation indexRelation = relationDescs[i];
  IndexInfo *indexInfo;
  bool satisfiesConstraint;

  if (indexRelation == ((void*)0))
   continue;

  indexInfo = indexInfoArray[i];

  if (!indexInfo->ii_Unique && !indexInfo->ii_ExclusionOps)
   continue;


  if (!indexInfo->ii_ReadyForInserts)
   continue;


  if (arbiterIndexes != NIL &&
   !list_member_oid(arbiterIndexes,
        indexRelation->rd_index->indexrelid))
   continue;

  if (!indexRelation->rd_index->indimmediate)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("ON CONFLICT does not support deferrable unique constraints/exclusion constraints as arbiters"),
      errtableconstraint(heapRelation,
          RelationGetRelationName(indexRelation))));

  checkedIndex = 1;


  if (indexInfo->ii_Predicate != NIL)
  {
   ExprState *predicate;





   predicate = indexInfo->ii_PredicateState;
   if (predicate == ((void*)0))
   {
    predicate = ExecPrepareQual(indexInfo->ii_Predicate, estate);
    indexInfo->ii_PredicateState = predicate;
   }


   if (!ExecQual(predicate, econtext))
    continue;
  }





  FormIndexDatum(indexInfo,
        slot,
        estate,
        values,
        isnull);

  satisfiesConstraint =
   check_exclusion_or_unique_constraint(heapRelation, indexRelation,
             indexInfo, &invalidItemPtr,
             values, isnull, estate, 0,
             CEOUC_WAIT, 1,
             conflictTid);
  if (!satisfiesConstraint)
   return 0;
 }

 if (arbiterIndexes != NIL && !checkedIndex)
  elog(ERROR, "unexpected failure to find arbiter index");

 return 1;
}
