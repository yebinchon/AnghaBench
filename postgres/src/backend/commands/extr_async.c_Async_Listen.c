
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int LISTEN_LISTEN ;
 int MyProcPid ;
 scalar_t__ Trace_notify ;
 int elog (int ,char*,char const*,int ) ;
 int queue_listen (int ,char const*) ;

void
Async_Listen(const char *channel)
{
 if (Trace_notify)
  elog(DEBUG1, "Async_Listen(%s,%d)", channel, MyProcPid);

 queue_listen(LISTEN_LISTEN, channel);
}
