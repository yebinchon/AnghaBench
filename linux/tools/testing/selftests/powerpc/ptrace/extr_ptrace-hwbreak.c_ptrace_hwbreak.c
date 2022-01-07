
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int SKIP_IF (int) ;
 scalar_t__ child_pid ;
 int dawr_present () ;
 scalar_t__ fork () ;
 int get_dbginfo () ;
 int hwbreak_present () ;
 int launch_tests (int) ;
 int trigger_tests () ;
 int wait (int *) ;

__attribute__((used)) static int ptrace_hwbreak(void)
{
 pid_t pid;
 int ret;
 bool dawr;

 pid = fork();
 if (!pid) {
  trigger_tests();
  return 0;
 }

 wait(((void*)0));

 child_pid = pid;

 get_dbginfo();
 SKIP_IF(!hwbreak_present());
 dawr = dawr_present();

 ret = launch_tests(dawr);

 wait(((void*)0));

 return ret;
}
