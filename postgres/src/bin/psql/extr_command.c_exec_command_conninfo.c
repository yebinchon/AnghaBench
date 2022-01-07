
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int db; } ;
typedef int PsqlScanState ;


 char* PQdb (int ) ;
 char* PQhost (int ) ;
 char* PQhostaddr (int ) ;
 char* PQport (int ) ;
 char* PQuser (int ) ;
 int PSQL_CMD_SKIP_LINE ;
 char* _ (char*) ;
 scalar_t__ is_absolute_path (char*) ;
 int printGSSInfo () ;
 int printSSLInfo () ;
 int printf (char*,...) ;
 TYPE_1__ pset ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static backslashResult
exec_command_conninfo(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
 {
  char *db = PQdb(pset.db);

  if (db == ((void*)0))
   printf(_("You are currently not connected to a database.\n"));
  else
  {
   char *host = PQhost(pset.db);
   char *hostaddr = PQhostaddr(pset.db);





   if (is_absolute_path(host))
   {
    if (hostaddr && *hostaddr)
     printf(_("You are connected to database \"%s\" as user \"%s\" on address \"%s\" at port \"%s\".\n"),
         db, PQuser(pset.db), hostaddr, PQport(pset.db));
    else
     printf(_("You are connected to database \"%s\" as user \"%s\" via socket in \"%s\" at port \"%s\".\n"),
         db, PQuser(pset.db), host, PQport(pset.db));
   }
   else
   {
    if (hostaddr && *hostaddr && strcmp(host, hostaddr) != 0)
     printf(_("You are connected to database \"%s\" as user \"%s\" on host \"%s\" (address \"%s\") at port \"%s\".\n"),
         db, PQuser(pset.db), host, hostaddr, PQport(pset.db));
    else
     printf(_("You are connected to database \"%s\" as user \"%s\" on host \"%s\" at port \"%s\".\n"),
         db, PQuser(pset.db), host, PQport(pset.db));
   }
   printSSLInfo();
   printGSSInfo();
  }
 }

 return PSQL_CMD_SKIP_LINE;
}
