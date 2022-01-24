#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sInfo ;
struct TYPE_13__ {int dwStreams; int dwScale; int dwRate; scalar_t__ dwSuggestedBufferSize; scalar_t__ dwLength; scalar_t__ dwWidth; scalar_t__ dwHeight; } ;
struct TYPE_9__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_12__ {int dwScale; int dwRate; scalar_t__ dwSuggestedBufferSize; TYPE_1__ rcFrame; int /*<<< orphan*/  dwLength; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_2__ IAVIFile_iface; TYPE_5__ fInfo; int /*<<< orphan*/ * ppStreams; } ;
typedef  int /*<<< orphan*/  PAVISTREAM ;
typedef  TYPE_2__* PAVIFILE ;
typedef  TYPE_3__ ITmpFileImpl ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_4__ AVISTREAMINFOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  itmpft ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

PAVIFILE FUNC8(int nStreams, const PAVISTREAM *ppStreams)
{
  ITmpFileImpl *tmpFile;
  int           i;

  tmpFile = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, sizeof(ITmpFileImpl));
  if (tmpFile == NULL)
    return NULL;

  tmpFile->IAVIFile_iface.lpVtbl = &itmpft;
  tmpFile->ref    = 1;
  FUNC7(&tmpFile->fInfo, 0, sizeof(tmpFile->fInfo));

  tmpFile->fInfo.dwStreams = nStreams;
  tmpFile->ppStreams = FUNC4(FUNC3(), 0, nStreams * sizeof(PAVISTREAM));
  if (tmpFile->ppStreams == NULL) {
    FUNC5(FUNC3(), 0, tmpFile);
    return NULL;
  }

  for (i = 0; i < nStreams; i++) {
    AVISTREAMINFOW sInfo;

    tmpFile->ppStreams[i] = ppStreams[i];

    FUNC0(ppStreams[i]);
    FUNC1(ppStreams[i], &sInfo, sizeof(sInfo));
    if (i == 0) {
      tmpFile->fInfo.dwScale = sInfo.dwScale;
      tmpFile->fInfo.dwRate  = sInfo.dwRate;
      if (!sInfo.dwScale || !sInfo.dwRate) {
        tmpFile->fInfo.dwScale = 1;
        tmpFile->fInfo.dwRate  = 100;
      }
    }

    if (tmpFile->fInfo.dwSuggestedBufferSize < sInfo.dwSuggestedBufferSize)
      tmpFile->fInfo.dwSuggestedBufferSize = sInfo.dwSuggestedBufferSize;

    {
      DWORD tmp;

      tmp = FUNC6(FUNC2(ppStreams[i], sInfo.dwLength),
                   tmpFile->fInfo.dwScale, tmpFile->fInfo.dwRate * 1000);
      if (tmpFile->fInfo.dwLength < tmp)
        tmpFile->fInfo.dwLength = tmp;

      tmp = sInfo.rcFrame.right - sInfo.rcFrame.left;
      if (tmpFile->fInfo.dwWidth < tmp)
        tmpFile->fInfo.dwWidth = tmp;
      tmp = sInfo.rcFrame.bottom - sInfo.rcFrame.top;
      if (tmpFile->fInfo.dwHeight < tmp)
        tmpFile->fInfo.dwHeight = tmp;
    }
  }

  return &tmpFile->IAVIFile_iface;
}