
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static unsigned
Field_combined3e2c5767_fld65xt_flix64_slot2_Slot_xt_flix64_slot2_get (const xtensa_insnbuf insn)
{
  unsigned tie_t = 0;
  tie_t = (tie_t << 4) | ((insn[0] << 20) >> 28);
  tie_t = (tie_t << 2) | ((insn[0] << 25) >> 30);
  tie_t = (tie_t << 4) | ((insn[0] << 28) >> 28);
  return tie_t;
}
