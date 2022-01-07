
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nAvgBytesPerSec; int nBlockAlign; int wFormatTag; } ;
struct TYPE_6__ {int dwSuggestedBufferSize; int dwLength; int dwStart; int rcFrame; scalar_t__ dwQuality; int dwRate; int dwScale; int dwSampleSize; } ;
struct TYPE_7__ {int cbInFormat; int cbOutFormat; TYPE_1__ sInfo; TYPE_3__* lpOutFormat; int * lpInFormat; int * has; int * pStream; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_2__ IAVIStreamImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int ACM_STREAMOPENF_NONREALTIME ;
 int AVIERR_ERROR ;
 int AVIERR_MEMORY ;
 int AVIERR_NOCOMPRESSOR ;
 int AVIERR_OK ;
 int AVIStreamFormatSize (int *,int ,int*) ;
 int CONVERT_STREAM_to_THIS (int *) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int IAVIStream_ReadFormat (int *,int ,int *,int*) ;
 scalar_t__ ICQUALITY_DEFAULT ;
 scalar_t__ S_OK ;
 int SetRectEmpty (int *) ;
 int WAVE_FORMAT_PCM ;
 scalar_t__ acmFormatSuggest (int *,int *,TYPE_3__*,int,int ) ;
 scalar_t__ acmStreamOpen (int **,int *,int *,TYPE_3__*,int *,int ,int ,int ) ;
 int assert (int ) ;

__attribute__((used)) static HRESULT AVIFILE_OpenCompressor(IAVIStreamImpl *This)
{
  HRESULT hr;


  assert(This != ((void*)0));
  assert(This->pStream != ((void*)0));

  if (This->has != ((void*)0))
    return AVIERR_OK;

  if (This->lpInFormat == ((void*)0)) {

    hr = AVIStreamFormatSize(This->pStream, This->sInfo.dwStart, &This->cbInFormat);
    if (FAILED(hr))
      return hr;
    This->lpInFormat = HeapAlloc(GetProcessHeap(), 0, This->cbInFormat);
    if (This->lpInFormat == ((void*)0))
      return AVIERR_MEMORY;

    hr = IAVIStream_ReadFormat(This->pStream, This->sInfo.dwStart,
                               This->lpInFormat, &This->cbInFormat);
    if (FAILED(hr))
      return hr;

    if (This->lpOutFormat == ((void*)0)) {

      This->cbOutFormat = sizeof(PCMWAVEFORMAT);
      This->lpOutFormat = HeapAlloc(GetProcessHeap(), 0, This->cbOutFormat);
      if (This->lpOutFormat == ((void*)0))
        return AVIERR_MEMORY;

      This->lpOutFormat->wFormatTag = WAVE_FORMAT_PCM;
      if (acmFormatSuggest(((void*)0), This->lpInFormat, This->lpOutFormat,
                           This->cbOutFormat, ACM_FORMATSUGGESTF_WFORMATTAG) != S_OK)
        return AVIERR_NOCOMPRESSOR;
    }
  } else if (This->lpOutFormat == ((void*)0))
    return AVIERR_ERROR;

  if (acmStreamOpen(&This->has, ((void*)0), This->lpInFormat, This->lpOutFormat,
                    ((void*)0), 0, 0, ACM_STREAMOPENF_NONREALTIME) != S_OK)
    return AVIERR_NOCOMPRESSOR;


  This->sInfo.dwSampleSize = This->lpOutFormat->nBlockAlign;
  This->sInfo.dwScale = This->lpOutFormat->nBlockAlign;
  This->sInfo.dwRate = This->lpOutFormat->nAvgBytesPerSec;
  This->sInfo.dwQuality = (DWORD)ICQUALITY_DEFAULT;
  SetRectEmpty(&This->sInfo.rcFrame);


  CONVERT_STREAM_to_THIS(&This->sInfo.dwStart);
  CONVERT_STREAM_to_THIS(&This->sInfo.dwLength);
  CONVERT_STREAM_to_THIS(&This->sInfo.dwSuggestedBufferSize);

  return AVIERR_OK;
}
