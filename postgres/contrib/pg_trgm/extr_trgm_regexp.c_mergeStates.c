
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; int flags; } ;
typedef TYPE_1__ TrgmState ;


 int Assert (int) ;

__attribute__((used)) static void
mergeStates(TrgmState *state1, TrgmState *state2)
{
 Assert(state1 != state2);
 Assert(!state1->parent);
 Assert(!state2->parent);


 state1->flags |= state2->flags;


 state2->parent = state1;
}
