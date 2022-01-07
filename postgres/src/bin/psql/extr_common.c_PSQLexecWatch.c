
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* title; } ;
typedef TYPE_1__ printQueryOpt ;
typedef int instr_time ;
struct TYPE_6__ {scalar_t__ timing; int queryFout; int logfile; int db; } ;
typedef int PGresult ;


 int AcceptResult (int *) ;
 int ClearOrSaveResult (int *) ;
 double INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;






 int PQclear (int *) ;
 char* PQcmdStatus (int *) ;
 int * PQexec (int ,char const*) ;
 int PQresultStatus (int *) ;
 int PrintTiming (double) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 scalar_t__ cancel_pressed ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int pg_log_error (char*) ;
 int printQuery (int *,TYPE_1__ const*,int ,int,int ) ;
 TYPE_2__ pset ;

int
PSQLexecWatch(const char *query, const printQueryOpt *opt)
{
 PGresult *res;
 double elapsed_msec = 0;
 instr_time before;
 instr_time after;

 if (!pset.db)
 {
  pg_log_error("You are currently not connected to a database.");
  return 0;
 }

 SetCancelConn();

 if (pset.timing)
  INSTR_TIME_SET_CURRENT(before);

 res = PQexec(pset.db, query);

 ResetCancelConn();

 if (!AcceptResult(res))
 {
  ClearOrSaveResult(res);
  return 0;
 }

 if (pset.timing)
 {
  INSTR_TIME_SET_CURRENT(after);
  INSTR_TIME_SUBTRACT(after, before);
  elapsed_msec = INSTR_TIME_GET_MILLISEC(after);
 }






 if (cancel_pressed)
 {
  PQclear(res);
  return 0;
 }

 switch (PQresultStatus(res))
 {
  case 128:
   printQuery(res, opt, pset.queryFout, 0, pset.logfile);
   break;

  case 133:
   fprintf(pset.queryFout, "%s\n%s\n\n", opt->title, PQcmdStatus(res));
   break;

  case 129:
   pg_log_error("\\watch cannot be used with an empty query");
   PQclear(res);
   return -1;

  case 130:
  case 131:
  case 132:
   pg_log_error("\\watch cannot be used with COPY");
   PQclear(res);
   return -1;

  default:
   pg_log_error("unexpected result status for \\watch");
   PQclear(res);
   return -1;
 }

 PQclear(res);

 fflush(pset.queryFout);


 if (pset.timing)
  PrintTiming(elapsed_msec);

 return 1;
}
