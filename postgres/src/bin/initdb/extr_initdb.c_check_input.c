
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int S_ISREG (int ) ;
 char* _ (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int pg_log_error (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;

__attribute__((used)) static void
check_input(char *path)
{
 struct stat statbuf;

 if (stat(path, &statbuf) != 0)
 {
  if (errno == ENOENT)
  {
   pg_log_error("file \"%s\" does not exist", path);
   fprintf(stderr,
     _("This might mean you have a corrupted installation or identified\n"
       "the wrong directory with the invocation option -L.\n"));
  }
  else
  {
   pg_log_error("could not access file \"%s\": %m", path);
   fprintf(stderr,
     _("This might mean you have a corrupted installation or identified\n"
       "the wrong directory with the invocation option -L.\n"));
  }
  exit(1);
 }
 if (!S_ISREG(statbuf.st_mode))
 {
  pg_log_error("file \"%s\" is not a regular file", path);
  fprintf(stderr,
    _("This might mean you have a corrupted installation or identified\n"
      "the wrong directory with the invocation option -L.\n"));
  exit(1);
 }
}
