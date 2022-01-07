
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {int cb; int lp; } ;
struct TYPE_11__ {scalar_t__ ckid; scalar_t__ fccType; } ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_1__ MMCKINFO ;
typedef TYPE_2__* LPEXTRACHUNKS ;
typedef int HRESULT ;
typedef int * HMMIO ;
typedef scalar_t__ FOURCC ;


 int AVIERR_FILEREAD ;
 int AVIERR_OK ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FOURCC_LIST ;
 scalar_t__ FOURCC_RIFF ;
 scalar_t__ MMIOERR_CHUNKNOTFOUND ;
 int MMIO_FINDCHUNK ;
 int MMIO_FINDLIST ;
 int MMIO_FINDRIFF ;
 scalar_t__ MMSYSERR_NOERROR ;
 int ReadChunkIntoExtra (TYPE_2__*,int *,TYPE_1__*) ;
 int TRACE (char*,scalar_t__,scalar_t__,...) ;
 int assert (int ) ;
 scalar_t__ ckidAVIPADDING ;
 scalar_t__ mmioAscend (int *,TYPE_1__*,int ) ;
 scalar_t__ mmioDescend (int *,TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ mmioFOURCC (char,char,char,char) ;

HRESULT FindChunkAndKeepExtras(LPEXTRACHUNKS extra,HMMIO hmmio,MMCKINFO *lpck,
          MMCKINFO *lpckParent,UINT flags)
{
  FOURCC ckid;
  FOURCC fccType;
  MMRESULT mmr;


  assert(extra != ((void*)0));
  assert(hmmio != ((void*)0));
  assert(lpck != ((void*)0));

  TRACE("({%p,%u},%p,%p,%p,0x%X)\n", extra->lp, extra->cb, hmmio, lpck,
 lpckParent, flags);


  if (flags & MMIO_FINDCHUNK) {
    ckid = lpck->ckid;
    fccType = 0;
  } else if (flags & MMIO_FINDLIST) {
    ckid = FOURCC_LIST;
    fccType = lpck->fccType;
  } else if (flags & MMIO_FINDRIFF) {
    ckid = FOURCC_RIFF;
    fccType = lpck->fccType;
  } else
    ckid = fccType = (FOURCC)-1;

  TRACE(": find ckid=0x%08X fccType=0x%08X\n", ckid, fccType);

  for (;;) {
    mmr = mmioDescend(hmmio, lpck, lpckParent, 0);
    if (mmr != MMSYSERR_NOERROR) {

      if (flags == 0 && mmr == MMIOERR_CHUNKNOTFOUND)
 return AVIERR_OK;
      else
        return AVIERR_FILEREAD;
    }


    if ((lpck->ckid == ckid) &&
 (fccType == 0 || lpck->fccType == fccType))
      return AVIERR_OK;


    if (lpck->ckid == ckidAVIPADDING ||
 lpck->ckid == mmioFOURCC('p','a','d','d'))
    {
      mmr = mmioAscend(hmmio, lpck, 0);
      if (mmr != MMSYSERR_NOERROR) return AVIERR_FILEREAD;
    }
    else
    {
      HRESULT hr = ReadChunkIntoExtra(extra, hmmio, lpck);
      if (FAILED(hr))
        return hr;
    }
  }
}
