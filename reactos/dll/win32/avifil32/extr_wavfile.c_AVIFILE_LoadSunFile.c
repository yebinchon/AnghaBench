
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int auhdr ;
typedef int WORD ;
typedef int WAVEFORMATEX ;
struct TYPE_17__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int cbSize; int nAvgBytesPerSec; void* wFormatTag; } ;
struct TYPE_12__ {int cksize; void* dwDataOffset; } ;
struct TYPE_11__ {int dwStreams; int dwScale; int dwRate; int dwLength; } ;
struct TYPE_10__ {int dwScale; int dwRate; int dwLength; int dwSuggestedBufferSize; int dwSampleSize; scalar_t__ dwStart; scalar_t__ dwInitialFrames; scalar_t__ wLanguage; scalar_t__ wPriority; scalar_t__ dwFlags; scalar_t__ fccHandler; int fccType; } ;
struct TYPE_16__ {int cbFormat; TYPE_8__* lpFormat; TYPE_3__ ckData; TYPE_2__ fInfo; TYPE_1__ sInfo; int fDirty; int hmmio; } ;
struct TYPE_15__ {int nAuxBlockSize; } ;
struct TYPE_14__ {int nAuxBlockSize; int cbExtraSize; } ;
struct TYPE_13__ {int fccType; int offset; int size; int encoding; int sampleRate; int channels; } ;
typedef TYPE_4__ SUNAUDIOHEADER ;
typedef TYPE_5__* LPG723_ADPCMWAVEFORMAT ;
typedef TYPE_6__* LPG721_ADPCMWAVEFORMAT ;
typedef TYPE_7__ IAVIFileImpl ;
typedef int HRESULT ;
typedef int HPSTR ;
typedef int G723_ADPCMWAVEFORMAT ;
typedef int G721_ADPCMWAVEFORMAT ;
 int AVIERR_BADFORMAT ;
 int AVIERR_FILEREAD ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int AVIERR_UNSUPPORTED ;
 void* BE2H_DWORD (int) ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_8__* HeapAlloc (int ,int ,int) ;
 void* LE2H_DWORD (int) ;
 int MulDiv (int,int,int) ;
 int SEEK_SET ;
 int WARN (char*,int) ;
 void* WAVE_FORMAT_ALAW ;
 void* WAVE_FORMAT_G721_ADPCM ;
 void* WAVE_FORMAT_G723_ADPCM ;
 void* WAVE_FORMAT_MULAW ;
 void* WAVE_FORMAT_PCM ;
 int mmioFOURCC (char,char,char,char) ;
 int mmioRead (int ,int ,int) ;
 int mmioSeek (int ,int ,int ) ;
 int streamtypeAUDIO ;

