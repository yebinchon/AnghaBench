
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 unsigned long COUNT ;
 unsigned long DSCR_MAX ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int execlp (int ,int ,char*,char*,int *) ;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*) ;
 unsigned long get_default_dscr () ;
 int perror (char*) ;
 int prog ;
 int set_dscr (unsigned long) ;
 int set_dscr_usr (unsigned long) ;
 int sprintf (char*,char*,unsigned long) ;
 int stderr ;
 int waitpid (int,int*,int ) ;

int dscr_inherit_exec(void)
{
 unsigned long i, dscr = 0;
 pid_t pid;

 for (i = 0; i < COUNT; i++) {
  dscr++;
  if (dscr > DSCR_MAX)
   dscr = 0;

  if (dscr == get_default_dscr())
   continue;

  if (i % 2 == 0)
   set_dscr_usr(dscr);
  else
   set_dscr(dscr);

  pid = fork();
  if (pid == -1) {
   perror("fork() failed");
   exit(1);
  } else if (pid) {
   int status;

   if (waitpid(pid, &status, 0) == -1) {
    perror("waitpid() failed");
    exit(1);
   }

   if (!WIFEXITED(status)) {
    fprintf(stderr, "Child didn't exit cleanly\n");
    exit(1);
   }

   if (WEXITSTATUS(status) != 0) {
    fprintf(stderr, "Child didn't exit cleanly\n");
    return 1;
   }
  } else {
   char dscr_str[16];

   sprintf(dscr_str, "%ld", dscr);
   execlp(prog, prog, "exec", dscr_str, ((void*)0));
   exit(1);
  }
 }
 return 0;
}
