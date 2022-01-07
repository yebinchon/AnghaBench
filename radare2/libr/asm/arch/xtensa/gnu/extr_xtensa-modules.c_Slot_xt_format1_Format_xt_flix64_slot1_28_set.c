
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Slot_xt_format1_Format_xt_flix64_slot1_28_set (xtensa_insnbuf insn,
           const xtensa_insnbuf slotbuf)
{
  insn[0] = (insn[0] & ~0xf0000000) | ((slotbuf[0] & 0xf) << 28);
  insn[1] = (insn[1] & ~0xffff) | ((slotbuf[0] & 0xffff0) >> 4);
}
