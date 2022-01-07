
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



int
aarch64_shrink_expanded_imm8 (uint64_t imm)
{
  int i, ret;
  uint32_t byte;

  ret = 0;
  for (i = 0; i < 8; i++)
    {
      byte = (imm >> (8 * i)) & 0xff;
      if (byte == 0xff)
 ret |= 1 << i;
      else if (byte != 0x00)
 return -1;
    }
  return ret;
}
