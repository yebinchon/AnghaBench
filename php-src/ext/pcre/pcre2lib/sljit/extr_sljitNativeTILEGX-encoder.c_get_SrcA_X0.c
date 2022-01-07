
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tilegx_bundle_bits ;



__attribute__((used)) static __inline unsigned int
get_SrcA_X0(tilegx_bundle_bits num)
{
  const unsigned int n = (unsigned int)num;
  return (((n >> 6)) & 0x3f);
}
