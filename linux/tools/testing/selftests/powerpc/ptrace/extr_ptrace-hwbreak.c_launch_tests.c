
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_debug_info {int features; } ;


 int BP_RW ;
 int BP_W ;
 int PPC_DEBUG_FEATURE_DATA_BP_RANGE ;
 int PPC_PTRACE_GETHWDBGINFO ;
 int PTRACE_CONT ;
 scalar_t__ SIGTRAP ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int child_pid ;
 int exit (int) ;
 int launch_watchpoints (char*,int ,int,struct ppc_debug_info*,int) ;
 int perror (char*) ;
 int printf (char*) ;
 int ptrace (int ,int ,int *,struct ppc_debug_info*) ;
 int wait (int*) ;

__attribute__((used)) static int launch_tests(bool dawr)
{
 char buf[1024];
 int len, i, status;

 struct ppc_debug_info dbginfo;

 i = ptrace(PPC_PTRACE_GETHWDBGINFO, child_pid, ((void*)0), &dbginfo);
 if (i) {
  perror("Can't set breakpoint info\n");
  exit(-1);
 }
 if (!(dbginfo.features & PPC_DEBUG_FEATURE_DATA_BP_RANGE))
  printf("WARNING: Kernel doesn't support PPC_PTRACE_SETHWDEBUG\n");


 for (len = 1; len <= sizeof(long); len <<= 1)
  launch_watchpoints(buf, BP_W, len, &dbginfo, dawr);


 for (len = 1; len <= sizeof(long); len <<= 1)
  launch_watchpoints(buf, BP_RW, len, &dbginfo, dawr);

 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);






 wait(&status);

 if (WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP) {
  printf("FAIL: Child process hit the breakpoint, which is not expected\n");
  ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
  return TEST_FAIL;
 }

 if (WIFEXITED(status))
  printf("Child exited normally\n");

 return TEST_PASS;
}
