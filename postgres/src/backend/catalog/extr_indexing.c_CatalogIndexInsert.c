
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_21__ {int ri_NumIndices; TYPE_2__* ri_RelationDesc; TYPE_4__** ri_IndexRelationInfo; TYPE_2__** ri_IndexRelationDescs; } ;
struct TYPE_20__ {int t_self; } ;
struct TYPE_19__ {scalar_t__ ii_Expressions; scalar_t__ ii_Predicate; scalar_t__ ii_NumIndexKeyAttrs; int * ii_ExclusionOps; int ii_ReadyForInserts; } ;
struct TYPE_18__ {TYPE_1__* rd_index; } ;
struct TYPE_17__ {int indimmediate; scalar_t__ indisunique; } ;
typedef TYPE_2__** RelationPtr ;
typedef TYPE_2__* Relation ;
typedef TYPE_4__ IndexInfo ;
typedef TYPE_5__* HeapTuple ;
typedef int Datum ;
typedef TYPE_6__* CatalogIndexState ;


 int Assert (int) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int ExecStoreHeapTuple (TYPE_5__*,int *,int) ;
 int FormIndexDatum (TYPE_4__*,int *,int *,int *,int*) ;
 scalar_t__ HeapTupleIsHeapOnly (TYPE_5__*) ;
 int INDEX_MAX_KEYS ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 scalar_t__ NIL ;
 int ReindexIsProcessingIndex (int ) ;
 int RelationGetDescr (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int TTSOpsHeapTuple ;
 int UNIQUE_CHECK_NO ;
 int UNIQUE_CHECK_YES ;
 int index_insert (TYPE_2__*,int *,int*,int *,TYPE_2__*,int ,TYPE_4__*) ;

__attribute__((used)) static void
CatalogIndexInsert(CatalogIndexState indstate, HeapTuple heapTuple)
{
 int i;
 int numIndexes;
 RelationPtr relationDescs;
 Relation heapRelation;
 TupleTableSlot *slot;
 IndexInfo **indexInfoArray;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];







 if (HeapTupleIsHeapOnly(heapTuple))
  return;





 numIndexes = indstate->ri_NumIndices;
 if (numIndexes == 0)
  return;
 relationDescs = indstate->ri_IndexRelationDescs;
 indexInfoArray = indstate->ri_IndexRelationInfo;
 heapRelation = indstate->ri_RelationDesc;


 slot = MakeSingleTupleTableSlot(RelationGetDescr(heapRelation),
         &TTSOpsHeapTuple);
 ExecStoreHeapTuple(heapTuple, slot, 0);




 for (i = 0; i < numIndexes; i++)
 {
  IndexInfo *indexInfo;
  Relation index;

  indexInfo = indexInfoArray[i];
  index = relationDescs[i];


  if (!indexInfo->ii_ReadyForInserts)
   continue;





  Assert(indexInfo->ii_Expressions == NIL);
  Assert(indexInfo->ii_Predicate == NIL);
  Assert(indexInfo->ii_ExclusionOps == ((void*)0));
  Assert(index->rd_index->indimmediate);
  Assert(indexInfo->ii_NumIndexKeyAttrs != 0);
  FormIndexDatum(indexInfo,
        slot,
        ((void*)0),
        values,
        isnull);




  index_insert(index,
      values,
      isnull,
      &(heapTuple->t_self),
      heapRelation,
      index->rd_index->indisunique ?
      UNIQUE_CHECK_YES : UNIQUE_CHECK_NO,
      indexInfo);
 }

 ExecDropSingleTupleTableSlot(slot);
}
