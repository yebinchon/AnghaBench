
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ user_syscall_nr; int user_arg0; int user_arg1; int user_arg2; int user_arg3; int user_arg4; int user_arg5; scalar_t__ user_ip; } ;
typedef scalar_t__ pid_t ;


 int PTRACE_CONT ;
 int PTRACE_GETREGS ;
 int PTRACE_SETREGS ;
 int PTRACE_SYSEMU ;
 int PTRACE_TRACEME ;
 int SIGSTOP ;
 scalar_t__ SYS_getpid ;
 scalar_t__ SYS_gettid ;
 int SYS_tgkill ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSTOPPED (int) ;
 int _exit (int ) ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int nerrs ;
 int printf (char*,...) ;
 scalar_t__ ptrace (int ,scalar_t__,int ,struct pt_regs*) ;
 scalar_t__ syscall (scalar_t__,...) ;
 int wait_trap (scalar_t__) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void test_ptrace_syscall_restart(void)
{
 int status;
 struct pt_regs regs;
 pid_t chld;

 printf("[RUN]\tptrace-induced syscall restart\n");

 chld = fork();
 if (chld < 0)
  err(1, "fork");
 if (chld == 0) {
  if (ptrace(PTRACE_TRACEME, 0, 0, 0) != 0)
   err(1, "PTRACE_TRACEME");

  pid_t pid = getpid(), tid = syscall(SYS_gettid);

  printf("\tChild will make one syscall\n");
  syscall(SYS_tgkill, pid, tid, SIGSTOP);

  syscall(SYS_gettid, 10, 11, 12, 13, 14, 15);
  _exit(0);
 }



 if (waitpid(chld, &status, 0) != chld || !WIFSTOPPED(status))
  err(1, "waitpid");

 printf("[RUN]\tSYSEMU\n");
 if (ptrace(PTRACE_SYSEMU, chld, 0, 0) != 0)
  err(1, "PTRACE_SYSEMU");
 wait_trap(chld);

 if (ptrace(PTRACE_GETREGS, chld, 0, &regs) != 0)
  err(1, "PTRACE_GETREGS");





 if (regs.user_syscall_nr != SYS_gettid ||
     regs.user_arg0 != 10 || regs.user_arg1 != 11 ||
     regs.user_arg2 != 12 || regs.user_arg3 != 13 ||
     regs.user_arg4 != 14 || regs.user_arg5 != 15) {
  printf("[FAIL]\tInitial args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n",
   (unsigned long)regs.user_syscall_nr,
   (unsigned long)regs.user_arg0,
   (unsigned long)regs.user_arg1,
   (unsigned long)regs.user_arg2,
   (unsigned long)regs.user_arg3,
   (unsigned long)regs.user_arg4,
   (unsigned long)regs.user_arg5);
   nerrs++;
 } else {
  printf("[OK]\tInitial nr and args are correct\n"); }

 printf("[RUN]\tRestart the syscall (ip = 0x%lx)\n",
        (unsigned long)regs.user_ip);





 regs.user_ip -= 4;
 if (ptrace(PTRACE_SETREGS, chld, 0, &regs) != 0)
  err(1, "PTRACE_SETREGS");

 if (ptrace(PTRACE_SYSEMU, chld, 0, 0) != 0)
  err(1, "PTRACE_SYSEMU");
 wait_trap(chld);

 if (ptrace(PTRACE_GETREGS, chld, 0, &regs) != 0)
  err(1, "PTRACE_GETREGS");

 if (regs.user_syscall_nr != SYS_gettid ||
     regs.user_arg0 != 10 || regs.user_arg1 != 11 ||
     regs.user_arg2 != 12 || regs.user_arg3 != 13 ||
     regs.user_arg4 != 14 || regs.user_arg5 != 15) {
  printf("[FAIL]\tRestart nr or args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n",
   (unsigned long)regs.user_syscall_nr,
   (unsigned long)regs.user_arg0,
   (unsigned long)regs.user_arg1,
   (unsigned long)regs.user_arg2,
   (unsigned long)regs.user_arg3,
   (unsigned long)regs.user_arg4,
   (unsigned long)regs.user_arg5);
  nerrs++;
 } else {
  printf("[OK]\tRestarted nr and args are correct\n");
 }

 printf("[RUN]\tChange nr and args and restart the syscall (ip = 0x%lx)\n",
        (unsigned long)regs.user_ip);





 regs.user_syscall_nr = SYS_getpid;
 regs.user_arg0 = 20;
 regs.user_arg1 = 21;
 regs.user_arg2 = 22;
 regs.user_arg3 = 23;
 regs.user_arg4 = 24;
 regs.user_arg5 = 25;
 regs.user_ip -= 4;

 if (ptrace(PTRACE_SETREGS, chld, 0, &regs) != 0)
  err(1, "PTRACE_SETREGS");

 if (ptrace(PTRACE_SYSEMU, chld, 0, 0) != 0)
  err(1, "PTRACE_SYSEMU");
 wait_trap(chld);

 if (ptrace(PTRACE_GETREGS, chld, 0, &regs) != 0)
  err(1, "PTRACE_GETREGS");






 if (regs.user_syscall_nr != SYS_getpid
  || regs.user_arg0 != 20 || regs.user_arg1 != 21
  || regs.user_arg2 != 22 || regs.user_arg3 != 23
  || regs.user_arg4 != 24 || regs.user_arg5 != 25) {

  printf("[FAIL]\tRestart nr or args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n",
   (unsigned long)regs.user_syscall_nr,
   (unsigned long)regs.user_arg0,
   (unsigned long)regs.user_arg1,
   (unsigned long)regs.user_arg2,
   (unsigned long)regs.user_arg3,
   (unsigned long)regs.user_arg4,
   (unsigned long)regs.user_arg5);
  nerrs++;
 } else {
  printf("[OK]\tReplacement nr and args are correct\n");
 }

 if (ptrace(PTRACE_CONT, chld, 0, 0) != 0)
  err(1, "PTRACE_CONT");

 if (waitpid(chld, &status, 0) != chld)
  err(1, "waitpid");


 if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
  printf("[FAIL]\tChild failed\n");
  nerrs++;
 } else {
  printf("[OK]\tChild exited cleanly\n");
 }
}
