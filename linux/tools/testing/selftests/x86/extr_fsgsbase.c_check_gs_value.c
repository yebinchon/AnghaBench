
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

__attribute__((used)) static void check_gs_value(unsigned long value)
{
 unsigned long base;
 unsigned short sel;

 printf("[RUN]\tARCH_SET_GS to 0x%lx\n", value);
 if (syscall(SYS_arch_prctl, ARCH_SET_GS, value) != 0)
  err(1, "ARCH_SET_GS");

 asm volatile ("mov %%gs, %0" : "=rm" (sel));
 base = read_base(GS);
 if (base == value) {
  printf("[OK]\tGSBASE was set as expected (selector 0x%hx)\n",
         sel);
 } else {
  nerrs++;
  printf("[FAIL]\tGSBASE was not as expected: got 0x%lx (selector 0x%hx)\n",
         base, sel);
 }

 if (syscall(SYS_arch_prctl, ARCH_GET_GS, &base) != 0)
  err(1, "ARCH_GET_GS");
 if (base == value) {
  printf("[OK]\tARCH_GET_GS worked as expected (selector 0x%hx)\n",
         sel);
 } else {
  nerrs++;
  printf("[FAIL]\tARCH_GET_GS was not as expected: got 0x%lx (selector 0x%hx)\n",
         base, sel);
 }
}
