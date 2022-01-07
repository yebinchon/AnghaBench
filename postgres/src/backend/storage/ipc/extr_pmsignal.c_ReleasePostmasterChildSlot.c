
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_child_flags; scalar_t__* PMChildFlags; } ;


 int Assert (int) ;
 TYPE_1__* PMSignalState ;
 scalar_t__ PM_CHILD_ASSIGNED ;
 scalar_t__ PM_CHILD_UNUSED ;

bool
ReleasePostmasterChildSlot(int slot)
{
 bool result;

 Assert(slot > 0 && slot <= PMSignalState->num_child_flags);
 slot--;






 result = (PMSignalState->PMChildFlags[slot] == PM_CHILD_ASSIGNED);
 PMSignalState->PMChildFlags[slot] = PM_CHILD_UNUSED;
 return result;
}
