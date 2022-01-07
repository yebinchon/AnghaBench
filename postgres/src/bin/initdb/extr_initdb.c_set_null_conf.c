
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_BINARY_W ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,int ) ;
 int free (char*) ;
 int pg_data ;
 int pg_log_error (char*,char*) ;
 char* psprintf (char*,int ) ;

__attribute__((used)) static void
set_null_conf(void)
{
 FILE *conf_file;
 char *path;

 path = psprintf("%s/postgresql.conf", pg_data);
 conf_file = fopen(path, PG_BINARY_W);
 if (conf_file == ((void*)0))
 {
  pg_log_error("could not open file \"%s\" for writing: %m", path);
  exit(1);
 }
 if (fclose(conf_file))
 {
  pg_log_error("could not write file \"%s\": %m", path);
  exit(1);
 }
 free(path);
}