__attribute__((used)) static HRESULT AVIFILE_LoadSunFile(IAVIFileImpl *This)
{
  SUNAUDIOHEADER auhdr;

  mmioSeek(This->hmmio, 0, SEEK_SET);
  if (mmioRead(This->hmmio, (HPSTR)&auhdr, sizeof(auhdr)) != sizeof(auhdr))
    return AVIERR_FILEREAD;

  if (auhdr.fccType == 0x0064732E) {

    This->ckData.dwDataOffset = LE2H_DWORD(auhdr.offset);
    This->ckData.cksize = LE2H_DWORD(auhdr.size);

    auhdr.encoding = LE2H_DWORD(auhdr.encoding);
    auhdr.sampleRate = LE2H_DWORD(auhdr.sampleRate);
    auhdr.channels = LE2H_DWORD(auhdr.channels);
  } else if (auhdr.fccType == mmioFOURCC('.','s','n','d')) {

    This->ckData.dwDataOffset = BE2H_DWORD(auhdr.offset);
    This->ckData.cksize = BE2H_DWORD(auhdr.size);

    auhdr.encoding = BE2H_DWORD(auhdr.encoding);
    auhdr.sampleRate = BE2H_DWORD(auhdr.sampleRate);
    auhdr.channels = BE2H_DWORD(auhdr.channels);
  } else
    return AVIERR_FILEREAD;

  if (auhdr.channels < 1)
    return AVIERR_BADFORMAT;


  switch(auhdr.encoding) {
  case 137:
    This->cbFormat = sizeof(G721_ADPCMWAVEFORMAT); break;
  case 135:
    This->cbFormat = sizeof(G723_ADPCMWAVEFORMAT); break;
  case 136:
  case 134:
    WARN("unsupported Sun audio format %d\n", auhdr.encoding);
    return AVIERR_UNSUPPORTED;
  default:
    This->cbFormat = sizeof(WAVEFORMATEX); break;
  };

  This->lpFormat = HeapAlloc(GetProcessHeap(), 0, This->cbFormat);
  if (This->lpFormat == ((void*)0))
    return AVIERR_MEMORY;

  This->lpFormat->nChannels = auhdr.channels;
  This->lpFormat->nSamplesPerSec = auhdr.sampleRate;
  switch(auhdr.encoding) {
  case 128:
    This->lpFormat->wFormatTag = WAVE_FORMAT_MULAW;
    This->lpFormat->wBitsPerSample = 8;
    break;
  case 129:
    This->lpFormat->wFormatTag = WAVE_FORMAT_PCM;
    This->lpFormat->wBitsPerSample = 8;
    break;
  case 132:
    This->lpFormat->wFormatTag = WAVE_FORMAT_PCM;
    This->lpFormat->wBitsPerSample = 16;
    break;
  case 131:
    This->lpFormat->wFormatTag = WAVE_FORMAT_PCM;
    This->lpFormat->wBitsPerSample = 24;
    break;
  case 130:
    This->lpFormat->wFormatTag = WAVE_FORMAT_PCM;
    This->lpFormat->wBitsPerSample = 32;
    break;
  case 133:
    This->lpFormat->wFormatTag = WAVE_FORMAT_ALAW;
    This->lpFormat->wBitsPerSample = 8;
    break;
  case 137:
    This->lpFormat->wFormatTag = WAVE_FORMAT_G721_ADPCM;
    This->lpFormat->wBitsPerSample = (3*5*8);
    This->lpFormat->nBlockAlign = 15*15*8;
    This->lpFormat->cbSize = sizeof(WORD);
    ((LPG721_ADPCMWAVEFORMAT)This->lpFormat)->nAuxBlockSize = 0;
    break;
  case 135:
    This->lpFormat->wFormatTag = WAVE_FORMAT_G723_ADPCM;
    This->lpFormat->wBitsPerSample = (3*5*8);
    This->lpFormat->nBlockAlign = 15*15*8;
    This->lpFormat->cbSize = 2*sizeof(WORD);
    ((LPG723_ADPCMWAVEFORMAT)This->lpFormat)->cbExtraSize = 0;
    ((LPG723_ADPCMWAVEFORMAT)This->lpFormat)->nAuxBlockSize = 0;
    break;
  default:
    WARN("unsupported Sun audio format %d\n", auhdr.encoding);
    return AVIERR_UNSUPPORTED;
  };

  This->lpFormat->nBlockAlign =
    (This->lpFormat->nChannels * This->lpFormat->wBitsPerSample) / 8;
  if (This->lpFormat->nBlockAlign == 0 && This->lpFormat->wBitsPerSample < 8)
    This->lpFormat->nBlockAlign++;
  This->lpFormat->nAvgBytesPerSec =
    This->lpFormat->nBlockAlign * This->lpFormat->nSamplesPerSec;

  This->fDirty = FALSE;

  This->sInfo.fccType = streamtypeAUDIO;
  This->sInfo.fccHandler = 0;
  This->sInfo.dwFlags = 0;
  This->sInfo.wPriority = 0;
  This->sInfo.wLanguage = 0;
  This->sInfo.dwInitialFrames = 0;
  This->sInfo.dwScale = This->lpFormat->nBlockAlign;
  This->sInfo.dwRate = This->lpFormat->nAvgBytesPerSec;
  This->sInfo.dwStart = 0;
  This->sInfo.dwLength =
    This->ckData.cksize / This->lpFormat->nBlockAlign;
  This->sInfo.dwSuggestedBufferSize = This->sInfo.dwLength;
  This->sInfo.dwSampleSize = This->lpFormat->nBlockAlign;

  This->fInfo.dwStreams = 1;
  This->fInfo.dwScale = 1;
  This->fInfo.dwRate = This->lpFormat->nSamplesPerSec;
  This->fInfo.dwLength =
    MulDiv(This->ckData.cksize, This->lpFormat->nSamplesPerSec,
    This->lpFormat->nAvgBytesPerSec);

  return AVIERR_OK;
}
