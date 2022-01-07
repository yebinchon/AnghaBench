
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYSINFO ;
 int do_full_int80 ;
 int do_full_vsyscall32 ;
 scalar_t__ getauxval (int ) ;
 int printf (char*) ;
 int test_ptrace_syscall_restart () ;
 int test_restart_under_ptrace () ;
 int test_sys32_regs (int ) ;
 void* vsyscall32 ;

int main()
{
 printf("[RUN]\tCheck int80 return regs\n");
 test_sys32_regs(do_full_int80);







 test_ptrace_syscall_restart();

 test_restart_under_ptrace();

 return 0;
}
