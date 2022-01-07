
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;

bool
wait_result_is_signal(int exit_status, int signum)
{
 if (WIFSIGNALED(exit_status) && WTERMSIG(exit_status) == signum)
  return 1;
 if (WIFEXITED(exit_status) && WEXITSTATUS(exit_status) == 128 + signum)
  return 1;
 return 0;
}
