
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
struct TYPE_11__ {int ckid; int dwFlags; int dwChunkOffset; int dwChunkLength; } ;
struct TYPE_9__ {int dwFormatChangeCount; int dwSuggestedBufferSize; size_t dwLength; int dwFlags; int fccType; } ;
struct TYPE_10__ {int nIdxFmtChanges; int lLastFrame; int nIdxFrames; TYPE_3__ sInfo; TYPE_5__* idxFrames; TYPE_2__* paf; TYPE_5__* idxFmtChanges; } ;
struct TYPE_7__ {int dwFlags; } ;
struct TYPE_8__ {TYPE_1__ fInfo; } ;
typedef TYPE_4__ IAVIStreamImpl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int AVIINDEXENTRY ;


 int AVIERR_BADFORMAT ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int AVIFILEINFO_TRUSTCKTYPE ;
 int AVIIF_KEYFRAME ;
 int AVISTREAMINFO_FORMATCHANGES ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 void* HeapReAlloc (int ,int ,TYPE_5__*,int) ;
 int TWOCCFromFOURCC (int) ;
 int WARN (char*,int) ;
 int assert (int ) ;




 int streamtypeVIDEO ;

__attribute__((used)) static HRESULT AVIFILE_AddFrame(IAVIStreamImpl *This, DWORD ckid, DWORD size, DWORD offset, DWORD flags)
{
  UINT n;


  assert(This != ((void*)0));

  switch (TWOCCFromFOURCC(ckid)) {
  case 131:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags |= AVIIF_KEYFRAME;
    break;
  case 130:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags &= ~AVIIF_KEYFRAME;
    break;
  case 129:
    if (This->sInfo.fccType != streamtypeVIDEO) {
      ERR(": found palette change in non-video stream!\n");
      return AVIERR_BADFORMAT;
    }

    if (This->idxFmtChanges == ((void*)0) || This->nIdxFmtChanges <= This->sInfo.dwFormatChangeCount) {
      DWORD new_count = This->nIdxFmtChanges + 16;
      void *new_buffer;

      if (This->idxFmtChanges == ((void*)0)) {
 This->idxFmtChanges =
          HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, new_count * sizeof(AVIINDEXENTRY));
        if (!This->idxFmtChanges) return AVIERR_MEMORY;
      } else {
        new_buffer = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, This->idxFmtChanges,
                new_count * sizeof(AVIINDEXENTRY));
        if (!new_buffer) return AVIERR_MEMORY;
        This->idxFmtChanges = new_buffer;
      }
      This->nIdxFmtChanges = new_count;
    }

    This->sInfo.dwFlags |= AVISTREAMINFO_FORMATCHANGES;
    n = ++This->sInfo.dwFormatChangeCount;
    This->idxFmtChanges[n].ckid = This->lLastFrame;
    This->idxFmtChanges[n].dwFlags = 0;
    This->idxFmtChanges[n].dwChunkOffset = offset;
    This->idxFmtChanges[n].dwChunkLength = size;

    return AVIERR_OK;
  case 128:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags |= AVIIF_KEYFRAME;
    break;
  default:
    WARN(": unknown TWOCC 0x%04X found\n", TWOCCFromFOURCC(ckid));
    break;
  };


  if (This->lLastFrame == -1)
    flags |= AVIIF_KEYFRAME;

  if (This->sInfo.dwSuggestedBufferSize < size)
    This->sInfo.dwSuggestedBufferSize = size;


  if (This->idxFrames == ((void*)0) || This->lLastFrame + 1 >= This->nIdxFrames) {
    This->nIdxFrames += 512;
    if (This->idxFrames == ((void*)0))
      This->idxFrames = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, This->nIdxFrames * sizeof(AVIINDEXENTRY));
      else
 This->idxFrames = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, This->idxFrames,
      This->nIdxFrames * sizeof(AVIINDEXENTRY));
    if (This->idxFrames == ((void*)0))
      return AVIERR_MEMORY;
  }

  This->lLastFrame++;
  This->idxFrames[This->lLastFrame].ckid = ckid;
  This->idxFrames[This->lLastFrame].dwFlags = flags;
  This->idxFrames[This->lLastFrame].dwChunkOffset = offset;
  This->idxFrames[This->lLastFrame].dwChunkLength = size;


  if (This->sInfo.dwLength <= This->lLastFrame)
    This->sInfo.dwLength = This->lLastFrame + 1;

  return AVIERR_OK;
}
