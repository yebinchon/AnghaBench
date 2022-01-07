
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int filename; int lineno; int funcname; int cursorpos; int hide_stmt; int elevel; int * context; int hide_ctx; int internalpos; int * internalquery; int * hint; int * detail; int * detail_log; int * message; int sqlerrcode; } ;
struct TYPE_14__ {int * data; int len; } ;
struct TYPE_13__ {long backendId; int lxid; } ;
struct TYPE_12__ {char* remote_host; char* remote_port; int * database_name; int * user_name; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ErrorData ;


 int GetTopTransactionIdIfAny () ;
 long InvalidBackendId ;
 int LOG_DESTINATION_CSVLOG ;
 scalar_t__ Log_error_verbosity ;
 TYPE_11__* MyProc ;
 int MyProcPid ;
 TYPE_10__* MyProcPort ;
 scalar_t__ MyStartTime ;
 scalar_t__ PGERROR_VERBOSE ;
 char* _ (int ) ;
 scalar_t__ am_syslogger ;
 int appendBinaryStringInfo (TYPE_1__*,char const*,int) ;
 int appendCSVLiteral (TYPE_1__*,int *) ;
 int appendStringInfo (TYPE_1__*,char*,long,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int * application_name ;
 int * debug_query_string ;
 int error_severity (int ) ;
 char* formatted_log_time ;
 char* formatted_start_time ;
 char* get_ps_display (int*) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ is_log_level_output (int ,int ) ;
 int log_min_error_statement ;
 int pfree (int *) ;
 int setup_formatted_log_time () ;
 int setup_formatted_start_time () ;
 char* unpack_sql_state (int ) ;
 int write_pipe_chunks (int *,int ,int ) ;
 int write_syslogger_file (int *,int ,int ) ;

__attribute__((used)) static void
write_csvlog(ErrorData *edata)
{
 StringInfoData buf;
 bool print_stmt = 0;


 static long log_line_number = 0;


 static int log_my_pid = 0;






 if (log_my_pid != MyProcPid)
 {
  log_line_number = 0;
  log_my_pid = MyProcPid;
  formatted_start_time[0] = '\0';
 }
 log_line_number++;

 initStringInfo(&buf);
 if (formatted_log_time[0] == '\0')
  setup_formatted_log_time();

 appendStringInfoString(&buf, formatted_log_time);
 appendStringInfoChar(&buf, ',');


 if (MyProcPort)
  appendCSVLiteral(&buf, MyProcPort->user_name);
 appendStringInfoChar(&buf, ',');


 if (MyProcPort)
  appendCSVLiteral(&buf, MyProcPort->database_name);
 appendStringInfoChar(&buf, ',');


 if (MyProcPid != 0)
  appendStringInfo(&buf, "%d", MyProcPid);
 appendStringInfoChar(&buf, ',');


 if (MyProcPort && MyProcPort->remote_host)
 {
  appendStringInfoChar(&buf, '"');
  appendStringInfoString(&buf, MyProcPort->remote_host);
  if (MyProcPort->remote_port && MyProcPort->remote_port[0] != '\0')
  {
   appendStringInfoChar(&buf, ':');
   appendStringInfoString(&buf, MyProcPort->remote_port);
  }
  appendStringInfoChar(&buf, '"');
 }
 appendStringInfoChar(&buf, ',');


 appendStringInfo(&buf, "%lx.%x", (long) MyStartTime, MyProcPid);
 appendStringInfoChar(&buf, ',');


 appendStringInfo(&buf, "%ld", log_line_number);
 appendStringInfoChar(&buf, ',');


 if (MyProcPort)
 {
  StringInfoData msgbuf;
  const char *psdisp;
  int displen;

  initStringInfo(&msgbuf);

  psdisp = get_ps_display(&displen);
  appendBinaryStringInfo(&msgbuf, psdisp, displen);
  appendCSVLiteral(&buf, msgbuf.data);

  pfree(msgbuf.data);
 }
 appendStringInfoChar(&buf, ',');


 if (formatted_start_time[0] == '\0')
  setup_formatted_start_time();
 appendStringInfoString(&buf, formatted_start_time);
 appendStringInfoChar(&buf, ',');



 if (MyProc != ((void*)0) && MyProc->backendId != InvalidBackendId)
  appendStringInfo(&buf, "%d/%u", MyProc->backendId, MyProc->lxid);
 appendStringInfoChar(&buf, ',');


 appendStringInfo(&buf, "%u", GetTopTransactionIdIfAny());
 appendStringInfoChar(&buf, ',');


 appendStringInfoString(&buf, _(error_severity(edata->elevel)));
 appendStringInfoChar(&buf, ',');


 appendStringInfoString(&buf, unpack_sql_state(edata->sqlerrcode));
 appendStringInfoChar(&buf, ',');


 appendCSVLiteral(&buf, edata->message);
 appendStringInfoChar(&buf, ',');


 if (edata->detail_log)
  appendCSVLiteral(&buf, edata->detail_log);
 else
  appendCSVLiteral(&buf, edata->detail);
 appendStringInfoChar(&buf, ',');


 appendCSVLiteral(&buf, edata->hint);
 appendStringInfoChar(&buf, ',');


 appendCSVLiteral(&buf, edata->internalquery);
 appendStringInfoChar(&buf, ',');


 if (edata->internalpos > 0 && edata->internalquery != ((void*)0))
  appendStringInfo(&buf, "%d", edata->internalpos);
 appendStringInfoChar(&buf, ',');


 if (!edata->hide_ctx)
  appendCSVLiteral(&buf, edata->context);
 appendStringInfoChar(&buf, ',');


 if (is_log_level_output(edata->elevel, log_min_error_statement) &&
  debug_query_string != ((void*)0) &&
  !edata->hide_stmt)
  print_stmt = 1;
 if (print_stmt)
  appendCSVLiteral(&buf, debug_query_string);
 appendStringInfoChar(&buf, ',');
 if (print_stmt && edata->cursorpos > 0)
  appendStringInfo(&buf, "%d", edata->cursorpos);
 appendStringInfoChar(&buf, ',');


 if (Log_error_verbosity >= PGERROR_VERBOSE)
 {
  StringInfoData msgbuf;

  initStringInfo(&msgbuf);

  if (edata->funcname && edata->filename)
   appendStringInfo(&msgbuf, "%s, %s:%d",
        edata->funcname, edata->filename,
        edata->lineno);
  else if (edata->filename)
   appendStringInfo(&msgbuf, "%s:%d",
        edata->filename, edata->lineno);
  appendCSVLiteral(&buf, msgbuf.data);
  pfree(msgbuf.data);
 }
 appendStringInfoChar(&buf, ',');


 if (application_name)
  appendCSVLiteral(&buf, application_name);

 appendStringInfoChar(&buf, '\n');


 if (am_syslogger)
  write_syslogger_file(buf.data, buf.len, LOG_DESTINATION_CSVLOG);
 else
  write_pipe_chunks(buf.data, buf.len, LOG_DESTINATION_CSVLOG);

 pfree(buf.data);
}
