
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISzAlloc ;
typedef int CLzma2Dec ;
typedef int Byte ;


 int Lzma2Dec_Allocate (int *,int const,int *) ;
 int SZ_ERROR_UNSUPPORTED ;

__attribute__((used)) static SRes Lzma2State_SetProps(void *pp, const Byte *props, size_t propSize, ISzAlloc *alloc)
{
  if (propSize != 1)
    return SZ_ERROR_UNSUPPORTED;
  return Lzma2Dec_Allocate((CLzma2Dec *)pp, props[0], alloc);
}
