
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int dwEditCount; scalar_t__ dwSampleSize; int dwCaps; int rcFrame; scalar_t__ dwFormatChangeCount; scalar_t__ dwSuggestedBufferSize; scalar_t__ dwLength; } ;
struct TYPE_12__ {int dwLength; int dwFormatChangeCount; } ;
struct TYPE_11__ {TYPE_2__** ppStreams; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_10__ {size_t nStream; size_t dwCurrentFrame; int lLastFrame; int nIdxFrames; int nIdxFmtChanges; TYPE_5__ sInfo; int * idxFmtChanges; int * idxFrames; TYPE_3__* paf; scalar_t__ ref; TYPE_1__ IAVIStream_iface; } ;
typedef TYPE_2__ IAVIStreamImpl ;
typedef TYPE_3__ IAVIFileImpl ;
typedef size_t DWORD ;
typedef TYPE_4__ AVISTREAMINFOW ;
typedef int AVIINDEXENTRY ;


 int AVIFILECAPS_CANREAD ;
 int AVIFILECAPS_CANWRITE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 size_t MAX_AVISTREAMS ;
 int SetRectEmpty (int *) ;
 int assert (int) ;
 int avist_vt ;
 int memcpy (TYPE_5__*,TYPE_4__ const*,int) ;

__attribute__((used)) static void AVIFILE_ConstructAVIStream(IAVIFileImpl *paf, DWORD nr, const AVISTREAMINFOW *asi)
{
  IAVIStreamImpl *pstream;


  assert(paf != ((void*)0));
  assert(nr < MAX_AVISTREAMS);
  assert(paf->ppStreams[nr] != ((void*)0));

  pstream = paf->ppStreams[nr];

  pstream->IAVIStream_iface.lpVtbl = &avist_vt;
  pstream->ref = 0;
  pstream->paf = paf;
  pstream->nStream = nr;
  pstream->dwCurrentFrame = (DWORD)-1;
  pstream->lLastFrame = -1;

  if (asi != ((void*)0)) {
    memcpy(&pstream->sInfo, asi, sizeof(pstream->sInfo));

    if (asi->dwLength > 0) {

      pstream->idxFrames =
 HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, asi->dwLength * sizeof(AVIINDEXENTRY));
      if (pstream->idxFrames != ((void*)0))
 pstream->nIdxFrames = asi->dwLength;
    }
    if (asi->dwFormatChangeCount > 0) {

      pstream->idxFmtChanges =
 HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, asi->dwFormatChangeCount * sizeof(AVIINDEXENTRY));
      if (pstream->idxFmtChanges != ((void*)0))
 pstream->nIdxFmtChanges = asi->dwFormatChangeCount;
    }


    pstream->sInfo.dwLength = 0;
    pstream->sInfo.dwSuggestedBufferSize = 0;
    pstream->sInfo.dwFormatChangeCount = 0;
    pstream->sInfo.dwEditCount = 1;
    if (pstream->sInfo.dwSampleSize > 0)
      SetRectEmpty(&pstream->sInfo.rcFrame);
  }

  pstream->sInfo.dwCaps = AVIFILECAPS_CANREAD|AVIFILECAPS_CANWRITE;
}
