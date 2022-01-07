
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jmpbuf ;
 int printf (char*,...) ;
 int segv_err ;
 scalar_t__ sigsetjmp (int ,int) ;
 int vgtod (int *,int *) ;
 scalar_t__ vsyscall_map_x ;

__attribute__((used)) static int test_vsys_x(void)
{

 if (vsyscall_map_x) {

  return 0;
 }

 printf("[RUN]\tMake sure that vsyscalls really page fault\n");

 bool can_exec;
 if (sigsetjmp(jmpbuf, 1) == 0) {
  vgtod(((void*)0), ((void*)0));
  can_exec = 1;
 } else {
  can_exec = 0;
 }

 if (can_exec) {
  printf("[FAIL]\tExecuting the vsyscall did not page fault\n");
  return 1;
 } else if (segv_err & (1 << 4)) {
  printf("[OK]\tExecuting the vsyscall page failed: #PF(0x%lx)\n",
         segv_err);
 } else {
  printf("[FAIL]\tExecution failed with the wrong error: #PF(0x%lx)\n",
         segv_err);
  return 1;
 }


 return 0;
}
