
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;

bool
wait_result_is_any_signal(int exit_status, bool include_command_not_found)
{
 if (WIFSIGNALED(exit_status))
  return 1;
 if (WIFEXITED(exit_status) &&
  WEXITSTATUS(exit_status) > (include_command_not_found ? 125 : 128))
  return 1;
 return 0;
}
