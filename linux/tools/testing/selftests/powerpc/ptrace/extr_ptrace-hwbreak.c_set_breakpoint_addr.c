
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_SET_DEBUGREG ;
 int child_pid ;
 int exit (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,void*) ;

__attribute__((used)) static void set_breakpoint_addr(void *addr)
{
 int ret;

 ret = ptrace(PTRACE_SET_DEBUGREG, child_pid, 0, addr);
 if (ret) {
  perror("Can't set breakpoint addr\n");
  exit(-1);
 }
}
