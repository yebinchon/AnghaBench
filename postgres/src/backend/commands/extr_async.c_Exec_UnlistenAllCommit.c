
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int MyProcPid ;
 int NIL ;
 scalar_t__ Trace_notify ;
 int elog (int ,char*,int ) ;
 int list_free_deep (int ) ;
 int listenChannels ;

__attribute__((used)) static void
Exec_UnlistenAllCommit(void)
{
 if (Trace_notify)
  elog(DEBUG1, "Exec_UnlistenAllCommit(%d)", MyProcPid);

 list_free_deep(listenChannels);
 listenChannels = NIL;
}
