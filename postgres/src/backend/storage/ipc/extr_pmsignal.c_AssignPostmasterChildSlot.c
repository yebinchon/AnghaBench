
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_child_flag; int num_child_flags; scalar_t__* PMChildFlags; } ;


 int FATAL ;
 TYPE_1__* PMSignalState ;
 scalar_t__ PM_CHILD_ASSIGNED ;
 scalar_t__ PM_CHILD_UNUSED ;
 int elog (int ,char*) ;

int
AssignPostmasterChildSlot(void)
{
 int slot = PMSignalState->next_child_flag;
 int n;





 for (n = PMSignalState->num_child_flags; n > 0; n--)
 {
  if (--slot < 0)
   slot = PMSignalState->num_child_flags - 1;
  if (PMSignalState->PMChildFlags[slot] == PM_CHILD_UNUSED)
  {
   PMSignalState->PMChildFlags[slot] = PM_CHILD_ASSIGNED;
   PMSignalState->next_child_flag = slot;
   return slot + 1;
  }
 }


 elog(FATAL, "no free slots in PMChildFlags array");
 return 0;
}
