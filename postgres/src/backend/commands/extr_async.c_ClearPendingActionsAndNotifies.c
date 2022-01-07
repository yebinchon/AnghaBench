
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pendingActions ;
 int * pendingNotifies ;

__attribute__((used)) static void
ClearPendingActionsAndNotifies(void)
{






 pendingActions = ((void*)0);
 pendingNotifies = ((void*)0);
}
