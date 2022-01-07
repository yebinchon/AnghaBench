
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pgpid_t ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int _ (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fopen (int ,char*) ;
 int fscanf (int *,char*,long*) ;
 scalar_t__ ftell (int *) ;
 int pg_data ;
 int pid_file ;
 int progname ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (scalar_t__) ;
 int version_file ;
 int write_stderr (int ,int ,int ,...) ;

__attribute__((used)) static pgpid_t
get_pgpid(bool is_status_request)
{
 FILE *pidf;
 long pid;
 struct stat statbuf;

 if (stat(pg_data, &statbuf) != 0)
 {
  if (errno == ENOENT)
   write_stderr(_("%s: directory \"%s\" does not exist\n"), progname,
       pg_data);
  else
   write_stderr(_("%s: could not access directory \"%s\": %s\n"), progname,
       pg_data, strerror(errno));






  exit(is_status_request ? 4 : 1);
 }

 if (stat(version_file, &statbuf) != 0 && errno == ENOENT)
 {
  write_stderr(_("%s: directory \"%s\" is not a database cluster directory\n"),
      progname, pg_data);
  exit(is_status_request ? 4 : 1);
 }

 pidf = fopen(pid_file, "r");
 if (pidf == ((void*)0))
 {

  if (errno == ENOENT)
   return 0;
  else
  {
   write_stderr(_("%s: could not open PID file \"%s\": %s\n"),
       progname, pid_file, strerror(errno));
   exit(1);
  }
 }
 if (fscanf(pidf, "%ld", &pid) != 1)
 {

  if (ftell(pidf) == 0 && feof(pidf))
   write_stderr(_("%s: the PID file \"%s\" is empty\n"),
       progname, pid_file);
  else
   write_stderr(_("%s: invalid data in PID file \"%s\"\n"),
       progname, pid_file);
  exit(1);
 }
 fclose(pidf);
 return (pgpid_t) pid;
}
