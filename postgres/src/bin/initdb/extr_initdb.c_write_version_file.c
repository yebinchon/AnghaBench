
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_BINARY_W ;
 char* PG_MAJORVERSION ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,int ) ;
 scalar_t__ fprintf (int *,char*,char*) ;
 int free (char*) ;
 int pg_data ;
 int pg_log_error (char*,char*) ;
 char* psprintf (char*,int ,...) ;

__attribute__((used)) static void
write_version_file(const char *extrapath)
{
 FILE *version_file;
 char *path;

 if (extrapath == ((void*)0))
  path = psprintf("%s/PG_VERSION", pg_data);
 else
  path = psprintf("%s/%s/PG_VERSION", pg_data, extrapath);

 if ((version_file = fopen(path, PG_BINARY_W)) == ((void*)0))
 {
  pg_log_error("could not open file \"%s\" for writing: %m", path);
  exit(1);
 }
 if (fprintf(version_file, "%s\n", PG_MAJORVERSION) < 0 ||
  fclose(version_file))
 {
  pg_log_error("could not write file \"%s\": %m", path);
  exit(1);
 }
 free(path);
}
