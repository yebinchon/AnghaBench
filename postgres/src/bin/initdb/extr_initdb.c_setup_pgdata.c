
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int canonicalize_path (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 char* pg_data ;
 int pg_log_error (char*) ;
 void* pg_strdup (char*) ;
 void* pgdata_native ;
 char* psprintf (char*,char*) ;
 int putenv (char*) ;
 int stderr ;
 scalar_t__ strlen (char*) ;

void
setup_pgdata(void)
{
 char *pgdata_get_env,
      *pgdata_set_env;

 if (!pg_data)
 {
  pgdata_get_env = getenv("PGDATA");
  if (pgdata_get_env && strlen(pgdata_get_env))
  {

   pg_data = pg_strdup(pgdata_get_env);
  }
  else
  {
   pg_log_error("no data directory specified");
   fprintf(stderr,
     _("You must identify the directory where the data for this database system\n"
       "will reside.  Do this with either the invocation option -D or the\n"
       "environment variable PGDATA.\n"));
   exit(1);
  }
 }

 pgdata_native = pg_strdup(pg_data);
 canonicalize_path(pg_data);







 pgdata_set_env = psprintf("PGDATA=%s", pg_data);
 putenv(pgdata_set_env);
}
