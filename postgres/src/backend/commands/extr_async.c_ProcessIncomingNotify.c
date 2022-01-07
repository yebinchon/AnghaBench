
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTransactionCommand () ;
 int DEBUG1 ;
 scalar_t__ NIL ;
 int StartTransactionCommand () ;
 scalar_t__ Trace_notify ;
 int asyncQueueReadAllNotifications () ;
 int elog (int ,char*) ;
 scalar_t__ listenChannels ;
 int notifyInterruptPending ;
 int pq_flush () ;
 int set_ps_display (char*,int) ;

__attribute__((used)) static void
ProcessIncomingNotify(void)
{

 notifyInterruptPending = 0;


 if (listenChannels == NIL)
  return;

 if (Trace_notify)
  elog(DEBUG1, "ProcessIncomingNotify");

 set_ps_display("notify interrupt", 0);





 StartTransactionCommand();

 asyncQueueReadAllNotifications();

 CommitTransactionCommand();




 pq_flush();

 set_ps_display("idle", 0);

 if (Trace_notify)
  elog(DEBUG1, "ProcessIncomingNotify: done");
}
