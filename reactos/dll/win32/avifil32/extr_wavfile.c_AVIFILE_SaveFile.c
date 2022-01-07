
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wfx ;
typedef int dwFactLength ;
struct TYPE_15__ {int nBlockAlign; scalar_t__ wFormatTag; } ;
typedef TYPE_3__ WAVEFORMATEX ;
struct TYPE_18__ {scalar_t__ wFormatTag; } ;
struct TYPE_14__ {scalar_t__ cb; int * lp; } ;
struct TYPE_13__ {scalar_t__ cksize; int dwDataOffset; } ;
struct TYPE_17__ {int cbFormat; int hmmio; TYPE_2__ extra; TYPE_1__ ckData; TYPE_8__* lpFormat; } ;
struct TYPE_16__ {int cksize; int ckid; int fccType; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_4__ MMCKINFO ;
typedef TYPE_5__ IAVIFileImpl ;
typedef int HRESULT ;
typedef int * HPSTR ;
typedef int HACMSTREAM ;
typedef int DWORD ;


 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int ACM_STREAMOPENF_NONREALTIME ;
 int ACM_STREAMSIZEF_SOURCE ;
 int AVIERR_FILEWRITE ;
 int AVIERR_OK ;
 int ERR (char*) ;
 int MMIO_CREATERIFF ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ S_OK ;
 scalar_t__ WAVE_FORMAT_PCM ;
 scalar_t__ acmFormatSuggest (int *,TYPE_8__*,TYPE_3__*,int,int ) ;
 int acmStreamClose (int ,int ) ;
 int acmStreamOpen (int *,int *,TYPE_8__*,TYPE_3__*,int *,int ,int ,int ) ;
 int acmStreamSize (int ,scalar_t__,int *,int ) ;
 int ckidAVIPADDING ;
 int ckidWAVEDATA ;
 int ckidWAVEFACT ;
 int ckidWAVEFORMAT ;
 int formtypeWAVE ;
 scalar_t__ mmioAscend (int ,TYPE_4__*,int ) ;
 scalar_t__ mmioCreateChunk (int ,TYPE_4__*,int ) ;
 scalar_t__ mmioFlush (int ,int ) ;
 int mmioSeek (int ,int,int ) ;
 scalar_t__ mmioWrite (int ,int *,int) ;

__attribute__((used)) static HRESULT AVIFILE_SaveFile(const IAVIFileImpl *This)
{
  MMCKINFO ckRIFF;
  MMCKINFO ck;

  mmioSeek(This->hmmio, 0, SEEK_SET);


  ckRIFF.fccType = formtypeWAVE;
  ckRIFF.cksize = 0;
  if (mmioCreateChunk(This->hmmio, &ckRIFF, MMIO_CREATERIFF) != S_OK)
    return AVIERR_FILEWRITE;


  ck.ckid = ckidWAVEFORMAT;
  ck.cksize = This->cbFormat;
  if (mmioCreateChunk(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;
  if (This->lpFormat != ((void*)0) && This->cbFormat > 0) {
    if (mmioWrite(This->hmmio, (HPSTR)This->lpFormat, ck.cksize) != ck.cksize)
      return AVIERR_FILEWRITE;
  }
  if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;


  if (This->lpFormat != ((void*)0) && This->cbFormat > sizeof(PCMWAVEFORMAT) &&
      This->lpFormat->wFormatTag != WAVE_FORMAT_PCM) {
    WAVEFORMATEX wfx;
    DWORD dwFactLength;
    HACMSTREAM has;



    wfx.wFormatTag = WAVE_FORMAT_PCM;
    if (acmFormatSuggest(((void*)0), This->lpFormat, &wfx,
    sizeof(wfx), ACM_FORMATSUGGESTF_WFORMATTAG)) {
      acmStreamOpen(&has, ((void*)0), This->lpFormat, &wfx, ((void*)0),
      0, 0, ACM_STREAMOPENF_NONREALTIME);
      acmStreamSize(has, This->ckData.cksize, &dwFactLength,
      ACM_STREAMSIZEF_SOURCE);
      dwFactLength /= wfx.nBlockAlign;
      acmStreamClose(has, 0);


      ck.ckid = ckidWAVEFACT;
      ck.cksize = sizeof(dwFactLength);


      if (mmioSeek(This->hmmio, 0, SEEK_CUR) > This->ckData.dwDataOffset
   - ck.cksize - 4 * sizeof(DWORD))
 return AVIERR_FILEWRITE;
      if (mmioCreateChunk(This->hmmio, &ck, 0) != S_OK)
 return AVIERR_FILEWRITE;
      if (mmioWrite(This->hmmio, (HPSTR)&dwFactLength, ck.cksize) != ck.cksize)
 return AVIERR_FILEWRITE;
      if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
 return AVIERR_FILEWRITE;
    } else
      ERR(": fact chunk is needed for non-pcm files -- currently no codec found, so skipped!\n");
  }


  if (mmioSeek(This->hmmio, 0, SEEK_CUR) + 2 * sizeof(DWORD) < This->ckData.dwDataOffset) {
    ck.ckid = ckidAVIPADDING;
    ck.cksize = 0;
    if (mmioCreateChunk(This->hmmio, &ck, 0) != S_OK)
      return AVIERR_FILEWRITE;

    if (mmioSeek(This->hmmio, This->ckData.dwDataOffset
   - 2 * sizeof(DWORD), SEEK_SET) == -1)
      return AVIERR_FILEWRITE;
    if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
      return AVIERR_FILEWRITE;
  }


  ck.ckid = ckidWAVEDATA;
  ck.cksize = This->ckData.cksize;
  if (mmioCreateChunk(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;
  if (mmioSeek(This->hmmio, This->ckData.cksize, SEEK_CUR) == -1)
    return AVIERR_FILEWRITE;
  if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;


  if (This->extra.lp != ((void*)0) && This->extra.cb > 0) {

    if (mmioWrite(This->hmmio, This->extra.lp, This->extra.cb) != This->extra.cb)
      return AVIERR_FILEWRITE;
  }


  if (mmioAscend(This->hmmio, &ckRIFF, 0) != S_OK)
    return AVIERR_FILEWRITE;
  if (mmioFlush(This->hmmio, 0) != S_OK)
    return AVIERR_FILEWRITE;

  return AVIERR_OK;
}
