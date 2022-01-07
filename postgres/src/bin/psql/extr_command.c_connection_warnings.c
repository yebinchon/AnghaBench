
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sverbuf ;
typedef int cverbuf ;
struct TYPE_2__ {int sversion; char* progname; int db; int notty; int quiet; } ;


 char* PG_VERSION ;
 int PG_VERSION_NUM ;
 char* PQparameterStatus (int ,char*) ;
 char* _ (char*) ;
 int checkWin32Codepage () ;
 char* formatPGVersionNumber (int,int,char*,int) ;
 int printGSSInfo () ;
 int printSSLInfo () ;
 int printf (char*,char*,char*,...) ;
 TYPE_1__ pset ;

void
connection_warnings(bool in_startup)
{
 if (!pset.quiet && !pset.notty)
 {
  int client_ver = PG_VERSION_NUM;
  char cverbuf[32];
  char sverbuf[32];

  if (pset.sversion != client_ver)
  {
   const char *server_version;


   server_version = PQparameterStatus(pset.db, "server_version");

   if (!server_version)
   {
    formatPGVersionNumber(pset.sversion, 1,
           sverbuf, sizeof(sverbuf));
    server_version = sverbuf;
   }

   printf(_("%s (%s, server %s)\n"),
       pset.progname, PG_VERSION, server_version);
  }

  else if (in_startup)
   printf("%s (%s)\n", pset.progname, PG_VERSION);

  if (pset.sversion / 100 > client_ver / 100)
   printf(_("WARNING: %s major version %s, server major version %s.\n"
      "         Some psql features might not work.\n"),
       pset.progname,
       formatPGVersionNumber(client_ver, 0,
           cverbuf, sizeof(cverbuf)),
       formatPGVersionNumber(pset.sversion, 0,
           sverbuf, sizeof(sverbuf)));





  printSSLInfo();
  printGSSInfo();
 }
}
