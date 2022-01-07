
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;



int
ac_add_reg_sdasym_insn (arc_insn insn)
{
  return ((insn & 0xf8ff0fc0) == 0x20000f80);
}
