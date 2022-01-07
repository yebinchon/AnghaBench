
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* pa_finished; } ;
struct TYPE_4__ {int as_nplans; TYPE_3__* as_pstate; int as_valid_subplans; TYPE_3__* as_prune_state; } ;
typedef TYPE_1__ AppendState ;


 int Assert (TYPE_3__*) ;
 int bms_is_member (int,int ) ;
 int bms_num_members (int ) ;

__attribute__((used)) static void
mark_invalid_subplans_as_finished(AppendState *node)
{
 int i;


 Assert(node->as_pstate);


 Assert(node->as_prune_state);


 if (bms_num_members(node->as_valid_subplans) == node->as_nplans)
  return;


 for (i = 0; i < node->as_nplans; i++)
 {
  if (!bms_is_member(i, node->as_valid_subplans))
   node->as_pstate->pa_finished[i] = 1;
 }
}
