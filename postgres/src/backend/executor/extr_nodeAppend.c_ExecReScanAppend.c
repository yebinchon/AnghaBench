
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * chgParam; } ;
struct TYPE_11__ {int as_nplans; int as_whichplan; TYPE_1__ ps; TYPE_3__** appendplans; int * as_valid_subplans; TYPE_2__* as_prune_state; } ;
struct TYPE_10__ {int * chgParam; } ;
struct TYPE_9__ {int execparamids; } ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ AppendState ;


 int ExecReScan (TYPE_3__*) ;
 int INVALID_SUBPLAN_INDEX ;
 int UpdateChangedParamSet (TYPE_3__*,int *) ;
 int bms_free (int *) ;
 scalar_t__ bms_overlap (int *,int ) ;

void
ExecReScanAppend(AppendState *node)
{
 int i;






 if (node->as_prune_state &&
  bms_overlap(node->ps.chgParam,
     node->as_prune_state->execparamids))
 {
  bms_free(node->as_valid_subplans);
  node->as_valid_subplans = ((void*)0);
 }

 for (i = 0; i < node->as_nplans; i++)
 {
  PlanState *subnode = node->appendplans[i];





  if (node->ps.chgParam != ((void*)0))
   UpdateChangedParamSet(subnode, node->ps.chgParam);





  if (subnode->chgParam == ((void*)0))
   ExecReScan(subnode);
 }


 node->as_whichplan = INVALID_SUBPLAN_INDEX;
}
