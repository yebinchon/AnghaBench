
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int idx ;
struct TYPE_21__ {scalar_t__ dwChunkOffset; int dwChunkLength; void* dwFlags; void* ckid; } ;
struct TYPE_15__ {int dwFlags; size_t dwStreams; scalar_t__ dwLength; } ;
struct TYPE_20__ {size_t nIdxRecords; int hmmio; scalar_t__ dwMoviChunkPos; TYPE_7__** ppStreams; TYPE_3__ fInfo; TYPE_2__* idxRecords; } ;
struct TYPE_16__ {scalar_t__ dwSampleSize; size_t dwInitialFrames; int dwFlags; scalar_t__ dwFormatChangeCount; } ;
struct TYPE_19__ {size_t lLastFrame; TYPE_1__* idxFrames; TYPE_5__* idxFmtChanges; int nStream; TYPE_4__ sInfo; int IAVIStream_iface; } ;
struct TYPE_18__ {scalar_t__ cksize; int ckid; } ;
struct TYPE_17__ {size_t ckid; scalar_t__ dwChunkOffset; int dwChunkLength; } ;
struct TYPE_14__ {scalar_t__ dwChunkOffset; int dwChunkLength; } ;
struct TYPE_13__ {scalar_t__ dwChunkOffset; int dwChunkLength; void* dwFlags; void* ckid; } ;
typedef TYPE_6__ MMCKINFO ;
typedef size_t LONG ;
typedef TYPE_7__ IAVIStreamImpl ;
typedef TYPE_8__ IAVIFileImpl ;
typedef int HRESULT ;
typedef int HPSTR ;
typedef size_t DWORD ;
typedef TYPE_9__ AVIINDEXENTRY ;


 int AVIERR_FILEWRITE ;
 int AVIERR_OK ;
 int AVIFILEINFO_ISINTERLEAVED ;
 void* AVIIF_LIST ;
 void* AVIIF_NOTIME ;
 int AVISTREAMINFO_FORMATCHANGES ;
 size_t AVIStreamTimeToSample (int *,int) ;
 void* MAKEAVICKID (int ,int ) ;
 scalar_t__ S_OK ;
 int assert (int) ;
 int ckidAVINEWINDEX ;
 int cktypePALchange ;
 void* listtypeAVIRECORD ;
 scalar_t__ mmioAscend (int ,TYPE_6__*,int ) ;
 scalar_t__ mmioCreateChunk (int ,TYPE_6__*,int ) ;
 int mmioWrite (int ,int ,int) ;

