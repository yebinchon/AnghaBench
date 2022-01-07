
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long opcode; } ;


 TYPE_1__ dec_insn ;

__attribute__((used)) static unsigned long
extract_off18 ()
{
  unsigned long o1, o2, o3, o4;
  unsigned long val = dec_insn.opcode;

  o1 = (val & 0x003f0000) >> 16;
  o2 = (val & 0xf0000000) >> 22;
  o3 = (val & 0x03c00000) >> 12;
  o4 = (val & 0x0000f000) << 2;
  return o1 | o2 | o3 | o4;
}
