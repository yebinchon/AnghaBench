
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_7__ {int as_whichplan; int as_nplans; int * as_valid_subplans; TYPE_2__ ps; int as_prune_state; } ;
struct TYPE_5__ {int es_direction; } ;
typedef TYPE_3__ AppendState ;


 int Assert (int) ;
 int * ExecFindMatchingSubPlans (int ) ;
 int INVALID_SUBPLAN_INDEX ;
 int NO_MATCHING_SUBPLANS ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int bms_next_member (int *,int) ;
 int bms_prev_member (int *,int) ;

__attribute__((used)) static bool
choose_next_subplan_locally(AppendState *node)
{
 int whichplan = node->as_whichplan;
 int nextplan;


 Assert(whichplan != NO_MATCHING_SUBPLANS);
 if (whichplan == INVALID_SUBPLAN_INDEX)
 {
  if (node->as_valid_subplans == ((void*)0))
   node->as_valid_subplans =
    ExecFindMatchingSubPlans(node->as_prune_state);

  whichplan = -1;
 }


 Assert(whichplan >= -1 && whichplan <= node->as_nplans);

 if (ScanDirectionIsForward(node->ps.state->es_direction))
  nextplan = bms_next_member(node->as_valid_subplans, whichplan);
 else
  nextplan = bms_prev_member(node->as_valid_subplans, whichplan);

 if (nextplan < 0)
  return 0;

 node->as_whichplan = nextplan;

 return 1;
}
