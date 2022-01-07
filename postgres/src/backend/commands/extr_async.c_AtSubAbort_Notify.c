
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nestingLevel; struct TYPE_6__* upper; } ;
typedef TYPE_1__ NotificationList ;
typedef TYPE_1__ ActionList ;


 int GetCurrentTransactionNestLevel () ;
 TYPE_1__* pendingActions ;
 TYPE_1__* pendingNotifies ;
 int pfree (TYPE_1__*) ;

void
AtSubAbort_Notify(void)
{
 int my_level = GetCurrentTransactionNestLevel();
 while (pendingActions != ((void*)0) &&
     pendingActions->nestingLevel >= my_level)
 {
  ActionList *childPendingActions = pendingActions;

  pendingActions = pendingActions->upper;
  pfree(childPendingActions);
 }

 while (pendingNotifies != ((void*)0) &&
     pendingNotifies->nestingLevel >= my_level)
 {
  NotificationList *childPendingNotifies = pendingNotifies;

  pendingNotifies = pendingNotifies->upper;
  pfree(childPendingNotifies);
 }
}
