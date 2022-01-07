
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ echo_hidden; int db; scalar_t__ logfile; } ;
typedef int PGresult ;


 int AcceptResult (int *) ;
 int ClearOrSaveResult (int *) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PSQL_ECHO_HIDDEN_NOEXEC ;
 scalar_t__ PSQL_ECHO_HIDDEN_OFF ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 char* _ (char*) ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,char const*) ;
 int pg_log_error (char*) ;
 int printf (char*,char const*) ;
 TYPE_1__ pset ;
 scalar_t__ stdout ;

PGresult *
PSQLexec(const char *query)
{
 PGresult *res;

 if (!pset.db)
 {
  pg_log_error("You are currently not connected to a database.");
  return ((void*)0);
 }

 if (pset.echo_hidden != PSQL_ECHO_HIDDEN_OFF)
 {
  printf(_("********* QUERY **********\n"
     "%s\n"
     "**************************\n\n"), query);
  fflush(stdout);
  if (pset.logfile)
  {
   fprintf(pset.logfile,
     _("********* QUERY **********\n"
       "%s\n"
       "**************************\n\n"), query);
   fflush(pset.logfile);
  }

  if (pset.echo_hidden == PSQL_ECHO_HIDDEN_NOEXEC)
   return ((void*)0);
 }

 SetCancelConn();

 res = PQexec(pset.db, query);

 ResetCancelConn();

 if (!AcceptResult(res))
 {
  ClearOrSaveResult(res);
  res = ((void*)0);
 }

 return res;
}
