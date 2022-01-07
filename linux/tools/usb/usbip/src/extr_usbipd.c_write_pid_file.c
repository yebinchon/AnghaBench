
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int dbg (char*,scalar_t__) ;
 int err (char*,scalar_t__,int ,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (scalar_t__,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 scalar_t__ pid_file ;
 int strerror (int ) ;

__attribute__((used)) static void write_pid_file(void)
{
 if (pid_file) {
  dbg("creating pid file %s", pid_file);
  FILE *fp;

  fp = fopen(pid_file, "w");
  if (!fp) {
   err("pid_file: %s: %d (%s)",
       pid_file, errno, strerror(errno));
   return;
  }
  fprintf(fp, "%d\n", getpid());
  fclose(fp);
 }
}
