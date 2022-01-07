
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int start_table; int stop_table; int expanded; scalar_t__ prior_records; } ;
struct TYPE_9__ {TYPE_8__ topt; } ;
typedef TYPE_1__ printQueryOpt ;
typedef int int64 ;
typedef int instr_time ;
typedef int fetch_cmd ;
typedef int buf ;
struct TYPE_11__ {int fetch_count; scalar_t__ timing; int db; int vars; scalar_t__ gfname; int logfile; scalar_t__ gset_prefix; int * queryFout; scalar_t__ g_expanded; TYPE_1__ popt; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;
typedef int FILE ;


 int AcceptResult (int *) ;
 int Assert (int) ;
 int ClearOrSaveResult (int *) ;
 int ClosePager (int *) ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 char* INT64_FORMAT ;
 int INT_MAX ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 scalar_t__ PQTRANS_IDLE ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQtransactionStatus (int ) ;
 int * PageOutput (int ,TYPE_8__*) ;
 int SetResultVariables (int *,int) ;
 int SetVariable (int ,char*,char*) ;
 int StoreQueryTuple (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,char const*) ;
 scalar_t__ cancel_pressed ;
 int clearerr (int *) ;
 int disable_sigpipe_trap () ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int openQueryOutputFile (scalar_t__,int **,int*) ;
 int pclose (int *) ;
 int printQuery (int *,TYPE_1__*,int *,int,int ) ;
 TYPE_4__ pset ;
 int restore_sigpipe_trap () ;
 int snprintf (char*,int,char*,int) ;
 int * stdout ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static bool
ExecQueryUsingCursor(const char *query, double *elapsed_msec)
{
 bool OK = 1;
 PGresult *results;
 PQExpBufferData buf;
 printQueryOpt my_popt = pset.popt;
 FILE *fout;
 bool is_pipe;
 bool is_pager = 0;
 bool started_txn = 0;
 int64 total_tuples = 0;
 int ntuples;
 int fetch_count;
 char fetch_cmd[64];
 instr_time before,
    after;
 int flush_error;

 *elapsed_msec = 0;


 my_popt.topt.start_table = 1;
 my_popt.topt.stop_table = 0;
 my_popt.topt.prior_records = 0;

 if (pset.timing)
  INSTR_TIME_SET_CURRENT(before);


 if (PQtransactionStatus(pset.db) == PQTRANS_IDLE)
 {
  results = PQexec(pset.db, "BEGIN");
  OK = AcceptResult(results) &&
   (PQresultStatus(results) == PGRES_COMMAND_OK);
  ClearOrSaveResult(results);
  if (!OK)
   return 0;
  started_txn = 1;
 }


 initPQExpBuffer(&buf);
 appendPQExpBuffer(&buf, "DECLARE _psql_cursor NO SCROLL CURSOR FOR\n%s",
       query);

 results = PQexec(pset.db, buf.data);
 OK = AcceptResult(results) &&
  (PQresultStatus(results) == PGRES_COMMAND_OK);
 if (!OK)
  SetResultVariables(results, OK);
 ClearOrSaveResult(results);
 termPQExpBuffer(&buf);
 if (!OK)
  goto cleanup;

 if (pset.timing)
 {
  INSTR_TIME_SET_CURRENT(after);
  INSTR_TIME_SUBTRACT(after, before);
  *elapsed_msec += INSTR_TIME_GET_MILLISEC(after);
 }





 if (pset.gset_prefix)
  fetch_count = 2;
 else
  fetch_count = pset.fetch_count;

 snprintf(fetch_cmd, sizeof(fetch_cmd),
    "FETCH FORWARD %d FROM _psql_cursor",
    fetch_count);


 if (pset.g_expanded)
  my_popt.topt.expanded = 1;


 if (pset.gfname)
 {
  if (!openQueryOutputFile(pset.gfname, &fout, &is_pipe))
  {
   OK = 0;
   goto cleanup;
  }
  if (is_pipe)
   disable_sigpipe_trap();
 }
 else
 {
  fout = pset.queryFout;
  is_pipe = 0;
 }


 clearerr(fout);

 for (;;)
 {
  if (pset.timing)
   INSTR_TIME_SET_CURRENT(before);


  results = PQexec(pset.db, fetch_cmd);

  if (pset.timing)
  {
   INSTR_TIME_SET_CURRENT(after);
   INSTR_TIME_SUBTRACT(after, before);
   *elapsed_msec += INSTR_TIME_GET_MILLISEC(after);
  }

  if (PQresultStatus(results) != PGRES_TUPLES_OK)
  {

   if (is_pager)
   {
    ClosePager(fout);
    is_pager = 0;
   }

   OK = AcceptResult(results);
   Assert(!OK);
   SetResultVariables(results, OK);
   ClearOrSaveResult(results);
   break;
  }

  if (pset.gset_prefix)
  {

   OK = StoreQueryTuple(results);
   ClearOrSaveResult(results);
   break;
  }





  ntuples = PQntuples(results);
  total_tuples += ntuples;

  if (ntuples < fetch_count)
  {

   my_popt.topt.stop_table = 1;
  }
  else if (fout == stdout && !is_pager)
  {




   fout = PageOutput(INT_MAX, &(my_popt.topt));
   is_pager = 1;
  }

  printQuery(results, &my_popt, fout, is_pager, pset.logfile);

  ClearOrSaveResult(results);


  my_popt.topt.start_table = 0;
  my_popt.topt.prior_records += ntuples;







  flush_error = fflush(fout);
  if (ntuples < fetch_count || cancel_pressed || flush_error ||
   ferror(fout))
   break;
 }

 if (pset.gfname)
 {

  if (is_pipe)
  {
   pclose(fout);
   restore_sigpipe_trap();
  }
  else
   fclose(fout);
 }
 else if (is_pager)
 {

  ClosePager(fout);
 }

 if (OK)
 {





  char buf[32];

  SetVariable(pset.vars, "ERROR", "false");
  SetVariable(pset.vars, "SQLSTATE", "00000");
  snprintf(buf, sizeof(buf), INT64_FORMAT, total_tuples);
  SetVariable(pset.vars, "ROW_COUNT", buf);
 }

cleanup:
 if (pset.timing)
  INSTR_TIME_SET_CURRENT(before);






 results = PQexec(pset.db, "CLOSE _psql_cursor");
 if (OK)
 {
  OK = AcceptResult(results) &&
   (PQresultStatus(results) == PGRES_COMMAND_OK);
  ClearOrSaveResult(results);
 }
 else
  PQclear(results);

 if (started_txn)
 {
  results = PQexec(pset.db, OK ? "COMMIT" : "ROLLBACK");
  OK &= AcceptResult(results) &&
   (PQresultStatus(results) == PGRES_COMMAND_OK);
  ClearOrSaveResult(results);
 }

 if (pset.timing)
 {
  INSTR_TIME_SET_CURRENT(after);
  INSTR_TIME_SUBTRACT(after, before);
  *elapsed_msec += INSTR_TIME_GET_MILLISEC(after);
 }

 return OK;
}
