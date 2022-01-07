
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sverbuf ;
typedef int instr_time ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ encoding; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {scalar_t__ echo; scalar_t__ on_error_rollback; int sversion; int gdesc_flag; scalar_t__ fetch_count; int gexec_flag; int crosstab_flag; scalar_t__ encoding; int g_expanded; int ** ctv_args; int * gset_prefix; int * gfname; int vars; TYPE_2__ popt; int db; scalar_t__ timing; scalar_t__ cur_cmd_interactive; int autocommit; scalar_t__ logfile; scalar_t__ singlestep; } ;
typedef int PGresult ;
typedef int PGTransactionStatusType ;


 int ClearOrSaveResult (int *) ;
 int ConnectionUp () ;
 int DescribeQuery (char const*,double*) ;
 int ExecQueryUsingCursor (char const*,double*) ;
 double INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 scalar_t__ PGRES_COMMAND_OK ;





 int PQclear (int *) ;
 scalar_t__ PQclientEncoding (int ) ;
 int PQcmdStatus (int *) ;
 char const* PQerrorMessage (int ) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQtransactionStatus (int ) ;
 scalar_t__ PSQL_ECHO_ERRORS ;
 scalar_t__ PSQL_ECHO_QUERIES ;
 scalar_t__ PSQL_ERROR_ROLLBACK_OFF ;
 scalar_t__ PSQL_ERROR_ROLLBACK_ON ;
 int PrintNotifications () ;
 int PrintQueryResults (int *) ;
 int PrintTiming (double) ;
 int ProcessResult (int **) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 int SetVariable (int ,char*,int ) ;
 char* _ (char*) ;
 scalar_t__ cancel_pressed ;
 int command_no_begin (char const*) ;
 int fflush (scalar_t__) ;
 int * fgets (char*,int,int ) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int fprintf (scalar_t__,char*,char const*) ;
 int free (int *) ;
 int is_select_command (char const*) ;
 int lengthof (int **) ;
 int pg_encoding_to_char (scalar_t__) ;
 int pg_free (int *) ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,char const*) ;
 int pg_log_warning (char*,int ) ;
 int printf (char*,char const*) ;
 TYPE_3__ pset ;
 int puts (char const*) ;
 scalar_t__ stderr ;
 int stdin ;
 scalar_t__ stdout ;
 int strcmp (int ,char*) ;

