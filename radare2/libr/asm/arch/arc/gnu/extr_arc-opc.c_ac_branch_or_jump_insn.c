
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;


 int I (int) ;

int
ac_branch_or_jump_insn(arc_insn insn, int compact_insn_16)
{

  return ((!compact_insn_16 && ((insn & I(-1)) == I(0x4)) &&
          (((insn >> 18) & 0xf) == 0x8)) ||
   (compact_insn_16 && ((insn & I(-1)) == I(0xf))) ||
   (!compact_insn_16 && ((insn & I(-1)) == I(0x1))) ||
   (compact_insn_16 && ((insn & I(-1)) == I(0x1f))) ||
   (!compact_insn_16 && ((insn & I(-1)) == I(0x0))) ||
   (compact_insn_16 && ((insn & I(-1)) == I(0x1e))));
}
