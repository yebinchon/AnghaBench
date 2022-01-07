
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int I387_FCTRL_REGNUM ;
 int I387_FISEG_REGNUM ;
 int I387_FOP_REGNUM ;
 int I387_MXCSR_REGNUM ;
 int I387_ST0_REGNUM ;
 int I387_XMM0_REGNUM ;
 int NTO_REG_FLOAT ;
 int NTO_REG_GENERAL ;
 int NUM_GPREGS ;
 int X86_CPU_FXSR ;
 int i386nto_reg_offset (int) ;
 int nto_cpuinfo_flags ;
 scalar_t__ nto_cpuinfo_valid ;

int i386nto_register_area (int regno, int regset, ut32 *off) {
 *off = 0;
 if (regset == NTO_REG_GENERAL) {
  if (regno == -1)
   return NUM_GPREGS * 4;

  *off = i386nto_reg_offset (regno);
  if (*off == -1)
   return 0;
  return 4;
 } else if (regset == NTO_REG_FLOAT) {
  ut32 off_adjust, regsize, regset_size, regno_base;

  int first_four = (regno >= I387_FCTRL_REGNUM && regno <= I387_FISEG_REGNUM);
  int second_four = (regno > I387_FISEG_REGNUM && regno <= I387_FOP_REGNUM);
  int st_reg = (regno >= I387_ST0_REGNUM && regno < I387_ST0_REGNUM + 8);
  int xmm_reg = (regno >= I387_XMM0_REGNUM && regno < I387_MXCSR_REGNUM);




  regset_size = 512;

  if (first_four) {


   regsize = 2;
   off_adjust = 0;
   regno_base = I387_FCTRL_REGNUM;
  } else if (second_four) {

   regsize = 4;
   off_adjust = 8;
   regno_base = I387_FISEG_REGNUM + 1;
  } else if (st_reg) {

   regsize = 16;
   off_adjust = 32;
   regno_base = I387_ST0_REGNUM;
  } else if (xmm_reg) {

   regsize = 16;
   off_adjust = 160;
   regno_base = I387_XMM0_REGNUM;
  } else if (regno == I387_MXCSR_REGNUM) {
   regsize = 4;
   off_adjust = 24;
   regno_base = I387_MXCSR_REGNUM;
  } else {

   off_adjust = 0;
   regno_base = 0;
   regsize = regset_size;
  }
  *off = (regno != -1) ? off_adjust + (regno - regno_base) * regsize : 0;
  return regsize;
 }
 return -1;
}
