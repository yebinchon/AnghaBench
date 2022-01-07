
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_sys_exit () ;
 int call_sys_fork () ;
 int call_sys_write (char*) ;
 int loop (char*) ;

void user_process()
{
 call_sys_write("User process\n\r");
 int pid = call_sys_fork();
 if (pid < 0) {
  call_sys_write("Error during fork\n\r");
  call_sys_exit();
  return;
 }
 if (pid == 0){
  loop("abcde");
 } else {
  loop("12345");
 }
}
