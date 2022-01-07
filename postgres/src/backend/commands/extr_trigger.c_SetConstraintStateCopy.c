
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numstates; int trigstates; int all_isdeferred; int all_isset; } ;
typedef int SetConstraintTriggerData ;
typedef TYPE_1__* SetConstraintState ;


 TYPE_1__* SetConstraintStateCreate (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static SetConstraintState
SetConstraintStateCopy(SetConstraintState origstate)
{
 SetConstraintState state;

 state = SetConstraintStateCreate(origstate->numstates);

 state->all_isset = origstate->all_isset;
 state->all_isdeferred = origstate->all_isdeferred;
 state->numstates = origstate->numstates;
 memcpy(state->trigstates, origstate->trigstates,
     origstate->numstates * sizeof(SetConstraintTriggerData));

 return state;
}
