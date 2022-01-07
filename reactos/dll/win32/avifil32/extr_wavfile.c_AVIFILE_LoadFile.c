
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_15__ {int dwLength; int dwSampleSize; int dwScale; int dwSuggestedBufferSize; int dwRate; int fccType; } ;
struct TYPE_13__ {scalar_t__ fccType; scalar_t__ cksize; int dwDataOffset; int ckid; } ;
struct TYPE_12__ {int dwStreams; } ;
struct TYPE_14__ {scalar_t__ cbFormat; int hmmio; int extra; TYPE_2__ ckData; TYPE_6__ sInfo; TYPE_7__* lpFormat; TYPE_1__ fInfo; int fDirty; } ;
typedef TYPE_2__ MMCKINFO ;
typedef TYPE_3__ IAVIFileImpl ;
typedef int HRESULT ;
typedef int HPSTR ;


 int AVIERR_BADFORMAT ;
 int AVIERR_FILEREAD ;
 int AVIERR_OK ;
 int AVIFILE_LoadSunFile (TYPE_3__*) ;
 int FALSE ;
 scalar_t__ FindChunkAndKeepExtras (int *,int ,TYPE_2__*,TYPE_2__*,int ) ;
 int GetProcessHeap () ;
 TYPE_7__* HeapAlloc (int ,int ,scalar_t__) ;
 int MMIO_FINDCHUNK ;
 int MMIO_FINDRIFF ;
 int SEEK_END ;
 scalar_t__ S_OK ;
 int WARN (char*) ;
 int ckidWAVEDATA ;
 int ckidWAVEFORMAT ;
 scalar_t__ formtypeWAVE ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ mmioAscend (int ,TYPE_2__*,int ) ;
 scalar_t__ mmioDescend (int ,TYPE_2__*,int *,int ) ;
 scalar_t__ mmioRead (int ,int ,scalar_t__) ;
 int mmioSeek (int ,int ,int ) ;
 int streamtypeAUDIO ;

__attribute__((used)) static HRESULT AVIFILE_LoadFile(IAVIFileImpl *This)
{
  MMCKINFO ckRIFF;
  MMCKINFO ck;

  This->sInfo.dwLength = 0;
  This->fDirty = FALSE;


  ckRIFF.fccType = 0;
  if (mmioDescend(This->hmmio, &ckRIFF, ((void*)0), MMIO_FINDRIFF) != S_OK) {
    return AVIFILE_LoadSunFile(This);
  }

  if (ckRIFF.fccType != formtypeWAVE)
    return AVIERR_BADFORMAT;


  ck.ckid = ckidWAVEFORMAT;
  if (FindChunkAndKeepExtras(&This->extra, This->hmmio, &ck,
        &ckRIFF, MMIO_FINDCHUNK) != S_OK)
    return AVIERR_FILEREAD;


  This->lpFormat = HeapAlloc(GetProcessHeap(), 0, ck.cksize);
  if (This->lpFormat == ((void*)0))
    return AVIERR_FILEREAD;
  This->cbFormat = ck.cksize;

  if (mmioRead(This->hmmio, (HPSTR)This->lpFormat, ck.cksize) != ck.cksize)
    return AVIERR_FILEREAD;
  if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEREAD;






  This->ckData.ckid = ckidWAVEDATA;
  if (FindChunkAndKeepExtras(&This->extra, This->hmmio, &This->ckData,
        &ckRIFF, MMIO_FINDCHUNK) != S_OK)
    return AVIERR_FILEREAD;

  memset(&This->sInfo, 0, sizeof(This->sInfo));
  This->sInfo.fccType = streamtypeAUDIO;
  This->sInfo.dwRate = This->lpFormat->nAvgBytesPerSec;
  This->sInfo.dwSampleSize =
    This->sInfo.dwScale = This->lpFormat->nBlockAlign;
  This->sInfo.dwLength = This->ckData.cksize / This->lpFormat->nBlockAlign;
  This->sInfo.dwSuggestedBufferSize = This->ckData.cksize;

  This->fInfo.dwStreams = 1;

  if (mmioAscend(This->hmmio, &This->ckData, 0) != S_OK) {

    WARN(": file seems to be truncated!\n");
    This->ckData.cksize = mmioSeek(This->hmmio, 0, SEEK_END) -
      This->ckData.dwDataOffset;
    This->sInfo.dwLength = This->ckData.cksize / This->lpFormat->nBlockAlign;
    This->sInfo.dwSuggestedBufferSize = This->ckData.cksize;
  }


  FindChunkAndKeepExtras(&This->extra, This->hmmio, &ck, &ckRIFF, 0);

  return AVIERR_OK;
}
