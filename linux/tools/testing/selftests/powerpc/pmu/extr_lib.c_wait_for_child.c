
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int perror (char*) ;
 int waitpid (int ,int*,int ) ;

int wait_for_child(pid_t child_pid)
{
 int rc;

 if (waitpid(child_pid, &rc, 0) == -1) {
  perror("waitpid");
  return 1;
 }

 if (WIFEXITED(rc))
  rc = WEXITSTATUS(rc);
 else
  rc = 1;

 return rc;
}
