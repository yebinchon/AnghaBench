
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;



__attribute__((used)) static __inline unsigned int
get_Opcode_Y2(tilegx_bundle_bits n)
{
  return (((n >> 26)) & 0x00000001) |
         (((unsigned int)(n >> 56)) & 0x00000002);
}
