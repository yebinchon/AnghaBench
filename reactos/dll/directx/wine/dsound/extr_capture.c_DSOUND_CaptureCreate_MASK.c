#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  REFIID ;
typedef  scalar_t__ LPDIRECTSOUNDCAPTURE ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IDirectSoundCapture ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

HRESULT FUNC7(
    REFIID riid,
    LPDIRECTSOUNDCAPTURE *ppDSC)
{
    LPDIRECTSOUNDCAPTURE pDSC;
    HRESULT hr;
    FUNC3("(%s, %p)\n", FUNC5(riid), ppDSC);

    if (!FUNC2(riid, &IID_IUnknown) &&
        !FUNC2(riid, &IID_IDirectSoundCapture)) {
        *ppDSC = 0;
        return E_NOINTERFACE;
    }

    /* Get dsound configuration */
    FUNC6();

    hr = FUNC0(&pDSC);
    if (hr == DS_OK) {
        FUNC1(pDSC);
        *ppDSC = pDSC;
    } else {
        FUNC4("IDirectSoundCaptureImpl_Create failed\n");
        *ppDSC = 0;
    }

    return hr;
}