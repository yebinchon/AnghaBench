
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rawline ;
typedef int FILE ;


 int PG_MAJORVERSION ;
 int exit (int) ;
 int fclose (int *) ;
 int ferror (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,char const*,char*,int ) ;
 int pg_strip_crlf (char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
CheckDataVersion(void)
{
 const char *ver_file = "PG_VERSION";
 FILE *ver_fd;
 char rawline[64];

 if ((ver_fd = fopen(ver_file, "r")) == ((void*)0))
 {
  pg_log_error("could not open file \"%s\" for reading: %m",
      ver_file);
  exit(1);
 }


 if (!fgets(rawline, sizeof(rawline), ver_fd))
 {
  if (!ferror(ver_fd))
   pg_log_error("unexpected empty file \"%s\"", ver_file);
  else
   pg_log_error("could not read file \"%s\": %m", ver_file);
  exit(1);
 }


 (void) pg_strip_crlf(rawline);

 if (strcmp(rawline, PG_MAJORVERSION) != 0)
 {
  pg_log_error("data directory is of wrong version");
  pg_log_info("File \"%s\" contains \"%s\", which is not compatible with this program's version \"%s\".",
     ver_file, rawline, PG_MAJORVERSION);
  exit(1);
 }

 fclose(ver_fd);
}
