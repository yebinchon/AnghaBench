
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int limit; int seg_32bit; int limit_in_pages; int useable; int seg_not_present; int read_exec_only; int contents; int base_addr; int entry_number; } ;
typedef int pthread_t ;
typedef int desc ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ ENOSYS ;
 int FUTEX_WAKE ;
 int SIGILL ;
 int SIGSEGV ;
 int SYS_futex ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int ftx ;
 int jmpbuf ;
 int nerrs ;
 int printf (char*,...) ;
 scalar_t__ pthread_create (int *,int ,int ,int ) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ safe_modify_ldt (int,struct user_desc*,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int sethandler (int ,int ,int ) ;
 int sigsegv ;
 scalar_t__ sigsetjmp (int ,int) ;
 int syscall (int ,int*,int ,int ,int *,int *,int ) ;
 int threadproc ;

__attribute__((used)) static void do_multicpu_tests(void)
{
 cpu_set_t cpuset;
 pthread_t thread;
 int failures = 0, iters = 5, i;
 unsigned short orig_ss;

 CPU_ZERO(&cpuset);
 CPU_SET(1, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0) {
  printf("[SKIP]\tCannot set affinity to CPU 1\n");
  return;
 }

 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0) {
  printf("[SKIP]\tCannot set affinity to CPU 0\n");
  return;
 }

 sethandler(SIGSEGV, sigsegv, 0);





 printf("[RUN]\tCross-CPU LDT invalidation\n");

 if (pthread_create(&thread, 0, threadproc, 0) != 0)
  err(1, "pthread_create");

 asm volatile ("mov %%ss, %0" : "=rm" (orig_ss));

 for (i = 0; i < 5; i++) {
  if (sigsetjmp(jmpbuf, 1) != 0)
   continue;


  while (ftx != 0)
   ;

  struct user_desc desc = {
   .entry_number = 0,
   .base_addr = 0,
   .limit = 0xfffff,
   .seg_32bit = 1,
   .contents = 0,
   .read_exec_only = 0,
   .limit_in_pages = 1,
   .seg_not_present = 0,
   .useable = 0
  };

  if (safe_modify_ldt(0x11, &desc, sizeof(desc)) != 0) {
   if (errno != ENOSYS)
    err(1, "modify_ldt");
   printf("[SKIP]\tmodify_ldt unavailable\n");
   break;
  }


  ftx = 1;
  syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);

  asm volatile ("mov %0, %%ss" : : "r" (0x7));


  ftx = 2;

  while (ftx != 0)
   ;






  failures++;
  asm volatile ("mov %0, %%ss" : : "rm" (orig_ss));
 };

 ftx = 100;
 syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);

 if (pthread_join(thread, ((void*)0)) != 0)
  err(1, "pthread_join");

 if (failures) {
  printf("[FAIL]\t%d of %d iterations failed\n", failures, iters);
  nerrs++;
 } else {
  printf("[OK]\tAll %d iterations succeeded\n", iters);
 }
}
