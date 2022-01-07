
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH_SET_GS ;
 int FUTEX_WAIT ;
 int FUTEX_WAKE ;
 int GS ;
 int SYS_arch_prctl ;
 int SYS_futex ;
 int err (int,char*) ;
 int ftx ;
 int nerrs ;
 int printf (char*,...) ;
 unsigned long read_base (int ) ;
 scalar_t__ syscall (int ,int*,int ,...) ;

__attribute__((used)) static void test_unexpected_base(void)
{
 unsigned long base;

 printf("[RUN]\tARCH_SET_GS(0), clear gs, then manipulate GSBASE in a different thread\n");
 if (syscall(SYS_arch_prctl, ARCH_SET_GS, 0) != 0)
  err(1, "ARCH_SET_GS");
 asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0));

 ftx = 2;
 syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);
 while (ftx != 0)
  syscall(SYS_futex, &ftx, FUTEX_WAIT, 1, ((void*)0), ((void*)0), 0);

 base = read_base(GS);
 if (base == 0) {
  printf("[OK]\tGSBASE remained 0\n");
 } else {
  nerrs++;
  printf("[FAIL]\tGSBASE changed to 0x%lx\n", base);
 }
}
