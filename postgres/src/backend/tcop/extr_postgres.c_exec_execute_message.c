
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int (* rDestroy ) (TYPE_2__*) ;} ;
struct TYPE_12__ {scalar_t__ stmts; char* sourceText; char* prepStmtName; int atStart; int * commandTag; int * portalParams; } ;
typedef TYPE_1__* Portal ;
typedef int * ParamListInfo ;
typedef TYPE_2__ DestReceiver ;
typedef scalar_t__ CommandDest ;


 int Assert (int) ;
 int BeginCommand (int *,scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int COMPLETION_TAG_BUFSIZE ;
 int CommandCounterIncrement () ;
 TYPE_2__* CreateDestReceiver (scalar_t__) ;
 scalar_t__ DestRemote ;
 scalar_t__ DestRemoteExecute ;
 int ERRCODE_IN_FAILED_SQL_TRANSACTION ;
 int ERRCODE_UNDEFINED_CURSOR ;
 int ERROR ;
 int EndCommand (char*,scalar_t__) ;
 long FETCH_ALL ;
 TYPE_1__* GetPortalByName (char const*) ;
 scalar_t__ IsAbortedTransactionBlockState () ;
 int IsTransactionExitStmtList (scalar_t__) ;
 int IsTransactionStmtList (scalar_t__) ;
 int LOG ;
 scalar_t__ NIL ;
 int NullCommand (scalar_t__) ;
 int PortalIsValid (TYPE_1__*) ;
 int PortalRun (TYPE_1__*,long,int,int,TYPE_2__*,TYPE_2__*,char*) ;
 int ResetUsage () ;
 int STATE_RUNNING ;
 int SetRemoteDestReceiverParams (TYPE_2__*,TYPE_1__*) ;
 int ShowUsage (char*) ;
 int _ (char*) ;
 int check_log_duration (char*,int) ;
 scalar_t__ check_log_statement (scalar_t__) ;
 char const* debug_query_string ;
 int disable_statement_timeout () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_abort () ;
 int errdetail_params (int *) ;
 int errhidestmt (int) ;
 int errmsg (char*,...) ;
 int finish_xact_command () ;
 int log_statement_stats ;
 int pgstat_report_activity (int ,char const*) ;
 int pq_putemptymessage (char) ;
 char* pstrdup (char*) ;
 int set_ps_display (int *,int) ;
 int start_xact_command () ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static void
exec_execute_message(const char *portal_name, long max_rows)
{
 CommandDest dest;
 DestReceiver *receiver;
 Portal portal;
 bool completed;
 char completionTag[COMPLETION_TAG_BUFSIZE];
 const char *sourceText;
 const char *prepStmtName;
 ParamListInfo portalParams;
 bool save_log_statement_stats = log_statement_stats;
 bool is_xact_command;
 bool execute_is_fetch;
 bool was_logged = 0;
 char msec_str[32];


 dest = whereToSendOutput;
 if (dest == DestRemote)
  dest = DestRemoteExecute;

 portal = GetPortalByName(portal_name);
 if (!PortalIsValid(portal))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_CURSOR),
     errmsg("portal \"%s\" does not exist", portal_name)));





 if (portal->commandTag == ((void*)0))
 {
  Assert(portal->stmts == NIL);
  NullCommand(dest);
  return;
 }


 is_xact_command = IsTransactionStmtList(portal->stmts);






 if (is_xact_command)
 {
  sourceText = pstrdup(portal->sourceText);
  if (portal->prepStmtName)
   prepStmtName = pstrdup(portal->prepStmtName);
  else
   prepStmtName = "<unnamed>";





  portalParams = ((void*)0);
 }
 else
 {
  sourceText = portal->sourceText;
  if (portal->prepStmtName)
   prepStmtName = portal->prepStmtName;
  else
   prepStmtName = "<unnamed>";
  portalParams = portal->portalParams;
 }




 debug_query_string = sourceText;

 pgstat_report_activity(STATE_RUNNING, sourceText);

 set_ps_display(portal->commandTag, 0);

 if (save_log_statement_stats)
  ResetUsage();

 BeginCommand(portal->commandTag, dest);





 receiver = CreateDestReceiver(dest);
 if (dest == DestRemoteExecute)
  SetRemoteDestReceiverParams(receiver, portal);





 start_xact_command();







 execute_is_fetch = !portal->atStart;


 if (check_log_statement(portal->stmts))
 {
  ereport(LOG,
    (errmsg("%s %s%s%s: %s",
      execute_is_fetch ?
      _("execute fetch from") :
      _("execute"),
      prepStmtName,
      *portal_name ? "/" : "",
      *portal_name ? portal_name : "",
      sourceText),
     errhidestmt(1),
     errdetail_params(portalParams)));
  was_logged = 1;
 }





 if (IsAbortedTransactionBlockState() &&
  !IsTransactionExitStmtList(portal->stmts))
  ereport(ERROR,
    (errcode(ERRCODE_IN_FAILED_SQL_TRANSACTION),
     errmsg("current transaction is aborted, "
      "commands ignored until end of transaction block"),
     errdetail_abort()));


 CHECK_FOR_INTERRUPTS();




 if (max_rows <= 0)
  max_rows = FETCH_ALL;

 completed = PortalRun(portal,
        max_rows,
        1,
        !execute_is_fetch && max_rows == FETCH_ALL,
        receiver,
        receiver,
        completionTag);

 receiver->rDestroy(receiver);

 if (completed)
 {
  if (is_xact_command)
  {




   finish_xact_command();
  }
  else
  {




   CommandCounterIncrement();





   disable_statement_timeout();
  }


  EndCommand(completionTag, dest);
 }
 else
 {

  if (whereToSendOutput == DestRemote)
   pq_putemptymessage('s');
 }




 switch (check_log_duration(msec_str, was_logged))
 {
  case 1:
   ereport(LOG,
     (errmsg("duration: %s ms", msec_str),
      errhidestmt(1)));
   break;
  case 2:
   ereport(LOG,
     (errmsg("duration: %s ms  %s %s%s%s: %s",
       msec_str,
       execute_is_fetch ?
       _("execute fetch from") :
       _("execute"),
       prepStmtName,
       *portal_name ? "/" : "",
       *portal_name ? portal_name : "",
       sourceText),
      errhidestmt(1),
      errdetail_params(portalParams)));
   break;
 }

 if (save_log_statement_stats)
  ShowUsage("EXECUTE MESSAGE STATISTICS");

 debug_query_string = ((void*)0);
}
