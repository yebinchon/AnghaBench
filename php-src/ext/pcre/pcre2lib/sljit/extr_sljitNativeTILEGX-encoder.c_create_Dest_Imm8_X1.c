
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;



__attribute__((used)) static __inline tilegx_bundle_bits
create_Dest_Imm8_X1(int num)
{
  const unsigned int n = (unsigned int)num;
  return (((tilegx_bundle_bits)(n & 0x0000003f)) << 31) |
         (((tilegx_bundle_bits)(n & 0x000000c0)) << 43);
}
