#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ref; int /*<<< orphan*/ * lpVtbl; } ;
typedef  scalar_t__ LPDIRECTSOUNDCAPTURE8 ;
typedef  int /*<<< orphan*/  LPDIRECTSOUND8 ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  TYPE_1__* LPCDirectSoundCaptureImpl ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CDirectSoundCaptureImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ DSERR_INVALIDPARAM ; 
 scalar_t__ DSERR_OUTOFMEMORY ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  vt_DirectSoundCapture ; 

HRESULT
FUNC6(
    LPCGUID lpcGUID,
    LPDIRECTSOUNDCAPTURE8 *ppDS,
    IUnknown *pUnkOuter)
{
    LPCDirectSoundCaptureImpl This;
    HRESULT hr;

    if (!ppDS || pUnkOuter != NULL)
    {
        /* invalid parameter passed */
        return DSERR_INVALIDPARAM;
    }

    /* allocate CDirectSoundCaptureImpl struct */
    This = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundCaptureImpl));
    if (!This)
    {
        /* not enough memory */
        return DSERR_OUTOFMEMORY;
    }

    /* initialize IDirectSoundCapture object */
    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundCapture;


    /* initialize direct sound interface */
    hr = FUNC3((LPDIRECTSOUNDCAPTURE8)&This->lpVtbl, lpcGUID);

    /* check for success */
    if (!FUNC5(hr))
    {
        /* failed */
        FUNC0("Failed to initialize DirectSoundCapture object with %x\n", hr);
        FUNC4((LPDIRECTSOUND8)&This->lpVtbl);
        return hr;
    }

    /* store result */
    *ppDS = (LPDIRECTSOUNDCAPTURE8)&This->lpVtbl;
    FUNC0("DirectSoundCapture object %p\n", *ppDS);
    return DS_OK;
}