#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/  cb; int /*<<< orphan*/  lp; } ;
struct TYPE_11__ {scalar_t__ ckid; scalar_t__ fccType; } ;
typedef  scalar_t__ MMRESULT ;
typedef  TYPE_1__ MMCKINFO ;
typedef  TYPE_2__* LPEXTRACHUNKS ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HMMIO ;
typedef  scalar_t__ FOURCC ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_FILEREAD ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FOURCC_LIST ; 
 scalar_t__ FOURCC_RIFF ; 
 scalar_t__ MMIOERR_CHUNKNOTFOUND ; 
 int MMIO_FINDCHUNK ; 
 int MMIO_FINDLIST ; 
 int MMIO_FINDRIFF ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ckidAVIPADDING ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char,char,char,char) ; 

HRESULT FUNC7(LPEXTRACHUNKS extra,HMMIO hmmio,MMCKINFO *lpck,
			       MMCKINFO *lpckParent,UINT flags)
{
  FOURCC  ckid;
  FOURCC  fccType;
  MMRESULT mmr;

  /* pre-conditions */
  FUNC3(extra != NULL);
  FUNC3(hmmio != NULL);
  FUNC3(lpck  != NULL);

  FUNC2("({%p,%u},%p,%p,%p,0x%X)\n", extra->lp, extra->cb, hmmio, lpck,
	lpckParent, flags);

  /* what chunk id and form/list type should we search? */
  if (flags & MMIO_FINDCHUNK) {
    ckid    = lpck->ckid;
    fccType = 0;
  } else if (flags & MMIO_FINDLIST) {
    ckid    = FOURCC_LIST;
    fccType = lpck->fccType;
  } else if (flags & MMIO_FINDRIFF) {
    ckid    = FOURCC_RIFF;
    fccType = lpck->fccType;
  } else
    ckid = fccType = (FOURCC)-1; /* collect everything into extra! */

  FUNC2(": find ckid=0x%08X fccType=0x%08X\n", ckid, fccType);

  for (;;) {
    mmr = FUNC5(hmmio, lpck, lpckParent, 0);
    if (mmr != MMSYSERR_NOERROR) {
      /* No extra chunks in front of desired chunk? */
      if (flags == 0 && mmr == MMIOERR_CHUNKNOTFOUND)
	return AVIERR_OK;
      else
        return AVIERR_FILEREAD;
    }

    /* Have we found what we search for? */
    if ((lpck->ckid == ckid) &&
	(fccType == 0 || lpck->fccType == fccType))
      return AVIERR_OK;

    /* Skip padding chunks, the others put into the extrachunk-structure */
    if (lpck->ckid == ckidAVIPADDING ||
	lpck->ckid == FUNC6('p','a','d','d'))
    {
      mmr = FUNC4(hmmio, lpck, 0);
      if (mmr != MMSYSERR_NOERROR) return AVIERR_FILEREAD;
    }
    else
    {
      HRESULT hr = FUNC1(extra, hmmio, lpck);
      if (FUNC0(hr))
        return hr;
    }
  }
}