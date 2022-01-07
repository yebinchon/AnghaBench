
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef int ELzmaStatus ;
typedef int Byte ;


 scalar_t__ LZMA86_HEADER_SIZE ;
 int LZMA_FINISH_ANY ;
 int LZMA_PROPS_SIZE ;
 scalar_t__ LzmaDecode (int*,scalar_t__*,int const*,scalar_t__*,int const*,int ,int ,int *,TYPE_1__*) ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_ERROR_UNSUPPORTED ;
 scalar_t__ SZ_OK ;
 int SzAlloc ;
 int SzFree ;
 int x86_Convert (int*,scalar_t__,int ,int *,int ) ;
 int x86_Convert_Init (int ) ;

SRes Lzma86_Decode(Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen)
{
  ISzAlloc g_Alloc = { SzAlloc, SzFree };
  SRes res;
  int useFilter;
  SizeT inSizePure;
  ELzmaStatus status;

  if (*srcLen < LZMA86_HEADER_SIZE)
    return SZ_ERROR_INPUT_EOF;

  useFilter = src[0];

  if (useFilter > 1)
  {
    *destLen = 0;
    return SZ_ERROR_UNSUPPORTED;
  }

  inSizePure = *srcLen - LZMA86_HEADER_SIZE;
  res = LzmaDecode(dest, destLen, src + LZMA86_HEADER_SIZE, &inSizePure,
      src + 1, LZMA_PROPS_SIZE, LZMA_FINISH_ANY, &status, &g_Alloc);
  *srcLen = inSizePure + LZMA86_HEADER_SIZE;
  if (res != SZ_OK)
    return res;
  if (useFilter == 1)
  {
    UInt32 x86State;
    x86_Convert_Init(x86State);
    x86_Convert(dest, *destLen, 0, &x86State, 0);
  }
  return SZ_OK;
}
