#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dwStart; scalar_t__ dwLength; int /*<<< orphan*/  dwSuggestedBufferSize; } ;
struct TYPE_9__ {scalar_t__ lLastFrame; scalar_t__* lpBuffer; scalar_t__ cbBuffer; TYPE_3__* paf; TYPE_2__* idxFrames; TYPE_1__ sInfo; } ;
struct TYPE_8__ {int /*<<< orphan*/ * hmmio; } ;
struct TYPE_7__ {scalar_t__ dwChunkLength; scalar_t__ ckid; scalar_t__ dwChunkOffset; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  TYPE_4__ IAVIStreamImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HPSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_FILEREAD ; 
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(IAVIStreamImpl *This, DWORD pos,
				 LPVOID buffer, DWORD size)
{
  /* pre-conditions */
  FUNC4(This != NULL);
  FUNC4(This->paf != NULL);
  FUNC4(This->paf->hmmio != NULL);
  FUNC4(This->sInfo.dwStart <= pos && pos < This->sInfo.dwLength);
  FUNC4(pos <= This->lLastFrame);

  /* should we read as much as block gives us? */
  if (size == 0 || size > This->idxFrames[pos].dwChunkLength)
    size = This->idxFrames[pos].dwChunkLength;

  /* read into out own buffer or given one? */
  if (buffer == NULL) {
    /* we also read the chunk */
    size += 2 * sizeof(DWORD);

    /* check that buffer is big enough -- don't trust dwSuggestedBufferSize */
    if (This->lpBuffer == NULL || This->cbBuffer < size) {
      DWORD maxSize = FUNC5(size, This->sInfo.dwSuggestedBufferSize);

      if (This->lpBuffer == NULL) {
	This->lpBuffer = FUNC2(FUNC1(), 0, maxSize);
        if (!This->lpBuffer) return AVIERR_MEMORY;
      } else {
        void *new_buffer = FUNC3(FUNC1(), 0, This->lpBuffer, maxSize);
        if (!new_buffer) return AVIERR_MEMORY;
        This->lpBuffer = new_buffer;
      }
      This->cbBuffer = maxSize;
    }

    /* now read the complete chunk into our buffer */
    if (FUNC7(This->paf->hmmio, This->idxFrames[pos].dwChunkOffset, SEEK_SET) == -1)
      return AVIERR_FILEREAD;
    if (FUNC6(This->paf->hmmio, (HPSTR)This->lpBuffer, size) != size)
      return AVIERR_FILEREAD;

    /* check if it was the correct block which we have read */
    if (This->lpBuffer[0] != This->idxFrames[pos].ckid ||
	This->lpBuffer[1] != This->idxFrames[pos].dwChunkLength) {
      FUNC0(": block %d not found at 0x%08X\n", pos, This->idxFrames[pos].dwChunkOffset);
      FUNC0(": Index says: '%4.4s'(0x%08X) size 0x%08X\n",
	  (char*)&This->idxFrames[pos].ckid, This->idxFrames[pos].ckid,
	  This->idxFrames[pos].dwChunkLength);
      FUNC0(": Data  says: '%4.4s'(0x%08X) size 0x%08X\n",
	  (char*)&This->lpBuffer[0], This->lpBuffer[0], This->lpBuffer[1]);
      return AVIERR_FILEREAD;
    }
  } else {
    if (FUNC7(This->paf->hmmio, This->idxFrames[pos].dwChunkOffset + 2 * sizeof(DWORD), SEEK_SET) == -1)
      return AVIERR_FILEREAD;
    if (FUNC6(This->paf->hmmio, buffer, size) != size)
      return AVIERR_FILEREAD;
  }

  return AVIERR_OK;
}