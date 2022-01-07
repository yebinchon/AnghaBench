
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_11__ {scalar_t__ dwScale; scalar_t__ dwRate; scalar_t__ dwLength; scalar_t__ dwInitialFrames; scalar_t__ dwSuggestedBufferSize; scalar_t__ dwSampleSize; TYPE_2__ rcFrame; } ;
struct TYPE_9__ {int dwCaps; scalar_t__ dwSuggestedBufferSize; scalar_t__ dwWidth; scalar_t__ dwHeight; scalar_t__ dwScale; scalar_t__ dwRate; scalar_t__ dwLength; size_t dwStreams; scalar_t__ dwMaxBytesPerSec; } ;
struct TYPE_10__ {scalar_t__ dwInitialFrames; TYPE_3__ fInfo; TYPE_1__** ppStreams; } ;
struct TYPE_7__ {int IAVIStream_iface; TYPE_5__ sInfo; } ;
typedef TYPE_4__ IAVIFileImpl ;
typedef scalar_t__ DWORD ;
typedef TYPE_5__ AVISTREAMINFOW ;


 int AVIFILECAPS_CANREAD ;
 int AVIFILECAPS_CANWRITE ;
 scalar_t__ AVIStreamSampleToSample (int *,int *,scalar_t__) ;
 scalar_t__ MulDiv (scalar_t__,scalar_t__,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static void AVIFILE_UpdateInfo(IAVIFileImpl *This)
{
  UINT i;


  assert(This != ((void*)0));

  This->fInfo.dwMaxBytesPerSec = 0;
  This->fInfo.dwCaps = AVIFILECAPS_CANREAD|AVIFILECAPS_CANWRITE;
  This->fInfo.dwSuggestedBufferSize = 0;
  This->fInfo.dwWidth = 0;
  This->fInfo.dwHeight = 0;
  This->fInfo.dwScale = 0;
  This->fInfo.dwRate = 0;
  This->fInfo.dwLength = 0;
  This->dwInitialFrames = 0;

  for (i = 0; i < This->fInfo.dwStreams; i++) {
    AVISTREAMINFOW *psi;
    DWORD n;


    assert(This->ppStreams[i] != ((void*)0));

    psi = &This->ppStreams[i]->sInfo;
    assert(psi->dwScale != 0);
    assert(psi->dwRate != 0);

    if (i == 0) {

      This->fInfo.dwScale = psi->dwScale;
      This->fInfo.dwRate = psi->dwRate;
      This->fInfo.dwLength = psi->dwLength;
    } else {
      n = AVIStreamSampleToSample(&This->ppStreams[0]->IAVIStream_iface,
                                  &This->ppStreams[i]->IAVIStream_iface, psi->dwLength);
      if (This->fInfo.dwLength < n)
 This->fInfo.dwLength = n;
    }

    if (This->dwInitialFrames < psi->dwInitialFrames)
      This->dwInitialFrames = psi->dwInitialFrames;

    if (This->fInfo.dwSuggestedBufferSize < psi->dwSuggestedBufferSize)
      This->fInfo.dwSuggestedBufferSize = psi->dwSuggestedBufferSize;

    if (psi->dwSampleSize != 0) {

      This->fInfo.dwMaxBytesPerSec += MulDiv(psi->dwSampleSize, psi->dwRate,
          psi->dwScale);
    } else {

      This->fInfo.dwMaxBytesPerSec += MulDiv(psi->dwSuggestedBufferSize,
          psi->dwRate, psi->dwScale);


      n = psi->rcFrame.right - psi->rcFrame.left;
      if (This->fInfo.dwWidth < n)
 This->fInfo.dwWidth = n;
      n = psi->rcFrame.bottom - psi->rcFrame.top;
      if (This->fInfo.dwHeight < n)
 This->fInfo.dwHeight = n;
    }
  }
}
