
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numstates; int numalloc; TYPE_1__* trigstates; } ;
struct TYPE_6__ {int sct_tgisdeferred; int sct_tgoid; } ;
typedef int SetConstraintTriggerData ;
typedef TYPE_2__* SetConstraintState ;
typedef int Oid ;


 int Assert (int) ;
 int Max (int,int) ;
 int SetConstraintStateData ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ repalloc (TYPE_2__*,scalar_t__) ;
 int trigstates ;

__attribute__((used)) static SetConstraintState
SetConstraintStateAddItem(SetConstraintState state,
        Oid tgoid, bool tgisdeferred)
{
 if (state->numstates >= state->numalloc)
 {
  int newalloc = state->numalloc * 2;

  newalloc = Max(newalloc, 8);
  state = (SetConstraintState)
   repalloc(state,
      offsetof(SetConstraintStateData, trigstates) +
      newalloc * sizeof(SetConstraintTriggerData));
  state->numalloc = newalloc;
  Assert(state->numstates < state->numalloc);
 }

 state->trigstates[state->numstates].sct_tgoid = tgoid;
 state->trigstates[state->numstates].sct_tgisdeferred = tgisdeferred;
 state->numstates++;

 return state;
}
