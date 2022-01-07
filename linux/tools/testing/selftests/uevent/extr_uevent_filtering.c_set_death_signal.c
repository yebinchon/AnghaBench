
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PR_SET_PDEATHSIG ;
 int SIGKILL ;
 int getpid () ;
 int getppid () ;
 int kill (int,int ) ;
 int prctl (int ,int ,int ,int ,int ) ;

int set_death_signal(void)
{
 int ret;
 pid_t ppid;

 ret = prctl(PR_SET_PDEATHSIG, SIGKILL, 0, 0, 0);


 ppid = getppid();
 if (ppid == 1) {
  pid_t self;

  self = getpid();
  ret = kill(self, SIGKILL);
 }

 if (ret < 0)
  return -1;

 return 0;
}
