
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int fpm_mach_vm_deallocate () ;
 scalar_t__ target ;

int fpm_trace_close(pid_t pid)
{
 fpm_mach_vm_deallocate();
 target = 0;
 return 0;
}
