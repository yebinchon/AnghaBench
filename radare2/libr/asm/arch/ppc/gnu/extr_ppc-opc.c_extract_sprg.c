
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int PPC_OPCODE_405 ;
 int PPC_OPCODE_BOOKE ;

__attribute__((used)) static long
extract_sprg (unsigned long insn,
       ppc_cpu_t dialect,
       int *invalid)
{
  unsigned long val = (insn >> 16) & 0x1f;



  if ((val - 0x10 > 3 && (dialect & (PPC_OPCODE_BOOKE | PPC_OPCODE_405)) == 0) || (val - 0x10 > 7 && (insn & 0x100) != 0) || val <= 3 || (val & 8) != 0) {
   *invalid = 1;
  }
  return val & 7;
}
