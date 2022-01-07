
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_sys_clone (unsigned long,unsigned long,unsigned long) ;
 int call_sys_exit () ;
 unsigned long call_sys_malloc () ;
 int call_sys_priority (int,int) ;
 int call_sys_write (char*) ;
 int printf (char*) ;
 int tfp_sprintf (char*,char*) ;
 int user_process1 ;

void user_process(){
 char buf[30] = {0};
 tfp_sprintf(buf, "User process started\n\r");
 call_sys_write(buf);
 unsigned long stack = call_sys_malloc();
 if (stack < 0) {
  printf("Error while allocating stack for process 1\n\r");
  return;
 }
 int err = call_sys_clone((unsigned long)&user_process1, (unsigned long)"12345", stack);
 if (err < 0){
  printf("Error while clonning process 1\n\r");
  return;
 }
 stack = call_sys_malloc();
 if (stack < 0) {
  printf("Error while allocating stack for process 1\n\r");
  return;
 }
 err = call_sys_clone((unsigned long)&user_process1, (unsigned long)"abcd", stack);
 if (err < 0){
  printf("Error while clonning process 2\n\r");
  return;
 }

 call_sys_priority(err, 0xa);
 call_sys_exit();
}
