
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_23__ {int es_tupleTable; } ;
struct TYPE_22__ {scalar_t__ mt_oc_transition_capture; scalar_t__ mt_transition_capture; } ;
struct TYPE_21__ {int* indexes; } ;
struct TYPE_20__ {int * pi_PartitionToRootMap; int * pi_PartitionTupleSlot; int * pi_RootToPartitionMap; } ;
struct TYPE_19__ {int num_partitions; int max_partitions; TYPE_2__** partitions; int memcxt; } ;
struct TYPE_18__ {int * ri_CopyMultiInsertBuffer; TYPE_4__* ri_PartitionInfo; TYPE_1__* ri_FdwRoutine; int ri_PartitionRoot; int ri_RelationDesc; } ;
struct TYPE_17__ {int (* BeginForeignInsert ) (TYPE_6__*,TYPE_2__*) ;} ;
typedef TYPE_2__ ResultRelInfo ;
typedef int Relation ;
typedef TYPE_3__ PartitionTupleRouting ;
typedef TYPE_4__ PartitionRoutingInfo ;
typedef TYPE_5__* PartitionDispatch ;
typedef TYPE_6__ ModifyTableState ;
typedef int MemoryContext ;
typedef TYPE_7__ EState ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 int RelationGetDescr (int ) ;
 void* convert_tuples_by_name (int ,int ) ;
 TYPE_4__* palloc (int) ;
 scalar_t__ repalloc (TYPE_2__**,int) ;
 int stub1 (TYPE_6__*,TYPE_2__*) ;
 int * table_slot_create (int ,int *) ;

__attribute__((used)) static void
ExecInitRoutingInfo(ModifyTableState *mtstate,
     EState *estate,
     PartitionTupleRouting *proute,
     PartitionDispatch dispatch,
     ResultRelInfo *partRelInfo,
     int partidx)
{
 MemoryContext oldcxt;
 PartitionRoutingInfo *partrouteinfo;
 int rri_index;

 oldcxt = MemoryContextSwitchTo(proute->memcxt);

 partrouteinfo = palloc(sizeof(PartitionRoutingInfo));





 partrouteinfo->pi_RootToPartitionMap =
  convert_tuples_by_name(RelationGetDescr(partRelInfo->ri_PartitionRoot),
          RelationGetDescr(partRelInfo->ri_RelationDesc));







 if (partrouteinfo->pi_RootToPartitionMap != ((void*)0))
 {
  Relation partrel = partRelInfo->ri_RelationDesc;






  partrouteinfo->pi_PartitionTupleSlot =
   table_slot_create(partrel, &estate->es_tupleTable);
 }
 else
  partrouteinfo->pi_PartitionTupleSlot = ((void*)0);





 if (mtstate &&
  (mtstate->mt_transition_capture || mtstate->mt_oc_transition_capture))
 {
  partrouteinfo->pi_PartitionToRootMap =
   convert_tuples_by_name(RelationGetDescr(partRelInfo->ri_RelationDesc),
           RelationGetDescr(partRelInfo->ri_PartitionRoot));
 }
 else
  partrouteinfo->pi_PartitionToRootMap = ((void*)0);





 if (partRelInfo->ri_FdwRoutine != ((void*)0) &&
  partRelInfo->ri_FdwRoutine->BeginForeignInsert != ((void*)0))
  partRelInfo->ri_FdwRoutine->BeginForeignInsert(mtstate, partRelInfo);

 partRelInfo->ri_PartitionInfo = partrouteinfo;
 partRelInfo->ri_CopyMultiInsertBuffer = ((void*)0);




 Assert(dispatch->indexes[partidx] == -1);

 rri_index = proute->num_partitions++;


 if (proute->num_partitions >= proute->max_partitions)
 {
  if (proute->max_partitions == 0)
  {
   proute->max_partitions = 8;
   proute->partitions = (ResultRelInfo **)
    palloc(sizeof(ResultRelInfo *) * proute->max_partitions);
  }
  else
  {
   proute->max_partitions *= 2;
   proute->partitions = (ResultRelInfo **)
    repalloc(proute->partitions, sizeof(ResultRelInfo *) *
       proute->max_partitions);
  }
 }

 proute->partitions[rri_index] = partRelInfo;
 dispatch->indexes[partidx] = rri_index;

 MemoryContextSwitchTo(oldcxt);
}
