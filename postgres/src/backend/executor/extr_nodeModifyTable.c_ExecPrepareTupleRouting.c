
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_19__ {int attrMap; } ;
typedef TYPE_4__ TupleConversionMap ;
struct TYPE_23__ {TYPE_5__* es_result_relation_info; } ;
struct TYPE_22__ {TYPE_3__* mt_oc_transition_capture; TYPE_2__* mt_transition_capture; } ;
struct TYPE_21__ {int * pi_PartitionTupleSlot; TYPE_4__* pi_RootToPartitionMap; int * pi_PartitionToRootMap; } ;
struct TYPE_20__ {TYPE_1__* ri_TrigDesc; TYPE_6__* ri_PartitionInfo; } ;
struct TYPE_18__ {int * tcs_map; } ;
struct TYPE_17__ {int * tcs_map; int * tcs_original_insert_tuple; } ;
struct TYPE_16__ {scalar_t__ trig_insert_before_row; } ;
typedef TYPE_5__ ResultRelInfo ;
typedef int PartitionTupleRouting ;
typedef TYPE_6__ PartitionRoutingInfo ;
typedef TYPE_7__ ModifyTableState ;
typedef TYPE_8__ EState ;


 int Assert (int ) ;
 TYPE_5__* ExecFindPartition (TYPE_7__*,TYPE_5__*,int *,int *,TYPE_8__*) ;
 int * execute_attr_map_slot (int ,int *,int *) ;

__attribute__((used)) static TupleTableSlot *
ExecPrepareTupleRouting(ModifyTableState *mtstate,
      EState *estate,
      PartitionTupleRouting *proute,
      ResultRelInfo *targetRelInfo,
      TupleTableSlot *slot)
{
 ResultRelInfo *partrel;
 PartitionRoutingInfo *partrouteinfo;
 TupleConversionMap *map;
 partrel = ExecFindPartition(mtstate, targetRelInfo, proute, slot, estate);
 partrouteinfo = partrel->ri_PartitionInfo;
 Assert(partrouteinfo != ((void*)0));




 estate->es_result_relation_info = partrel;





 if (mtstate->mt_transition_capture != ((void*)0))
 {
  if (partrel->ri_TrigDesc &&
   partrel->ri_TrigDesc->trig_insert_before_row)
  {




   mtstate->mt_transition_capture->tcs_original_insert_tuple = ((void*)0);
   mtstate->mt_transition_capture->tcs_map =
    partrouteinfo->pi_PartitionToRootMap;
  }
  else
  {




   mtstate->mt_transition_capture->tcs_original_insert_tuple = slot;
   mtstate->mt_transition_capture->tcs_map = ((void*)0);
  }
 }
 if (mtstate->mt_oc_transition_capture != ((void*)0))
 {
  mtstate->mt_oc_transition_capture->tcs_map =
   partrouteinfo->pi_PartitionToRootMap;
 }




 map = partrouteinfo->pi_RootToPartitionMap;
 if (map != ((void*)0))
 {
  TupleTableSlot *new_slot = partrouteinfo->pi_PartitionTupleSlot;

  slot = execute_attr_map_slot(map->attrMap, slot, new_slot);
 }

 return slot;
}
