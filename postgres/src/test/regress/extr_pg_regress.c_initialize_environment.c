
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 char* _ (char*) ;
 int convert_sourcefiles () ;
 int doputenv (char*,char*) ;
 char* encoding ;
 void* getenv (char*) ;
 char* hostname ;
 int load_resultmap () ;
 char* make_temp_sockdir () ;
 scalar_t__ nolocale ;
 int port ;
 int printf (char*,...) ;
 char* psprintf (char*,char const*,char const*) ;
 int putenv (char*) ;
 char* sockdir ;
 int sprintf (char*,char*,int) ;
 scalar_t__ temp_instance ;
 int unsetenv (char*) ;
 char* user ;

__attribute__((used)) static void
initialize_environment(void)
{




 putenv("PGAPPNAME=pg_regress");

 if (nolocale)
 {



  unsetenv("LC_COLLATE");
  unsetenv("LC_CTYPE");
  unsetenv("LC_MONETARY");
  unsetenv("LC_NUMERIC");
  unsetenv("LC_TIME");
  unsetenv("LANG");
 }







 unsetenv("LANGUAGE");
 unsetenv("LC_ALL");
 putenv("LC_MESSAGES=C");




 if (encoding)
  doputenv("PGCLIENTENCODING", encoding);
 else
  unsetenv("PGCLIENTENCODING");




 putenv("PGTZ=PST8PDT");
 putenv("PGDATESTYLE=Postgres, MDY");






 {
  const char *my_pgoptions = "-c intervalstyle=postgres_verbose";
  const char *old_pgoptions = getenv("PGOPTIONS");
  char *new_pgoptions;

  if (!old_pgoptions)
   old_pgoptions = "";
  new_pgoptions = psprintf("PGOPTIONS=%s %s",
         old_pgoptions, my_pgoptions);
  putenv(new_pgoptions);
 }

 if (temp_instance)
 {







  unsetenv("PGDATABASE");
  unsetenv("PGUSER");
  unsetenv("PGSERVICE");
  unsetenv("PGSSLMODE");
  unsetenv("PGREQUIRESSL");
  unsetenv("PGCONNECT_TIMEOUT");
  unsetenv("PGDATA");
  Assert(hostname != ((void*)0));
  doputenv("PGHOST", hostname);

  unsetenv("PGHOSTADDR");
  if (port != -1)
  {
   char s[16];

   sprintf(s, "%d", port);
   doputenv("PGPORT", s);
  }
 }
 else
 {
  const char *pghost;
  const char *pgport;





  if (hostname != ((void*)0))
  {
   doputenv("PGHOST", hostname);
   unsetenv("PGHOSTADDR");
  }
  if (port != -1)
  {
   char s[16];

   sprintf(s, "%d", port);
   doputenv("PGPORT", s);
  }
  if (user != ((void*)0))
   doputenv("PGUSER", user);







  unsetenv("PGDATABASE");




  pghost = getenv("PGHOST");
  pgport = getenv("PGPORT");

  if (!pghost)
   pghost = "localhost";


  if (pghost && pgport)
   printf(_("(using postmaster on %s, port %s)\n"), pghost, pgport);
  if (pghost && !pgport)
   printf(_("(using postmaster on %s, default port)\n"), pghost);
  if (!pghost && pgport)
   printf(_("(using postmaster on Unix socket, port %s)\n"), pgport);
  if (!pghost && !pgport)
   printf(_("(using postmaster on Unix socket, default port)\n"));
 }

 convert_sourcefiles();
 load_resultmap();
}
