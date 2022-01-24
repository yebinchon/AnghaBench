#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t dwChunkOffset; } ;
struct TYPE_10__ {size_t dwStreams; int dwFlags; } ;
struct TYPE_13__ {TYPE_3__** ppStreams; TYPE_1__ fInfo; int /*<<< orphan*/  hmmio; } ;
struct TYPE_11__ {scalar_t__ dwSampleSize; int dwSuggestedBufferSize; int dwLength; } ;
struct TYPE_12__ {int lLastFrame; int nIdxFrames; TYPE_2__ sInfo; TYPE_5__* idxFrames; } ;
typedef  int LONG ;
typedef  TYPE_3__ IAVIStreamImpl ;
typedef  TYPE_4__ IAVIFileImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HPSTR ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_5__ AVIINDEXENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_FILEREAD ; 
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int AVIFILEINFO_ISINTERLEAVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__ const*,TYPE_5__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int IDX_PER_BLOCK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC5 (int,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC7(const IAVIFileImpl *This, DWORD size, DWORD offset)
{
  AVIINDEXENTRY *lp;
  DWORD          pos, n;
  HRESULT        hr = AVIERR_OK;
  BOOL           bAbsolute = TRUE;

  lp = FUNC3(FUNC2(), 0, IDX_PER_BLOCK * sizeof(AVIINDEXENTRY));
  if (lp == NULL)
    return AVIERR_MEMORY;

  /* adjust limits for index tables, so that inserting will be faster */
  for (n = 0; n < This->fInfo.dwStreams; n++) {
    IAVIStreamImpl *pStream = This->ppStreams[n];

    pStream->lLastFrame = -1;

    if (pStream->idxFrames != NULL) {
      FUNC4(FUNC2(), 0, pStream->idxFrames);
      pStream->idxFrames  = NULL;
      pStream->nIdxFrames = 0;
    }

    if (pStream->sInfo.dwSampleSize != 0) {
      if (n > 0 && This->fInfo.dwFlags & AVIFILEINFO_ISINTERLEAVED) {
	pStream->nIdxFrames = This->ppStreams[0]->nIdxFrames;
      } else if (pStream->sInfo.dwSuggestedBufferSize) {
	pStream->nIdxFrames =
	  pStream->sInfo.dwLength / pStream->sInfo.dwSuggestedBufferSize;
      }
    } else
      pStream->nIdxFrames = pStream->sInfo.dwLength;

    pStream->idxFrames =
      FUNC3(FUNC2(), HEAP_ZERO_MEMORY, pStream->nIdxFrames * sizeof(AVIINDEXENTRY));
    if (pStream->idxFrames == NULL && pStream->nIdxFrames > 0) {
      pStream->nIdxFrames = 0;
      FUNC4(FUNC2(), 0, lp);
      return AVIERR_MEMORY;
    }
  }

  pos = (DWORD)-1;
  while (size != 0) {
    LONG read = FUNC5(IDX_PER_BLOCK * sizeof(AVIINDEXENTRY), size);

    if (FUNC6(This->hmmio, (HPSTR)lp, read) != read) {
      hr = AVIERR_FILEREAD;
      break;
    }
    size -= read;

    if (pos == (DWORD)-1)
      pos = offset - lp->dwChunkOffset + sizeof(DWORD);

    FUNC0(This, lp, read / sizeof(AVIINDEXENTRY),
		       pos, &bAbsolute);
  }

  FUNC4(FUNC2(), 0, lp);

  /* checking ... */
  for (n = 0; n < This->fInfo.dwStreams; n++) {
    IAVIStreamImpl *pStream = This->ppStreams[n];

    if (pStream->sInfo.dwSampleSize == 0 &&
	pStream->sInfo.dwLength != pStream->lLastFrame+1)
      FUNC1("stream %u length mismatch: dwLength=%u found=%d\n",
	   n, pStream->sInfo.dwLength, pStream->lLastFrame);
  }

  return hr;
}