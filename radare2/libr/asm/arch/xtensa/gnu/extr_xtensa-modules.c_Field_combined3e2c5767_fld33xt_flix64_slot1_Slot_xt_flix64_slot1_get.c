
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static unsigned
Field_combined3e2c5767_fld33xt_flix64_slot1_Slot_xt_flix64_slot1_get (const xtensa_insnbuf insn)
{
  unsigned tie_t = 0;
  tie_t = (tie_t << 6) | ((insn[0] << 14) >> 26);
  tie_t = (tie_t << 1) | ((insn[0] << 22) >> 31);
  return tie_t;
}
