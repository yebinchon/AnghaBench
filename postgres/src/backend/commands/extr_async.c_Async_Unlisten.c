
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int LISTEN_UNLISTEN ;
 int MyProcPid ;
 scalar_t__ Trace_notify ;
 int elog (int ,char*,char const*,int ) ;
 int * pendingActions ;
 int queue_listen (int ,char const*) ;
 int unlistenExitRegistered ;

void
Async_Unlisten(const char *channel)
{
 if (Trace_notify)
  elog(DEBUG1, "Async_Unlisten(%s,%d)", channel, MyProcPid);


 if (pendingActions == ((void*)0) && !unlistenExitRegistered)
  return;

 queue_listen(LISTEN_UNLISTEN, channel);
}
