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
typedef  int /*<<< orphan*/  LPDIRECTSOUND8 ;
typedef  scalar_t__ LPDIRECTSOUND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

HRESULT FUNC9(
    REFIID riid,
    LPDIRECTSOUND *ppDS)
{
    LPDIRECTSOUND8 pDS;
    HRESULT hr;
    FUNC5("(%s, %p)\n", FUNC7(riid), ppDS);

    if (!FUNC4(riid, &IID_IUnknown) &&
        !FUNC4(riid, &IID_IDirectSound)) {
        *ppDS = 0;
        return E_NOINTERFACE;
    }

    /* Get dsound configuration */
    FUNC8();

    hr = FUNC1(&pDS);
    if (hr == DS_OK) {
        hr = FUNC3(pDS, ppDS);
        if (*ppDS)
            FUNC2(*ppDS);
        else {
            FUNC6("IDirectSound_IDirectSound_Create failed\n");
            FUNC0(pDS);
        }
    } else {
        FUNC6("IDirectSoundImpl_Create failed\n");
        *ppDS = 0;
    }

    return hr;
}