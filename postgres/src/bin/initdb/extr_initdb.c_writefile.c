
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 int pg_log_error (char*,char*) ;

__attribute__((used)) static void
writefile(char *path, char **lines)
{
 FILE *out_file;
 char **line;

 if ((out_file = fopen(path, "w")) == ((void*)0))
 {
  pg_log_error("could not open file \"%s\" for writing: %m", path);
  exit(1);
 }
 for (line = lines; *line != ((void*)0); line++)
 {
  if (fputs(*line, out_file) < 0)
  {
   pg_log_error("could not write file \"%s\": %m", path);
   exit(1);
  }
  free(*line);
 }
 if (fclose(out_file))
 {
  pg_log_error("could not write file \"%s\": %m", path);
  exit(1);
 }
}
