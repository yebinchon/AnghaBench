
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static int
Operand_cimm8x4_decode (uint32 *valp)
{
  unsigned cimm8x4_0, imm8_0;
  imm8_0 = *valp & 0xff;
  cimm8x4_0 = (imm8_0 << 2) | 0;
  *valp = cimm8x4_0;
  return 0;
}
