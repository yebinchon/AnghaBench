
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;
typedef int uint32 ;



__attribute__((used)) static void
Field_combined3e2c5767_fld93xt_flix64_slot3_Slot_xt_flix64_slot3_set (xtensa_insnbuf insn, uint32 val)
{
  uint32 tie_t;
  tie_t = (val << 5) >> 5;
  insn[0] = (insn[0] & ~0x7ffffff) | (tie_t << 0);
  tie_t = (val << 2) >> 29;
  insn[1] = (insn[1] & ~0x7) | (tie_t << 0);
}
