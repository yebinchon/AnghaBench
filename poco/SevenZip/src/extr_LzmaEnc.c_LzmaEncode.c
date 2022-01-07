
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef int ICompressProgress ;
typedef int CLzmaEncProps ;
typedef int CLzmaEnc ;
typedef int Byte ;


 scalar_t__ LzmaEnc_Create (int *) ;
 int LzmaEnc_Destroy (int *,int *,int *) ;
 scalar_t__ LzmaEnc_MemEncode (int *,int *,int *,int const*,int ,int,int *,int *,int *) ;
 scalar_t__ LzmaEnc_SetProps (int *,int const*) ;
 scalar_t__ LzmaEnc_WriteProperties (int *,int *,int *) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;

SRes LzmaEncode(Byte *dest, SizeT *destLen, const Byte *src, SizeT srcLen,
    const CLzmaEncProps *props, Byte *propsEncoded, SizeT *propsSize, int writeEndMark,
    ICompressProgress *progress, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)LzmaEnc_Create(alloc);
  SRes res;
  if (p == 0)
    return SZ_ERROR_MEM;

  res = LzmaEnc_SetProps(p, props);
  if (res == SZ_OK)
  {
    res = LzmaEnc_WriteProperties(p, propsEncoded, propsSize);
    if (res == SZ_OK)
      res = LzmaEnc_MemEncode(p, dest, destLen, src, srcLen,
          writeEndMark, progress, alloc, allocBig);
  }

  LzmaEnc_Destroy(p, alloc, allocBig);
  return res;
}
