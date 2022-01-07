
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int err (int,char*) ;
 int errno ;
 int expect_gp (int) ;
 int expect_ok (int) ;
 int fork () ;
 scalar_t__ ioperm (int,int,int) ;
 int nerrs ;
 int printf (char*,...) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 scalar_t__ setresuid (int,int,int) ;
 int waitpid (int,int*,int ) ;

int main(void)
{
 cpu_set_t cpuset;
 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0)
  err(1, "sched_setaffinity to CPU 0");

 expect_gp(0x80);
 expect_gp(0xed);





 printf("[RUN]\tenable 0x80\n");
 if (ioperm(0x80, 1, 1) != 0) {
  printf("[OK]\tioperm(0x80, 1, 1) failed (%d) -- try running as root\n",
         errno);
  return 0;
 }
 expect_ok(0x80);
 expect_gp(0xed);

 printf("[RUN]\tdisable 0x80\n");
 if (ioperm(0x80, 1, 0) != 0) {
  printf("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
  return 1;
 }
 expect_gp(0x80);
 expect_gp(0xed);


 if (ioperm(0x80, 1, 1) != 0) {
  printf("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
  return 1;
 }

 pid_t child = fork();
 if (child == -1)
  err(1, "fork");

 if (child == 0) {
  printf("[RUN]\tchild: check that we inherited permissions\n");
  expect_ok(0x80);
  expect_gp(0xed);
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



 printf("\tDrop privileges\n");
 if (setresuid(1, 1, 1) != 0) {
  printf("[WARN]\tDropping privileges failed\n");
  return 0;
 }

 printf("[RUN]\tdisable 0x80\n");
 if (ioperm(0x80, 1, 0) != 0) {
  printf("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
  return 1;
 }
 printf("[OK]\tit worked\n");

 printf("[RUN]\tenable 0x80 again\n");
 if (ioperm(0x80, 1, 1) == 0) {
  printf("[FAIL]\tit succeeded but should have failed.\n");
  return 1;
 }
 printf("[OK]\tit failed\n");
 return 0;
}