__attribute__((used)) static HRESULT AVIFILE_SaveIndex(const IAVIFileImpl *This)
{
  IAVIStreamImpl *pStream;
  AVIINDEXENTRY idx;
  MMCKINFO ck;
  DWORD nStream;
  LONG n;

  ck.ckid = ckidAVINEWINDEX;
  ck.cksize = 0;
  if (mmioCreateChunk(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;

  if (This->fInfo.dwFlags & AVIFILEINFO_ISINTERLEAVED) {

    LONG lInitialFrames = 0;
    LONG stepsize;
    LONG i;

    if (This->ppStreams[0]->sInfo.dwSampleSize == 0)
      stepsize = 1;
    else
      stepsize = AVIStreamTimeToSample(&This->ppStreams[0]->IAVIStream_iface, 1000000);

    assert(stepsize > 0);

    for (nStream = 0; nStream < This->fInfo.dwStreams; nStream++) {
      if (lInitialFrames < This->ppStreams[nStream]->sInfo.dwInitialFrames)
 lInitialFrames = This->ppStreams[nStream]->sInfo.dwInitialFrames;
    }

    for (i = -lInitialFrames; i < (LONG)This->fInfo.dwLength - lInitialFrames;
  i += stepsize) {
      DWORD nFrame = lInitialFrames + i;

      assert(nFrame < This->nIdxRecords);

      idx.ckid = listtypeAVIRECORD;
      idx.dwFlags = AVIIF_LIST;
      idx.dwChunkLength = This->idxRecords[nFrame].dwChunkLength;
      idx.dwChunkOffset = This->idxRecords[nFrame].dwChunkOffset
 - This->dwMoviChunkPos;
      if (mmioWrite(This->hmmio, (HPSTR)&idx, sizeof(idx)) != sizeof(idx))
 return AVIERR_FILEWRITE;

      for (nStream = 0; nStream < This->fInfo.dwStreams; nStream++) {
 pStream = This->ppStreams[nStream];


 if (-(LONG)pStream->sInfo.dwInitialFrames > i)
   continue;

 if (pStream->sInfo.dwInitialFrames < lInitialFrames)
   nFrame -= (lInitialFrames - pStream->sInfo.dwInitialFrames);


 if (pStream->lLastFrame <= nFrame)
   continue;

 if ((pStream->sInfo.dwFlags & AVISTREAMINFO_FORMATCHANGES) &&
     pStream->sInfo.dwFormatChangeCount != 0 &&
     pStream->idxFmtChanges != ((void*)0)) {
   DWORD pos;

   for (pos = 0; pos < pStream->sInfo.dwFormatChangeCount; pos++) {
     if (pStream->idxFmtChanges[pos].ckid == nFrame) {
       idx.dwFlags = AVIIF_NOTIME;
       idx.ckid = MAKEAVICKID(cktypePALchange, pStream->nStream);
       idx.dwChunkLength = pStream->idxFmtChanges[pos].dwChunkLength;
       idx.dwChunkOffset = pStream->idxFmtChanges[pos].dwChunkOffset
  - This->dwMoviChunkPos;

       if (mmioWrite(This->hmmio, (HPSTR)&idx, sizeof(idx)) != sizeof(idx))
  return AVIERR_FILEWRITE;
       break;
     }
   }
 }

 idx.ckid = pStream->idxFrames[nFrame].ckid;
 idx.dwFlags = pStream->idxFrames[nFrame].dwFlags;
 idx.dwChunkLength = pStream->idxFrames[nFrame].dwChunkLength;
 idx.dwChunkOffset = pStream->idxFrames[nFrame].dwChunkOffset
   - This->dwMoviChunkPos;
 if (mmioWrite(This->hmmio, (HPSTR)&idx, sizeof(idx)) != sizeof(idx))
   return AVIERR_FILEWRITE;
      }
    }
  } else {

    for (nStream = 0; nStream < This->fInfo.dwStreams; nStream++) {
      pStream = This->ppStreams[nStream];

      for (n = 0; n <= pStream->lLastFrame; n++) {
 if ((pStream->sInfo.dwFlags & AVISTREAMINFO_FORMATCHANGES) &&
     (pStream->sInfo.dwFormatChangeCount != 0)) {
   DWORD pos;

   for (pos = 0; pos < pStream->sInfo.dwFormatChangeCount; pos++) {
     if (pStream->idxFmtChanges[pos].ckid == n) {
       idx.dwFlags = AVIIF_NOTIME;
       idx.ckid = MAKEAVICKID(cktypePALchange, pStream->nStream);
       idx.dwChunkLength = pStream->idxFmtChanges[pos].dwChunkLength;
       idx.dwChunkOffset =
  pStream->idxFmtChanges[pos].dwChunkOffset - This->dwMoviChunkPos;
       if (mmioWrite(This->hmmio, (HPSTR)&idx, sizeof(idx)) != sizeof(idx))
  return AVIERR_FILEWRITE;
       break;
     }
   }
 }

 idx.ckid = pStream->idxFrames[n].ckid;
 idx.dwFlags = pStream->idxFrames[n].dwFlags;
 idx.dwChunkLength = pStream->idxFrames[n].dwChunkLength;
 idx.dwChunkOffset = pStream->idxFrames[n].dwChunkOffset
   - This->dwMoviChunkPos;

 if (mmioWrite(This->hmmio, (HPSTR)&idx, sizeof(idx)) != sizeof(idx))
   return AVIERR_FILEWRITE;
      }
    }
  }

  if (mmioAscend(This->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;

  return AVIERR_OK;
}