bool
SendQuery(const char *query)
{
 PGresult *results;
 PGTransactionStatusType transaction_status;
 double elapsed_msec = 0;
 bool OK = 0;
 int i;
 bool on_error_rollback_savepoint = 0;
 static bool on_error_rollback_warning = 0;

 if (!pset.db)
 {
  pg_log_error("You are currently not connected to a database.");
  goto sendquery_cleanup;
 }

 if (pset.singlestep)
 {
  char buf[3];

  fflush(stderr);
  printf(_("***(Single step mode: verify command)*******************************************\n"
     "%s\n"
     "***(press return to proceed or enter x and return to cancel)********************\n"),
      query);
  fflush(stdout);
  if (fgets(buf, sizeof(buf), stdin) != ((void*)0))
   if (buf[0] == 'x')
    goto sendquery_cleanup;
  if (cancel_pressed)
   goto sendquery_cleanup;
 }
 else if (pset.echo == PSQL_ECHO_QUERIES)
 {
  puts(query);
  fflush(stdout);
 }

 if (pset.logfile)
 {
  fprintf(pset.logfile,
    _("********* QUERY **********\n"
      "%s\n"
      "**************************\n\n"), query);
  fflush(pset.logfile);
 }

 SetCancelConn();

 transaction_status = PQtransactionStatus(pset.db);

 if (transaction_status == 131 &&
  !pset.autocommit &&
  !command_no_begin(query))
 {
  results = PQexec(pset.db, "BEGIN");
  if (PQresultStatus(results) != PGRES_COMMAND_OK)
  {
   pg_log_info("%s", PQerrorMessage(pset.db));
   ClearOrSaveResult(results);
   ResetCancelConn();
   goto sendquery_cleanup;
  }
  ClearOrSaveResult(results);
  transaction_status = PQtransactionStatus(pset.db);
 }

 if (transaction_status == 129 &&
  pset.on_error_rollback != PSQL_ERROR_ROLLBACK_OFF &&
  (pset.cur_cmd_interactive ||
   pset.on_error_rollback == PSQL_ERROR_ROLLBACK_ON))
 {
  if (on_error_rollback_warning == 0 && pset.sversion < 80000)
  {
   char sverbuf[32];

   pg_log_warning("The server (version %s) does not support savepoints for ON_ERROR_ROLLBACK.",
         formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
   on_error_rollback_warning = 1;
  }
  else
  {
   results = PQexec(pset.db, "SAVEPOINT pg_psql_temporary_savepoint");
   if (PQresultStatus(results) != PGRES_COMMAND_OK)
   {
    pg_log_info("%s", PQerrorMessage(pset.db));
    ClearOrSaveResult(results);
    ResetCancelConn();
    goto sendquery_cleanup;
   }
   ClearOrSaveResult(results);
   on_error_rollback_savepoint = 1;
  }
 }

 if (pset.gdesc_flag)
 {

  OK = DescribeQuery(query, &elapsed_msec);
  ResetCancelConn();
  results = ((void*)0);
 }
 else if (pset.fetch_count <= 0 || pset.gexec_flag ||
    pset.crosstab_flag || !is_select_command(query))
 {

  instr_time before,
     after;

  if (pset.timing)
   INSTR_TIME_SET_CURRENT(before);

  results = PQexec(pset.db, query);


  ResetCancelConn();
  OK = ProcessResult(&results);

  if (pset.timing)
  {
   INSTR_TIME_SET_CURRENT(after);
   INSTR_TIME_SUBTRACT(after, before);
   elapsed_msec = INSTR_TIME_GET_MILLISEC(after);
  }


  if (OK && results)
   OK = PrintQueryResults(results);
 }
 else
 {

  OK = ExecQueryUsingCursor(query, &elapsed_msec);
  ResetCancelConn();
  results = ((void*)0);
 }

 if (!OK && pset.echo == PSQL_ECHO_ERRORS)
  pg_log_info("STATEMENT:  %s", query);


 if (on_error_rollback_savepoint)
 {
  const char *svptcmd = ((void*)0);

  transaction_status = PQtransactionStatus(pset.db);

  switch (transaction_status)
  {
   case 130:

    svptcmd = "ROLLBACK TO pg_psql_temporary_savepoint";
    break;

   case 131:

    break;

   case 129:







    if (results &&
     (strcmp(PQcmdStatus(results), "SAVEPOINT") == 0 ||
      strcmp(PQcmdStatus(results), "RELEASE") == 0 ||
      strcmp(PQcmdStatus(results), "ROLLBACK") == 0))
     svptcmd = ((void*)0);
    else
     svptcmd = "RELEASE pg_psql_temporary_savepoint";
    break;

   case 132:
   case 128:
   default:
    OK = 0;

    if (transaction_status != 128 || ConnectionUp())
     pg_log_error("unexpected transaction status (%d)",
         transaction_status);
    break;
  }

  if (svptcmd)
  {
   PGresult *svptres;

   svptres = PQexec(pset.db, svptcmd);
   if (PQresultStatus(svptres) != PGRES_COMMAND_OK)
   {
    pg_log_info("%s", PQerrorMessage(pset.db));
    ClearOrSaveResult(svptres);
    OK = 0;

    PQclear(results);
    ResetCancelConn();
    goto sendquery_cleanup;
   }
   PQclear(svptres);
  }
 }

 ClearOrSaveResult(results);


 if (pset.timing)
  PrintTiming(elapsed_msec);



 if (pset.encoding != PQclientEncoding(pset.db) &&
  PQclientEncoding(pset.db) >= 0)
 {

  pset.encoding = PQclientEncoding(pset.db);
  pset.popt.topt.encoding = pset.encoding;
  SetVariable(pset.vars, "ENCODING",
     pg_encoding_to_char(pset.encoding));
 }

 PrintNotifications();



sendquery_cleanup:


 if (pset.gfname)
 {
  free(pset.gfname);
  pset.gfname = ((void*)0);
 }


 pset.g_expanded = 0;


 if (pset.gset_prefix)
 {
  free(pset.gset_prefix);
  pset.gset_prefix = ((void*)0);
 }


 pset.gdesc_flag = 0;


 pset.gexec_flag = 0;


 pset.crosstab_flag = 0;
 for (i = 0; i < lengthof(pset.ctv_args); i++)
 {
  pg_free(pset.ctv_args[i]);
  pset.ctv_args[i] = ((void*)0);
 }

 return OK;
}
