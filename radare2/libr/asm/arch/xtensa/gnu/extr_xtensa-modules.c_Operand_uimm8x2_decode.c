
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_uimm8x2_decode (uint32 *valp)
{
  unsigned uimm8x2_0, imm8_0;
  imm8_0 = *valp & 0xff;
  uimm8x2_0 = imm8_0 << 1;
  *valp = uimm8x2_0;
  return 0;
}
