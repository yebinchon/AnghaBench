
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int ZLOG_ERROR ;
 int mach_error_string (scalar_t__) ;
 int mach_task_self () ;
 int target ;
 scalar_t__ task_for_pid (int ,int ,int *) ;
 int zlog (int ,char*,int ,scalar_t__,char*) ;

int fpm_trace_ready(pid_t pid)
{
 kern_return_t kr;

 kr = task_for_pid(mach_task_self(), pid, &target);
 if (kr != KERN_SUCCESS) {
  char *msg = "";

  if (kr == KERN_FAILURE) {
   msg = " It seems that master process does not have enough privileges to trace processes.";
  }
  zlog(ZLOG_ERROR, "task_for_pid() failed: %s (%d)%s", mach_error_string(kr), kr, msg);
  return -1;
 }
 return 0;
}
