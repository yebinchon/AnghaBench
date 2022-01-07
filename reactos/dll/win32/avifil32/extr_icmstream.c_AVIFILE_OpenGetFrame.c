
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ biHeight; scalar_t__ biWidth; } ;
struct TYPE_22__ {int biSizeImage; int biHeight; } ;
struct TYPE_19__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_20__ {scalar_t__ fccHandler; int dwSuggestedBufferSize; TYPE_1__ rcFrame; int dwStart; } ;
struct TYPE_21__ {int lKeyFrameEvery; int dwICMFlags; TYPE_4__* lpbiPrev; TYPE_5__* lpbiOutput; int * hic; void* lpPrev; TYPE_4__* lpbiCur; void* lpCur; scalar_t__ cbOutput; TYPE_2__ sInfo; int * pg; int * pStream; } ;
typedef int * LPBITMAPINFOHEADER ;
typedef scalar_t__ LONG ;
typedef TYPE_3__ IAVIStreamImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BITMAPINFOHEADER ;


 int AVIERR_BADFORMAT ;
 int AVIERR_COMPRESSOR ;
 int AVIERR_ERROR ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int * AVIStreamGetFrame (int *,int ) ;
 int * AVIStreamGetFrameOpen (int *,int *) ;
 void* DIBPTR (TYPE_4__*) ;
 int DIBWIDTHBYTES (TYPE_4__) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 TYPE_4__* HeapReAlloc (int ,int ,TYPE_4__*,scalar_t__) ;
 scalar_t__ ICCompressBegin (int *,int *,TYPE_5__*) ;
 scalar_t__ ICCompressGetFormat (int *,int *,TYPE_5__*) ;
 scalar_t__ ICCompressGetFormatSize (int *,int *) ;
 int ICCompressGetSize (int *,int *,TYPE_5__*) ;
 scalar_t__ ICDecompressBegin (int *,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ICDecompressGetFormat (int *,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ICDecompressGetFormatSize (int *,TYPE_5__*) ;
 scalar_t__ S_OK ;
 int VIDCF_FASTTEMPORALC ;
 int assert (int ) ;
 scalar_t__ comptypeDIB ;
 int memcpy (TYPE_4__*,TYPE_5__*,scalar_t__) ;

__attribute__((used)) static HRESULT AVIFILE_OpenGetFrame(IAVIStreamImpl *This)
{
  LPBITMAPINFOHEADER lpbi;
  DWORD size;


  assert(This != ((void*)0));
  assert(This->pStream != ((void*)0));
  assert(This->pg == ((void*)0));

  This->pg = AVIStreamGetFrameOpen(This->pStream, ((void*)0));
  if (This->pg == ((void*)0))
    return AVIERR_ERROR;


  if (This->sInfo.fccHandler == comptypeDIB)
    return AVIERR_OK;

  assert(This->hic != ((void*)0));
  assert(This->lpbiOutput == ((void*)0));


  lpbi = AVIStreamGetFrame(This->pg, This->sInfo.dwStart);
  if (lpbi == ((void*)0))
    return AVIERR_MEMORY;


  size = ICCompressGetFormatSize(This->hic, lpbi);
  if ((LONG)size < (LONG)sizeof(BITMAPINFOHEADER))
    return AVIERR_COMPRESSOR;
  This->lpbiOutput = HeapAlloc(GetProcessHeap(), 0, size);
  if (This->lpbiOutput == ((void*)0))
    return AVIERR_MEMORY;
  This->cbOutput = size;

  if (ICCompressGetFormat(This->hic, lpbi, This->lpbiOutput) < S_OK)
    return AVIERR_BADFORMAT;


  This->sInfo.rcFrame.right =
    This->sInfo.rcFrame.left + This->lpbiOutput->biWidth;
  This->sInfo.rcFrame.bottom =
    This->sInfo.rcFrame.top + This->lpbiOutput->biHeight;
  This->sInfo.dwSuggestedBufferSize =
    ICCompressGetSize(This->hic, lpbi, This->lpbiOutput);


  if (ICCompressBegin(This->hic, lpbi, This->lpbiOutput) != S_OK)
    return AVIERR_COMPRESSOR;


  size += This->sInfo.dwSuggestedBufferSize;
  This->lpbiCur = HeapAlloc(GetProcessHeap(), 0, size);
  if (This->lpbiCur == ((void*)0))
    return AVIERR_MEMORY;
  memcpy(This->lpbiCur, This->lpbiOutput, This->cbOutput);
  This->lpCur = DIBPTR(This->lpbiCur);


  if (This->lKeyFrameEvery != 1 &&
      (This->dwICMFlags & VIDCF_FASTTEMPORALC) == 0) {
    size = ICDecompressGetFormatSize(This->hic, This->lpbiOutput);
    This->lpbiPrev = HeapAlloc(GetProcessHeap(), 0, size);
    if (This->lpbiPrev == ((void*)0))
      return AVIERR_MEMORY;
    if (ICDecompressGetFormat(This->hic, This->lpbiOutput, This->lpbiPrev) < S_OK)
      return AVIERR_COMPRESSOR;

    if (This->lpbiPrev->biSizeImage == 0) {
      This->lpbiPrev->biSizeImage =
 DIBWIDTHBYTES(*This->lpbiPrev) * This->lpbiPrev->biHeight;
    }


    size += This->lpbiPrev->biSizeImage;
    This->lpbiPrev = HeapReAlloc(GetProcessHeap(), 0, This->lpbiPrev, size );
    if (This->lpbiPrev == ((void*)0))
      return AVIERR_MEMORY;
    This->lpPrev = DIBPTR(This->lpbiPrev);


    if (ICDecompressBegin(This->hic,This->lpbiOutput,This->lpbiPrev) != S_OK)
      return AVIERR_COMPRESSOR;
  }

  return AVIERR_OK;
}
