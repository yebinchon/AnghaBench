
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_uimm16x4_decode (uint32 *valp)
{
  unsigned uimm16x4_0, imm16_0;
  imm16_0 = *valp & 0xffff;
  uimm16x4_0 = (((0xffff) << 16) | imm16_0) << 2;
  *valp = uimm16x4_0;
  return 0;
}
