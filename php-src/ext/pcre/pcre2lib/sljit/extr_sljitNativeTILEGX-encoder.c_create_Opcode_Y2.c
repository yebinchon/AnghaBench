
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;



__attribute__((used)) static __inline tilegx_bundle_bits
create_Opcode_Y2(int num)
{
  const unsigned int n = (unsigned int)num;
  return ((n & 0x00000001) << 26) |
         (((tilegx_bundle_bits)(n & 0x00000002)) << 56);
}
