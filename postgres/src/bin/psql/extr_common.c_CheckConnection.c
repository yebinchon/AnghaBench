
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * db; int cur_cmd_interactive; } ;


 int ConnectionUp () ;
 int EXIT_BADCONN ;
 int PQfinish (int *) ;
 int PQreset (int *) ;
 int ResetCancelConn () ;
 int SyncVariables () ;
 int UnsyncVariables () ;
 char* _ (char*) ;
 int connection_warnings (int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int pg_log_fatal (char*) ;
 TYPE_1__ pset ;
 int stderr ;

__attribute__((used)) static bool
CheckConnection(void)
{
 bool OK;

 OK = ConnectionUp();
 if (!OK)
 {
  if (!pset.cur_cmd_interactive)
  {
   pg_log_fatal("connection to server was lost");
   exit(EXIT_BADCONN);
  }

  fprintf(stderr, _("The connection to the server was lost. Attempting reset: "));
  PQreset(pset.db);
  OK = ConnectionUp();
  if (!OK)
  {
   fprintf(stderr, _("Failed.\n"));





   PQfinish(pset.db);
   pset.db = ((void*)0);
   ResetCancelConn();
   UnsyncVariables();
  }
  else
  {
   fprintf(stderr, _("Succeeded.\n"));





   SyncVariables();
   connection_warnings(0);
  }
 }

 return OK;
}
