
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ tts_tableOid; int tts_tid; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_32__ {TYPE_3__* es_result_relation_info; } ;
struct TYPE_31__ {TYPE_2__* ecxt_scantuple; } ;
struct TYPE_30__ {int * ii_ExclusionOps; int * ii_PredicateState; int * ii_Predicate; int ii_ReadyForInserts; } ;
struct TYPE_29__ {TYPE_1__* rd_index; } ;
struct TYPE_28__ {int ri_NumIndices; TYPE_4__* ri_RelationDesc; TYPE_6__** ri_IndexRelationInfo; TYPE_4__** ri_IndexRelationDescs; } ;
struct TYPE_26__ {scalar_t__ indimmediate; int indisunique; int indexrelid; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__** RelationPtr ;
typedef TYPE_4__* Relation ;
typedef int List ;
typedef int * ItemPointer ;
typedef scalar_t__ IndexUniqueCheck ;
typedef TYPE_6__ IndexInfo ;
typedef int ExprState ;
typedef TYPE_7__ ExprContext ;
typedef TYPE_8__ EState ;
typedef int Datum ;
typedef int CEOUC_WAIT_MODE ;


 int Assert (int) ;
 int CEOUC_LIVELOCK_PREVENTING_WAIT ;
 int CEOUC_NOWAIT ;
 int CEOUC_WAIT ;
 int * ExecPrepareQual (int *,TYPE_8__*) ;
 int ExecQual (int *,TYPE_7__*) ;
 int FormIndexDatum (TYPE_6__*,TYPE_2__*,TYPE_8__*,int *,int*) ;
 TYPE_7__* GetPerTupleExprContext (TYPE_8__*) ;
 int INDEX_MAX_KEYS ;
 int ItemPointerIsValid (int *) ;
 int * NIL ;
 scalar_t__ RelationGetRelid (TYPE_4__*) ;
 scalar_t__ UNIQUE_CHECK_NO ;
 scalar_t__ UNIQUE_CHECK_PARTIAL ;
 scalar_t__ UNIQUE_CHECK_YES ;
 int check_exclusion_or_unique_constraint (TYPE_4__*,TYPE_4__*,TYPE_6__*,int *,int *,int*,TYPE_8__*,int,int ,int,int *) ;
 int index_insert (TYPE_4__*,int *,int*,int *,TYPE_4__*,scalar_t__,TYPE_6__*) ;
 int * lappend_oid (int *,scalar_t__) ;
 scalar_t__ list_member_oid (int *,int ) ;

List *
ExecInsertIndexTuples(TupleTableSlot *slot,
       EState *estate,
       bool noDupErr,
       bool *specConflict,
       List *arbiterIndexes)
{
 ItemPointer tupleid = &slot->tts_tid;
 List *result = NIL;
 ResultRelInfo *resultRelInfo;
 int i;
 int numIndices;
 RelationPtr relationDescs;
 Relation heapRelation;
 IndexInfo **indexInfoArray;
 ExprContext *econtext;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];

 Assert(ItemPointerIsValid(tupleid));




 resultRelInfo = estate->es_result_relation_info;
 numIndices = resultRelInfo->ri_NumIndices;
 relationDescs = resultRelInfo->ri_IndexRelationDescs;
 indexInfoArray = resultRelInfo->ri_IndexRelationInfo;
 heapRelation = resultRelInfo->ri_RelationDesc;


 Assert(slot->tts_tableOid == RelationGetRelid(heapRelation));





 econtext = GetPerTupleExprContext(estate);


 econtext->ecxt_scantuple = slot;




 for (i = 0; i < numIndices; i++)
 {
  Relation indexRelation = relationDescs[i];
  IndexInfo *indexInfo;
  bool applyNoDupErr;
  IndexUniqueCheck checkUnique;
  bool satisfiesConstraint;

  if (indexRelation == ((void*)0))
   continue;

  indexInfo = indexInfoArray[i];


  if (!indexInfo->ii_ReadyForInserts)
   continue;


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


  applyNoDupErr = noDupErr &&
   (arbiterIndexes == NIL ||
    list_member_oid(arbiterIndexes,
        indexRelation->rd_index->indexrelid));
  if (!indexRelation->rd_index->indisunique)
   checkUnique = UNIQUE_CHECK_NO;
  else if (applyNoDupErr)
   checkUnique = UNIQUE_CHECK_PARTIAL;
  else if (indexRelation->rd_index->indimmediate)
   checkUnique = UNIQUE_CHECK_YES;
  else
   checkUnique = UNIQUE_CHECK_PARTIAL;

  satisfiesConstraint =
   index_insert(indexRelation,
       values,
       isnull,
       tupleid,
       heapRelation,
       checkUnique,
       indexInfo);
  if (indexInfo->ii_ExclusionOps != ((void*)0))
  {
   bool violationOK;
   CEOUC_WAIT_MODE waitMode;

   if (applyNoDupErr)
   {
    violationOK = 1;
    waitMode = CEOUC_LIVELOCK_PREVENTING_WAIT;
   }
   else if (!indexRelation->rd_index->indimmediate)
   {
    violationOK = 1;
    waitMode = CEOUC_NOWAIT;
   }
   else
   {
    violationOK = 0;
    waitMode = CEOUC_WAIT;
   }

   satisfiesConstraint =
    check_exclusion_or_unique_constraint(heapRelation,
              indexRelation, indexInfo,
              tupleid, values, isnull,
              estate, 0,
              waitMode, violationOK, ((void*)0));
  }

  if ((checkUnique == UNIQUE_CHECK_PARTIAL ||
    indexInfo->ii_ExclusionOps != ((void*)0)) &&
   !satisfiesConstraint)
  {






   result = lappend_oid(result, RelationGetRelid(indexRelation));
   if (indexRelation->rd_index->indimmediate && specConflict)
    *specConflict = 1;
  }
 }

 return result;
}
