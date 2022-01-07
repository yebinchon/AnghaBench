
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int SIGSEGV ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int err (int,char*) ;
 int errno ;
 int fork () ;
 scalar_t__ iopl (int) ;
 int jmpbuf ;
 scalar_t__ nerrs ;
 int printf (char*,...) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int sethandler (int ,int ,int ) ;
 scalar_t__ setresuid (int,int,int) ;
 int sigsegv ;
 scalar_t__ sigsetjmp (int ,int) ;
 int waitpid (int,int*,int ) ;

int main(void)
{
 cpu_set_t cpuset;
 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0)
  err(1, "sched_setaffinity to CPU 0");


 if (iopl(3) != 0) {
  printf("[OK]\tiopl(3) failed (%d) -- try running as root\n",
         errno);
  return 0;
 }


 if (iopl(0) != 0)
  err(1, "iopl(0)");

 pid_t child = fork();
 if (child == -1)
  err(1, "fork");

 if (child == 0) {
  printf("\tchild: set IOPL to 3\n");
  if (iopl(3) != 0)
   err(1, "iopl");

  printf("[RUN]\tchild: write to 0x80\n");
  asm volatile ("outb %%al, $0x80" : : "a" (0));

  return 0;
 } else {
  int status;
  if (waitpid(child, &status, 0) != child ||
      !WIFEXITED(status)) {
   printf("[FAIL]\tChild died\n");
   nerrs++;
  } else if (WEXITSTATUS(status) != 0) {
   printf("[FAIL]\tChild failed\n");
   nerrs++;
  } else {
   printf("[OK]\tChild succeeded\n");
  }
 }

 printf("[RUN]\tparent: write to 0x80 (should fail)\n");

 sethandler(SIGSEGV, sigsegv, 0);
 if (sigsetjmp(jmpbuf, 1) != 0) {
  printf("[OK]\twrite was denied\n");
 } else {
  asm volatile ("outb %%al, $0x80" : : "a" (0));
  printf("[FAIL]\twrite was allowed\n");
  nerrs++;
 }


 printf("\tiopl(3)\n");
 if (iopl(3) != 0)
  err(1, "iopl(3)");

 printf("\tDrop privileges\n");
 if (setresuid(1, 1, 1) != 0) {
  printf("[WARN]\tDropping privileges failed\n");
  goto done;
 }

 printf("[RUN]\tiopl(3) unprivileged but with IOPL==3\n");
 if (iopl(3) != 0) {
  printf("[FAIL]\tiopl(3) should work if iopl is already 3 even if unprivileged\n");
  nerrs++;
 }

 printf("[RUN]\tiopl(0) unprivileged\n");
 if (iopl(0) != 0) {
  printf("[FAIL]\tiopl(0) should work if iopl is already 3 even if unprivileged\n");
  nerrs++;
 }

 printf("[RUN]\tiopl(3) unprivileged\n");
 if (iopl(3) == 0) {
  printf("[FAIL]\tiopl(3) should fail if when unprivileged if iopl==0\n");
  nerrs++;
 } else {
  printf("[OK]\tFailed as expected\n");
 }

done:
 return nerrs ? 1 : 0;
}
