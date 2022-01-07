
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int CommitTransactionCommand () ;
 int CurrentMemoryContext ;
 int DEBUG1 ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 int SignalBackends () ;
 int StartTransactionCommand () ;
 scalar_t__ Trace_notify ;
 int asyncQueueAdvanceTail () ;
 int asyncQueueReadAllNotifications () ;
 int backendHasSentNotifications ;
 int backendTryAdvanceTail ;
 int elog (int ,char*) ;
 scalar_t__ listenChannels ;

void
ProcessCompletedNotifies(void)
{
 MemoryContext caller_context;


 if (!backendHasSentNotifications)
  return;






 backendHasSentNotifications = 0;





 caller_context = CurrentMemoryContext;

 if (Trace_notify)
  elog(DEBUG1, "ProcessCompletedNotifies");





 StartTransactionCommand();


 SignalBackends();

 if (listenChannels != NIL)
 {

  asyncQueueReadAllNotifications();
 }




 if (backendTryAdvanceTail)
 {
  backendTryAdvanceTail = 0;
  asyncQueueAdvanceTail();
 }

 CommitTransactionCommand();

 MemoryContextSwitchTo(caller_context);


}
