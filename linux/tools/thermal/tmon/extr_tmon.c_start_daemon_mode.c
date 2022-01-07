
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_IWGRP ;
 int S_IWOTH ;
 scalar_t__ chdir (char*) ;
 int close (int ) ;
 int daemon_mode ;
 int disable_tui () ;
 int exit (int ) ;
 scalar_t__ fork () ;
 scalar_t__ setsid () ;
 int sleep (int) ;
 int umask (int) ;

__attribute__((used)) static void start_daemon_mode()
{
 daemon_mode = 1;

 pid_t sid, pid = fork();
 if (pid < 0) {
  exit(EXIT_FAILURE);
 } else if (pid > 0)

  exit(EXIT_SUCCESS);


 disable_tui();


 umask(S_IWGRP | S_IWOTH);


 sid = setsid();
 if (sid < 0)
  exit(EXIT_FAILURE);


 if ((chdir("/")) < 0)
  exit(EXIT_FAILURE);


 sleep(10);

 close(STDIN_FILENO);
 close(STDOUT_FILENO);
 close(STDERR_FILENO);

}
