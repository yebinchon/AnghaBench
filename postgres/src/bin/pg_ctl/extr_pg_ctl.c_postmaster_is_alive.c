
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ getpid () ;
 scalar_t__ getppid () ;
 scalar_t__ kill (scalar_t__,int ) ;

__attribute__((used)) static bool
postmaster_is_alive(pid_t pid)
{
 if (pid == getpid())
  return 0;

 if (pid == getppid())
  return 0;

 if (kill(pid, 0) == 0)
  return 1;
 return 0;
}
