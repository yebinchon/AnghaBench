
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 scalar_t__ errno ;
 int waitpid (int ,int*,int ) ;

int wait_for_pid(pid_t pid)
{
 int status, ret;

again:
 ret = waitpid(pid, &status, 0);
 if (ret == -1) {
  if (errno == EINTR)
   goto again;

  return -1;
 }

 if (!WIFEXITED(status))
  return -1;

 return WEXITSTATUS(status);
}
