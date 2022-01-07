
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Slot_xt_format1_Format_xt_flix64_slot2_48_get (const xtensa_insnbuf insn,
           xtensa_insnbuf slotbuf)
{
  slotbuf[1] = 0;
  slotbuf[0] = ((insn[1] & 0xffff0000) >> 16);
}
