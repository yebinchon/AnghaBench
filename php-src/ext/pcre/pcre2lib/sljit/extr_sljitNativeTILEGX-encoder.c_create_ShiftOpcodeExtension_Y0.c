
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const tilegx_bundle_bits ;



__attribute__((used)) static __inline tilegx_bundle_bits
create_ShiftOpcodeExtension_Y0(int num)
{
  const unsigned int n = (unsigned int)num;
  return ((n & 0x3) << 18);
}
