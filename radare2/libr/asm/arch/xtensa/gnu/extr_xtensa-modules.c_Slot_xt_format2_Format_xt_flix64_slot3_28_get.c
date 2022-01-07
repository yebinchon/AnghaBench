
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Slot_xt_format2_Format_xt_flix64_slot3_28_get (const xtensa_insnbuf insn,
           xtensa_insnbuf slotbuf)
{
  slotbuf[0] = ((insn[0] & 0xf0000000) >> 28);
  slotbuf[0] = (slotbuf[0] & ~0xfffffff0) | ((insn[1] & 0xfffffff) << 4);
  slotbuf[1] = ((insn[1] & 0x70000000) >> 28);
}
