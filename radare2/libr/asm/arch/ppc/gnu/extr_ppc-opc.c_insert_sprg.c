
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int PPC_OPCODE_405 ;
 int PPC_OPCODE_BOOKE ;
 char* _ (char*) ;

__attribute__((used)) static unsigned long
insert_sprg (unsigned long insn,
      long value,
      ppc_cpu_t dialect,
      const char **errmsg)
{
 if (value > 7 || (value > 3 && (dialect & (PPC_OPCODE_BOOKE | PPC_OPCODE_405)) == 0)) {
  *errmsg = _ ("invalid sprg number");
 }



 if (value <= 3 || (insn & 0x100) != 0) {
  value |= 0x10;
 }

 return insn | ((value & 0x17) << 16);
}
