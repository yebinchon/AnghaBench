#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_11__ {int ckid; int dwFlags; int dwChunkOffset; int dwChunkLength; } ;
struct TYPE_9__ {int dwFormatChangeCount; int dwSuggestedBufferSize; size_t dwLength; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  fccType; } ;
struct TYPE_10__ {int nIdxFmtChanges; int lLastFrame; int nIdxFrames; TYPE_3__ sInfo; TYPE_5__* idxFrames; TYPE_2__* paf; TYPE_5__* idxFmtChanges; } ;
struct TYPE_7__ {int dwFlags; } ;
struct TYPE_8__ {TYPE_1__ fInfo; } ;
typedef  TYPE_4__ IAVIStreamImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  AVIINDEXENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_BADFORMAT ; 
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int AVIFILEINFO_TRUSTCKTYPE ; 
 int AVIIF_KEYFRAME ; 
 int /*<<< orphan*/  AVISTREAMINFO_FORMATCHANGES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  cktypeDIBbits 131 
#define  cktypeDIBcompressed 130 
#define  cktypePALchange 129 
#define  cktypeWAVEbytes 128 
 int /*<<< orphan*/  streamtypeVIDEO ; 

__attribute__((used)) static HRESULT FUNC7(IAVIStreamImpl *This, DWORD ckid, DWORD size, DWORD offset, DWORD flags)
{
  UINT n;

  /* pre-conditions */
  FUNC6(This != NULL);

  switch (FUNC4(ckid)) {
  case cktypeDIBbits:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags |= AVIIF_KEYFRAME;
    break;
  case cktypeDIBcompressed:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags &= ~AVIIF_KEYFRAME;
    break;
  case cktypePALchange:
    if (This->sInfo.fccType != streamtypeVIDEO) {
      FUNC0(": found palette change in non-video stream!\n");
      return AVIERR_BADFORMAT;
    }

    if (This->idxFmtChanges == NULL || This->nIdxFmtChanges <= This->sInfo.dwFormatChangeCount) {
      DWORD new_count = This->nIdxFmtChanges + 16;
      void *new_buffer;

      if (This->idxFmtChanges == NULL) {
	This->idxFmtChanges =
          FUNC2(FUNC1(), HEAP_ZERO_MEMORY, new_count * sizeof(AVIINDEXENTRY));
        if (!This->idxFmtChanges) return AVIERR_MEMORY;
      } else {
        new_buffer = FUNC3(FUNC1(), HEAP_ZERO_MEMORY, This->idxFmtChanges,
                new_count * sizeof(AVIINDEXENTRY));
        if (!new_buffer) return AVIERR_MEMORY;
        This->idxFmtChanges = new_buffer;
      }
      This->nIdxFmtChanges = new_count;
    }

    This->sInfo.dwFlags |= AVISTREAMINFO_FORMATCHANGES;
    n = ++This->sInfo.dwFormatChangeCount;
    This->idxFmtChanges[n].ckid          = This->lLastFrame;
    This->idxFmtChanges[n].dwFlags       = 0;
    This->idxFmtChanges[n].dwChunkOffset = offset;
    This->idxFmtChanges[n].dwChunkLength = size;

    return AVIERR_OK;
  case cktypeWAVEbytes:
    if (This->paf->fInfo.dwFlags & AVIFILEINFO_TRUSTCKTYPE)
      flags |= AVIIF_KEYFRAME;
    break;
  default:
    FUNC5(": unknown TWOCC 0x%04X found\n", FUNC4(ckid));
    break;
  };

  /* first frame is always a keyframe */
  if (This->lLastFrame == -1)
    flags |= AVIIF_KEYFRAME;

  if (This->sInfo.dwSuggestedBufferSize < size)
    This->sInfo.dwSuggestedBufferSize = size;

  /* get memory for index */
  if (This->idxFrames == NULL || This->lLastFrame + 1 >= This->nIdxFrames) {
    This->nIdxFrames += 512;
    if (This->idxFrames == NULL)
      This->idxFrames = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, This->nIdxFrames * sizeof(AVIINDEXENTRY));
      else
	This->idxFrames = FUNC3(FUNC1(), HEAP_ZERO_MEMORY, This->idxFrames,
			   This->nIdxFrames * sizeof(AVIINDEXENTRY));
    if (This->idxFrames == NULL)
      return AVIERR_MEMORY;
  }

  This->lLastFrame++;
  This->idxFrames[This->lLastFrame].ckid          = ckid;
  This->idxFrames[This->lLastFrame].dwFlags       = flags;
  This->idxFrames[This->lLastFrame].dwChunkOffset = offset;
  This->idxFrames[This->lLastFrame].dwChunkLength = size;

  /* update AVISTREAMINFO structure if necessary */
  if (This->sInfo.dwLength <= This->lLastFrame)
    This->sInfo.dwLength = This->lLastFrame + 1;

  return AVIERR_OK;
}