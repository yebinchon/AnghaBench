
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {TYPE_1__* rd_rel; int trigdesc; } ;
struct TYPE_13__ {int ri_usesFdwDirectModify; int * ri_CopyMultiInsertBuffer; int * ri_PartitionInfo; TYPE_3__* ri_PartitionRoot; int * ri_PartitionCheck; int * ri_TrigNewSlot; int * ri_TrigOldSlot; int * ri_ReturningSlot; int * ri_onConflict; void* ri_onConflictArbiterIndexes; int * ri_projectReturning; int * ri_junkFilter; int * ri_GeneratedExprs; int * ri_ConstraintExprs; int * ri_FdwState; int * ri_FdwRoutine; int * ri_TrigInstrument; int ** ri_TrigWhenExprs; int * ri_TrigFunctions; TYPE_10__* ri_TrigDesc; int * ri_IndexRelationInfo; int * ri_IndexRelationDescs; scalar_t__ ri_NumIndices; TYPE_3__* ri_RelationDesc; int ri_RangeTableIndex; int type; } ;
struct TYPE_12__ {scalar_t__ relkind; } ;
struct TYPE_11__ {int numtriggers; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef TYPE_3__* Relation ;
typedef int List ;
typedef int Index ;
typedef int FmgrInfo ;
typedef int ExprState ;


 TYPE_10__* CopyTriggerDesc (int ) ;
 int * GetFdwRoutineForRelation (TYPE_3__*,int) ;
 int * InstrAlloc (int,int) ;
 int MemSet (TYPE_2__*,int ,int) ;
 void* NIL ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 int * RelationGetPartitionQual (TYPE_3__*) ;
 int T_ResultRelInfo ;
 scalar_t__ palloc0 (int) ;

void
InitResultRelInfo(ResultRelInfo *resultRelInfo,
      Relation resultRelationDesc,
      Index resultRelationIndex,
      Relation partition_root,
      int instrument_options)
{
 List *partition_check = NIL;

 MemSet(resultRelInfo, 0, sizeof(ResultRelInfo));
 resultRelInfo->type = T_ResultRelInfo;
 resultRelInfo->ri_RangeTableIndex = resultRelationIndex;
 resultRelInfo->ri_RelationDesc = resultRelationDesc;
 resultRelInfo->ri_NumIndices = 0;
 resultRelInfo->ri_IndexRelationDescs = ((void*)0);
 resultRelInfo->ri_IndexRelationInfo = ((void*)0);

 resultRelInfo->ri_TrigDesc = CopyTriggerDesc(resultRelationDesc->trigdesc);
 if (resultRelInfo->ri_TrigDesc)
 {
  int n = resultRelInfo->ri_TrigDesc->numtriggers;

  resultRelInfo->ri_TrigFunctions = (FmgrInfo *)
   palloc0(n * sizeof(FmgrInfo));
  resultRelInfo->ri_TrigWhenExprs = (ExprState **)
   palloc0(n * sizeof(ExprState *));
  if (instrument_options)
   resultRelInfo->ri_TrigInstrument = InstrAlloc(n, instrument_options);
 }
 else
 {
  resultRelInfo->ri_TrigFunctions = ((void*)0);
  resultRelInfo->ri_TrigWhenExprs = ((void*)0);
  resultRelInfo->ri_TrigInstrument = ((void*)0);
 }
 if (resultRelationDesc->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
  resultRelInfo->ri_FdwRoutine = GetFdwRoutineForRelation(resultRelationDesc, 1);
 else
  resultRelInfo->ri_FdwRoutine = ((void*)0);


 resultRelInfo->ri_FdwState = ((void*)0);
 resultRelInfo->ri_usesFdwDirectModify = 0;
 resultRelInfo->ri_ConstraintExprs = ((void*)0);
 resultRelInfo->ri_GeneratedExprs = ((void*)0);
 resultRelInfo->ri_junkFilter = ((void*)0);
 resultRelInfo->ri_projectReturning = ((void*)0);
 resultRelInfo->ri_onConflictArbiterIndexes = NIL;
 resultRelInfo->ri_onConflict = ((void*)0);
 resultRelInfo->ri_ReturningSlot = ((void*)0);
 resultRelInfo->ri_TrigOldSlot = ((void*)0);
 resultRelInfo->ri_TrigNewSlot = ((void*)0);
 partition_check = RelationGetPartitionQual(resultRelationDesc);

 resultRelInfo->ri_PartitionCheck = partition_check;
 resultRelInfo->ri_PartitionRoot = partition_root;
 resultRelInfo->ri_PartitionInfo = ((void*)0);
 resultRelInfo->ri_CopyMultiInsertBuffer = ((void*)0);
}
