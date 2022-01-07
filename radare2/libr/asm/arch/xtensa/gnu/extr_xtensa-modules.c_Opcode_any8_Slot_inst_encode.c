
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Opcode_any8_Slot_inst_encode (xtensa_insnbuf slotbuf)
{
  slotbuf[0] = 0xa000;
}
