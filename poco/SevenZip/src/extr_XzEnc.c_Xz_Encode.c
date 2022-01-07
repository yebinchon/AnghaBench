
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SRes ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef int CXzStream ;
typedef int CXzProps ;
typedef int CLzma2WithFilters ;


 int Lzma2WithFilters_Construct (int *,int *,int *) ;
 scalar_t__ Lzma2WithFilters_Create (int *) ;
 int Lzma2WithFilters_Free (int *) ;
 scalar_t__ SZ_OK ;
 scalar_t__ Xz_Compress (int *,int *,int *,int *,int const*,int *) ;
 int Xz_Construct (int *) ;
 int Xz_Free (int *,int *) ;
 int g_Alloc ;
 int g_BigAlloc ;

SRes Xz_Encode(ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  SRes res;
  CXzStream xz;
  CLzma2WithFilters lzmaf;
  Xz_Construct(&xz);
  Lzma2WithFilters_Construct(&lzmaf, &g_Alloc, &g_BigAlloc);
  res = Lzma2WithFilters_Create(&lzmaf);
  if (res == SZ_OK)
    res = Xz_Compress(&xz, &lzmaf, outStream, inStream, props, progress);
  Lzma2WithFilters_Free(&lzmaf);
  Xz_Free(&xz, &g_Alloc);
  return res;
}
