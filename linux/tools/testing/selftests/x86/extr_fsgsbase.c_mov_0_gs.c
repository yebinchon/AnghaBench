
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH_GET_GS ;
 int ARCH_SET_GS ;
 int GS ;
 int SYS_arch_prctl ;
 int err (int,char*) ;
 int nerrs ;
 int printf (char*,unsigned long,...) ;
 unsigned long read_base (int ) ;
 scalar_t__ syscall (int ,int ,...) ;
 int usleep (int) ;

__attribute__((used)) static void mov_0_gs(unsigned long initial_base, bool schedule)
{
 unsigned long base, arch_base;

 printf("[RUN]\tARCH_SET_GS to 0x%lx then mov 0 to %%gs%s\n", initial_base, schedule ? " and schedule " : "");
 if (syscall(SYS_arch_prctl, ARCH_SET_GS, initial_base) != 0)
  err(1, "ARCH_SET_GS");

 if (schedule)
  usleep(10);

 asm volatile ("mov %0, %%gs" : : "rm" (0));
 base = read_base(GS);
 if (syscall(SYS_arch_prctl, ARCH_GET_GS, &arch_base) != 0)
  err(1, "ARCH_GET_GS");
 if (base == arch_base) {
  printf("[OK]\tGSBASE is 0x%lx\n", base);
 } else {
  nerrs++;
  printf("[FAIL]\tGSBASE changed to 0x%lx but kernel reports 0x%lx\n", base, arch_base);
 }
}
