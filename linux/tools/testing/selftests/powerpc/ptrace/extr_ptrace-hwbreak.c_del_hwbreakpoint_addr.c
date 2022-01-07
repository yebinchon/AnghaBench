
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_PTRACE_DELHWDEBUG ;
 int child_pid ;
 int exit (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,int) ;

__attribute__((used)) static int del_hwbreakpoint_addr(int watchpoint_handle)
{
 int ret;

 ret = ptrace(PPC_PTRACE_DELHWDEBUG, child_pid, 0, watchpoint_handle);
 if (ret < 0) {
  perror("Can't delete hw breakpoint\n");
  exit(-1);
 }
 return ret;
}
