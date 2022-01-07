
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Slot_xt_format1_Format_xt_flix64_slot0_4_set (xtensa_insnbuf insn,
           const xtensa_insnbuf slotbuf)
{
  insn[0] = (insn[0] & ~0xffffff0) | ((slotbuf[0] & 0xffffff) << 4);
}
