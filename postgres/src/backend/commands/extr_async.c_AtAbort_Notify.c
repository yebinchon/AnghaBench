
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearPendingActionsAndNotifies () ;
 scalar_t__ NIL ;
 scalar_t__ amRegisteredListener ;
 int asyncQueueUnregister () ;
 scalar_t__ listenChannels ;

void
AtAbort_Notify(void)
{





 if (amRegisteredListener && listenChannels == NIL)
  asyncQueueUnregister();


 ClearPendingActionsAndNotifies();
}
