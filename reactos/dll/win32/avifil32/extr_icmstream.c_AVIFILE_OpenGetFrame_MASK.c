#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ biHeight; scalar_t__ biWidth; } ;
struct TYPE_22__ {int biSizeImage; int biHeight; } ;
struct TYPE_19__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_20__ {scalar_t__ fccHandler; int /*<<< orphan*/  dwSuggestedBufferSize; TYPE_1__ rcFrame; int /*<<< orphan*/  dwStart; } ;
struct TYPE_21__ {int lKeyFrameEvery; int dwICMFlags; TYPE_4__* lpbiPrev; TYPE_5__* lpbiOutput; int /*<<< orphan*/ * hic; void* lpPrev; TYPE_4__* lpbiCur; void* lpCur; scalar_t__ cbOutput; TYPE_2__ sInfo; int /*<<< orphan*/ * pg; int /*<<< orphan*/ * pStream; } ;
typedef  int /*<<< orphan*/ * LPBITMAPINFOHEADER ;
typedef  scalar_t__ LONG ;
typedef  TYPE_3__ IAVIStreamImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_BADFORMAT ; 
 int /*<<< orphan*/  AVIERR_COMPRESSOR ; 
 int /*<<< orphan*/  AVIERR_ERROR ; 
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ S_OK ; 
 int VIDCF_FASTTEMPORALC ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ comptypeDIB ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_5__*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC16(IAVIStreamImpl *This)
{
  LPBITMAPINFOHEADER lpbi;
  DWORD              size;

  /* pre-conditions */
  FUNC14(This != NULL);
  FUNC14(This->pStream != NULL);
  FUNC14(This->pg == NULL);

  This->pg = FUNC1(This->pStream, NULL);
  if (This->pg == NULL)
    return AVIERR_ERROR;

  /* When we only decompress this is enough */
  if (This->sInfo.fccHandler == comptypeDIB)
    return AVIERR_OK;

  FUNC14(This->hic != NULL);
  FUNC14(This->lpbiOutput == NULL);

  /* get input format */
  lpbi = FUNC0(This->pg, This->sInfo.dwStart);
  if (lpbi == NULL)
    return AVIERR_MEMORY;

  /* get memory for output format */
  size = FUNC9(This->hic, lpbi);
  if ((LONG)size < (LONG)sizeof(BITMAPINFOHEADER))
    return AVIERR_COMPRESSOR;
  This->lpbiOutput = FUNC5(FUNC4(), 0, size);
  if (This->lpbiOutput == NULL)
    return AVIERR_MEMORY;
  This->cbOutput = size;

  if (FUNC8(This->hic, lpbi, This->lpbiOutput) < S_OK)
    return AVIERR_BADFORMAT;

  /* update AVISTREAMINFO structure */
  This->sInfo.rcFrame.right  =
    This->sInfo.rcFrame.left + This->lpbiOutput->biWidth;
  This->sInfo.rcFrame.bottom =
    This->sInfo.rcFrame.top  + This->lpbiOutput->biHeight;
  This->sInfo.dwSuggestedBufferSize =
    FUNC10(This->hic, lpbi, This->lpbiOutput);

  /* prepare codec for compression */
  if (FUNC7(This->hic, lpbi, This->lpbiOutput) != S_OK)
    return AVIERR_COMPRESSOR;

  /* allocate memory for current frame */
  size += This->sInfo.dwSuggestedBufferSize;
  This->lpbiCur = FUNC5(FUNC4(), 0, size);
  if (This->lpbiCur == NULL)
    return AVIERR_MEMORY;
  FUNC15(This->lpbiCur, This->lpbiOutput, This->cbOutput);
  This->lpCur = FUNC2(This->lpbiCur);

  /* allocate memory for last frame if needed */
  if (This->lKeyFrameEvery != 1 &&
      (This->dwICMFlags & VIDCF_FASTTEMPORALC) == 0) {
    size = FUNC13(This->hic, This->lpbiOutput);
    This->lpbiPrev = FUNC5(FUNC4(), 0, size);
    if (This->lpbiPrev == NULL)
      return AVIERR_MEMORY;
    if (FUNC12(This->hic, This->lpbiOutput, This->lpbiPrev) < S_OK)
      return AVIERR_COMPRESSOR;

    if (This->lpbiPrev->biSizeImage == 0) {
      This->lpbiPrev->biSizeImage =
	FUNC3(*This->lpbiPrev) * This->lpbiPrev->biHeight;
    }

    /* get memory for format and picture */
    size += This->lpbiPrev->biSizeImage;
    This->lpbiPrev = FUNC6(FUNC4(), 0, This->lpbiPrev, size );
    if (This->lpbiPrev == NULL)
      return AVIERR_MEMORY;
    This->lpPrev = FUNC2(This->lpbiPrev);

    /* prepare codec also for decompression */
    if (FUNC11(This->hic,This->lpbiOutput,This->lpbiPrev) != S_OK)
      return AVIERR_COMPRESSOR;
  }

  return AVIERR_OK;
}