
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ operation; scalar_t__ onConflictAction; } ;
struct TYPE_11__ {scalar_t__ plan; } ;
struct TYPE_14__ {scalar_t__ operation; TYPE_2__* mt_transition_capture; int * mt_oc_transition_capture; TYPE_1__ ps; } ;
struct TYPE_13__ {int ri_RelationDesc; int ri_TrigDesc; } ;
struct TYPE_12__ {int tcs_map; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__ ModifyTableState ;
typedef TYPE_5__ ModifyTable ;
typedef int EState ;


 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_UPDATE ;
 int ExecSetupChildParentMapForSubplan (TYPE_4__*) ;
 void* MakeTransitionCaptureState (int ,int ,scalar_t__) ;
 scalar_t__ ONCONFLICT_UPDATE ;
 int RelationGetRelid (int ) ;
 TYPE_3__* getTargetResultRelInfo (TYPE_4__*) ;
 int tupconv_map_for_subplan (TYPE_4__*,int ) ;

__attribute__((used)) static void
ExecSetupTransitionCaptureState(ModifyTableState *mtstate, EState *estate)
{
 ModifyTable *plan = (ModifyTable *) mtstate->ps.plan;
 ResultRelInfo *targetRelInfo = getTargetResultRelInfo(mtstate);


 mtstate->mt_transition_capture =
  MakeTransitionCaptureState(targetRelInfo->ri_TrigDesc,
           RelationGetRelid(targetRelInfo->ri_RelationDesc),
           mtstate->operation);
 if (plan->operation == CMD_INSERT &&
  plan->onConflictAction == ONCONFLICT_UPDATE)
  mtstate->mt_oc_transition_capture =
   MakeTransitionCaptureState(targetRelInfo->ri_TrigDesc,
            RelationGetRelid(targetRelInfo->ri_RelationDesc),
            CMD_UPDATE);







 if (mtstate->mt_transition_capture != ((void*)0) ||
  mtstate->mt_oc_transition_capture != ((void*)0))
 {
  ExecSetupChildParentMapForSubplan(mtstate);







  if (mtstate->mt_transition_capture && mtstate->operation != CMD_INSERT)
   mtstate->mt_transition_capture->tcs_map =
    tupconv_map_for_subplan(mtstate, 0);
 }
}
