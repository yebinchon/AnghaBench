
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;



__attribute__((used)) static __inline unsigned int
get_SrcA_Y1(tilegx_bundle_bits n)
{
  return (((unsigned int)(n >> 37)) & 0x3f);
}
