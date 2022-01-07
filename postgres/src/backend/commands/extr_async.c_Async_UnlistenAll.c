
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int LISTEN_UNLISTEN_ALL ;
 int MyProcPid ;
 scalar_t__ Trace_notify ;
 int elog (int ,char*,int ) ;
 int * pendingActions ;
 int queue_listen (int ,char*) ;
 int unlistenExitRegistered ;

void
Async_UnlistenAll(void)
{
 if (Trace_notify)
  elog(DEBUG1, "Async_UnlistenAll(%d)", MyProcPid);


 if (pendingActions == ((void*)0) && !unlistenExitRegistered)
  return;

 queue_listen(LISTEN_UNLISTEN_ALL, "");
}
