
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int FUTEX_WAKE ;

 int MAP_ANONYMOUS ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SIGILL ;
 int SIGSEGV ;
 int SYS_futex ;
 int check_gs_value (int) ;
 int clearhandler (int ) ;
 int err (int,char*) ;
 int ftx ;
 int have_fsgsbase ;
 int jmpbuf ;
 int mmap (int *,int,int,int,int,int ) ;
 int mov_0_gs (int,int) ;
 scalar_t__ nerrs ;
 int printf (char*) ;
 scalar_t__ pthread_create (int *,int ,int ,int ) ;
 scalar_t__ pthread_join (int ,int *) ;
 int rdfsbase () ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int set_gs_and_switch_to (unsigned long,unsigned short,unsigned long) ;
 int sethandler (int ,int ,int ) ;
 int shared_scratch ;
 int sigill ;
 int sigsegv ;
 scalar_t__ sigsetjmp (int ,int) ;
 int syscall (int ,int*,int ,int ,int *,int *,int ) ;
 int test_ptrace_write_gsbase () ;
 int test_unexpected_base () ;
 int test_wrbase (unsigned short,int) ;
 int threadproc ;

int main()
{
 pthread_t thread;

 shared_scratch = mmap(((void*)0), 4096, PROT_READ | PROT_WRITE,
         MAP_ANONYMOUS | MAP_SHARED, -1, 0);


 sethandler(SIGILL, sigill, 0);
 if (sigsetjmp(jmpbuf, 1) == 0) {
  rdfsbase();
  have_fsgsbase = 1;
  printf("\tFSGSBASE instructions are enabled\n");
 } else {
  printf("\tFSGSBASE instructions are disabled\n");
 }
 clearhandler(SIGILL);

 sethandler(SIGSEGV, sigsegv, 0);

 check_gs_value(0);
 check_gs_value(1);
 check_gs_value(0x200000000);
 check_gs_value(0);
 check_gs_value(0x200000000);
 check_gs_value(1);

 for (int sched = 0; sched < 2; sched++) {
  mov_0_gs(0, !!sched);
  mov_0_gs(1, !!sched);
  mov_0_gs(0x200000000, !!sched);
 }



 cpu_set_t cpuset;
 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0)
  err(1, "sched_setaffinity to CPU 0");

 if (pthread_create(&thread, 0, threadproc, 0) != 0)
  err(1, "pthread_create");

 static unsigned long bases_with_hard_zero[] = {
  0, 128, 1, 0x200000000,
 };

 for (int local = 0; local < 4; local++) {
  for (int remote = 0; remote < 4; remote++) {
   for (unsigned short s = 0; s < 5; s++) {
    unsigned short sel = s;
    if (s == 4)
     asm ("mov %%ss, %0" : "=rm" (sel));
    set_gs_and_switch_to(
     bases_with_hard_zero[local],
     sel,
     bases_with_hard_zero[remote]);
   }
  }
 }

 test_unexpected_base();

 if (have_fsgsbase) {
  unsigned short ss;

  asm volatile ("mov %%ss, %0" : "=rm" (ss));

  test_wrbase(0, 0);
  test_wrbase(0, 1);
  test_wrbase(0, 0x200000000);
  test_wrbase(0, 0xffffffffffffffff);
  test_wrbase(ss, 0);
  test_wrbase(ss, 1);
  test_wrbase(ss, 0x200000000);
  test_wrbase(ss, 0xffffffffffffffff);
 }

 ftx = 3;
 syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);

 if (pthread_join(thread, ((void*)0)) != 0)
  err(1, "pthread_join");

 test_ptrace_write_gsbase();

 return nerrs == 0 ? 0 : 1;
}
