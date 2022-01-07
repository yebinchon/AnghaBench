
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;
typedef int RBuffer ;
 int R_ASM_ARCH_ARM ;
 int R_ASM_ARCH_MIPS ;
 int R_ASM_ARCH_PPC ;
 int R_ASM_ARCH_SPARC ;
 int R_ASM_ARCH_X86 ;




 int r_buf_read_be32_at (int *,int ) ;

int r_bin_p9_get_arch(RBuffer *b, int *bits, int *big_endian) {
 st32 a = (st32) r_buf_read_be32_at (b, 0);
 if (bits) {
  *bits = 32;
 }
 if (big_endian) {
  *big_endian = 0;
 }
 switch (a) {
 case 137:
  return R_ASM_ARCH_X86;
 case 130:
  if (bits) {
   *bits = 64;
  }
  return R_ASM_ARCH_PPC;
 case 131:
  if (bits) {
   *bits = 64;
  }
  return R_ASM_ARCH_X86;
 case 136:
  return R_ASM_ARCH_SPARC;
 case 129:
  if (bits) {
   *bits = 64;
  }
  return R_ASM_ARCH_SPARC;
 case 128:
 case 135:
 case 134:
 case 133:
  return R_ASM_ARCH_MIPS;
 case 138:
  return R_ASM_ARCH_ARM;
 case 132:
  return R_ASM_ARCH_PPC;

 }
 return 0;
}
