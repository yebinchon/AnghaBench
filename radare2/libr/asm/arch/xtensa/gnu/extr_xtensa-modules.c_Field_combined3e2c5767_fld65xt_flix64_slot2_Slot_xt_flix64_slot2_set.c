
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;
typedef int uint32 ;



__attribute__((used)) static void
Field_combined3e2c5767_fld65xt_flix64_slot2_Slot_xt_flix64_slot2_set (xtensa_insnbuf insn, uint32 val)
{
  uint32 tie_t;
  tie_t = (val << 28) >> 28;
  insn[0] = (insn[0] & ~0xf) | (tie_t << 0);
  tie_t = (val << 26) >> 30;
  insn[0] = (insn[0] & ~0x60) | (tie_t << 5);
  tie_t = (val << 22) >> 28;
  insn[0] = (insn[0] & ~0xf00) | (tie_t << 8);
}
