
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static unsigned
Field_s8_Slot_inst16b_get (const xtensa_insnbuf insn)
{
  unsigned tie_t = 0;
  tie_t = (tie_t << 1) | ((insn[0] << 20) >> 31);
  return tie_t;
}
