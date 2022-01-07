
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;


 int FAIL_IF (int ) ;
 int SA_SIGINFO ;
 int SIGSEGV ;
 int SKIP_IF (int) ;
 int fprintf (int ,char*) ;
 int getpagesize () ;
 int posix_memalign (void**,int,unsigned long) ;
 int printf (char*,...) ;
 int run_test (void*,unsigned long) ;
 int segv ;
 int sigaction (int ,struct sigaction*,int *) ;
 int stderr ;
 int syscall_available () ;

int test_anon(void)
{
 unsigned long align;
 struct sigaction act = {
  .sa_sigaction = segv,
  .sa_flags = SA_SIGINFO
 };
 void *mallocblock;
 unsigned long mallocsize;

 SKIP_IF(!syscall_available());

 if (getpagesize() != 0x10000) {
  fprintf(stderr, "Kernel page size must be 64K!\n");
  return 1;
 }

 sigaction(SIGSEGV, &act, ((void*)0));

 mallocsize = 4 * 16 * 1024 * 1024;

 FAIL_IF(posix_memalign(&mallocblock, 64 * 1024, mallocsize));

 align = (unsigned long)mallocblock;
 if (align & 0xffff)
  align = (align | 0xffff) + 1;

 mallocblock = (void *)align;

 printf("allocated malloc block of 0x%lx bytes at %p\n",
        mallocsize, mallocblock);

 printf("testing malloc block...\n");

 return run_test(mallocblock, mallocsize);
}
