
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_WAIT ;
 int FUTEX_WAKE ;
 int SYS_futex ;
 int ftx ;
 int nerrs ;
 int printf (char*,...) ;
 unsigned long rdgsbase () ;
 scalar_t__ remote_base ;
 int syscall (int ,int*,int ,int,int *,int *,int ) ;
 int wrgsbase (unsigned long) ;

void test_wrbase(unsigned short index, unsigned long base)
{
 unsigned short newindex;
 unsigned long newbase;

 printf("[RUN]\tGS = 0x%hx, GSBASE = 0x%lx\n", index, base);

 asm volatile ("mov %0, %%gs" : : "rm" (index));
 wrgsbase(base);

 remote_base = 0;
 ftx = 1;
 syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);
 while (ftx != 0)
  syscall(SYS_futex, &ftx, FUTEX_WAIT, 1, ((void*)0), ((void*)0), 0);

 asm volatile ("mov %%gs, %0" : "=rm" (newindex));
 newbase = rdgsbase();

 if (newindex == index && newbase == base) {
  printf("[OK]\tIndex and base were preserved\n");
 } else {
  printf("[FAIL]\tAfter switch, GS = 0x%hx and GSBASE = 0x%lx\n",
         newindex, newbase);
  nerrs++;
 }
}
