
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nerrs ;
 int test_ptrace_syscall_restart () ;

int ptrace_syscall(void)
{
 test_ptrace_syscall_restart();

 return nerrs;
}
