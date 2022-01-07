
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int output_path ;
struct TYPE_7__ {TYPE_1__* dbs; } ;
struct TYPE_10__ {TYPE_2__ dbarr; int major_version; } ;
struct TYPE_9__ {int num_libraries; TYPE_3__* libraries; } ;
struct TYPE_8__ {char* name; size_t dbnum; } ;
struct TYPE_6__ {char* db_name; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef int LibraryInfo ;
typedef int FILE ;


 int GET_MAJOR_VERSION (int ) ;
 int MAXPGPATH ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PG_REPORT ;
 int PQclear (int *) ;
 char* PQerrorMessage (int *) ;
 int PQescapeStringConn (int *,char*,char*,int,int *) ;
 int * PQexec (int *,char*) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 char* _ (char*) ;
 int check_ok () ;
 int * connectToServer (int *,char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen_priv (char*,char*) ;
 int fprintf (int *,char*,char*,...) ;
 int library_name_compare ;
 int new_cluster ;
 TYPE_5__ old_cluster ;
 TYPE_4__ os_info ;
 int pg_fatal (char*,char*,...) ;
 int pg_log (int ,char*) ;
 int prep_status (char*) ;
 int qsort (void*,int,int,int ) ;
 int snprintf (char*,int,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;

void
check_loadable_libraries(void)
{
 PGconn *conn = connectToServer(&new_cluster, "template1");
 int libnum;
 int was_load_failure = 0;
 FILE *script = ((void*)0);
 bool found = 0;
 char output_path[MAXPGPATH];

 prep_status("Checking for presence of required libraries");

 snprintf(output_path, sizeof(output_path), "loadable_libraries.txt");







 qsort((void *) os_info.libraries, os_info.num_libraries,
    sizeof(LibraryInfo), library_name_compare);

 for (libnum = 0; libnum < os_info.num_libraries; libnum++)
 {
  char *lib = os_info.libraries[libnum].name;
  int llen = strlen(lib);
  char cmd[7 + 2 * MAXPGPATH + 1];
  PGresult *res;


  if (libnum == 0 || strcmp(lib, os_info.libraries[libnum - 1].name) != 0)
  {
   if (GET_MAJOR_VERSION(old_cluster.major_version) < 901 &&
    strcmp(lib, "$libdir/plpython") == 0)
   {
    lib = "$libdir/plpython2";
    llen = strlen(lib);
   }

   strcpy(cmd, "LOAD '");
   PQescapeStringConn(conn, cmd + strlen(cmd), lib, llen, ((void*)0));
   strcat(cmd, "'");

   res = PQexec(conn, cmd);

   if (PQresultStatus(res) != PGRES_COMMAND_OK)
   {
    found = 1;
    was_load_failure = 1;

    if (script == ((void*)0) && (script = fopen_priv(output_path, "w")) == ((void*)0))
     pg_fatal("could not open file \"%s\": %s\n",
        output_path, strerror(errno));
    fprintf(script, _("could not load library \"%s\": %s"),
      lib,
      PQerrorMessage(conn));
   }
   else
    was_load_failure = 0;

   PQclear(res);
  }

  if (was_load_failure)
   fprintf(script, _("In database: %s\n"),
     old_cluster.dbarr.dbs[os_info.libraries[libnum].dbnum].db_name);
 }

 PQfinish(conn);

 if (found)
 {
  fclose(script);
  pg_log(PG_REPORT, "fatal\n");
  pg_fatal("Your installation references loadable libraries that are missing from the\n"
     "new installation.  You can add these libraries to the new installation,\n"
     "or remove the functions using them from the old installation.  A list of\n"
     "problem libraries is in the file:\n"
     "    %s\n\n", output_path);
 }
 else
  check_ok();
}
