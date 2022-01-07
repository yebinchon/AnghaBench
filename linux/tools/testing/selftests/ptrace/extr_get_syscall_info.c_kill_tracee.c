
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGKILL ;
 int errno ;
 int kill (int ,int ) ;

__attribute__((used)) static int
kill_tracee(pid_t pid)
{
 if (!pid)
  return 0;

 int saved_errno = errno;

 int rc = kill(pid, SIGKILL);

 errno = saved_errno;
 return rc;
}
