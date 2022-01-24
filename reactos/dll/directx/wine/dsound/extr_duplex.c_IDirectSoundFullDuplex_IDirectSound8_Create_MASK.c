#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * renderer_device; } ;
struct TYPE_4__ {TYPE_2__* pdsfd; scalar_t__ ref; int /*<<< orphan*/ * lpVtbl; } ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDFULLDUPLEX ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSoundFullDuplex_IDirectSound8 ;
typedef  TYPE_2__ IDirectSoundFullDuplexImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSERR_INVALIDPARAM ; 
 int /*<<< orphan*/  DSERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DSERR_UNINITIALIZED ; 
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  DirectSoundFullDuplex_DirectSound8_Vtbl ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static HRESULT FUNC5(
    LPDIRECTSOUNDFULLDUPLEX pdsfd,
    LPDIRECTSOUND8 * ppds8)
{
    IDirectSoundFullDuplex_IDirectSound8 * pdsfdds8;
    FUNC3("(%p,%p)\n",pdsfd,ppds8);

    if (pdsfd == NULL) {
        FUNC0("invalid parameter: pdsfd == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (ppds8 == NULL) {
        FUNC0("invalid parameter: ppds8 == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (((IDirectSoundFullDuplexImpl*)pdsfd)->renderer_device == NULL) {
        FUNC4("not initialized\n");
        *ppds8 = NULL;
        return DSERR_UNINITIALIZED;
    }

    pdsfdds8 = FUNC2(FUNC1(),0,sizeof(*pdsfdds8));
    if (pdsfdds8 == NULL) {
        FUNC4("out of memory\n");
        *ppds8 = NULL;
        return DSERR_OUTOFMEMORY;
    }

    pdsfdds8->lpVtbl = &DirectSoundFullDuplex_DirectSound8_Vtbl;
    pdsfdds8->ref = 0;
    pdsfdds8->pdsfd = (IDirectSoundFullDuplexImpl *)pdsfd;

    *ppds8 = (LPDIRECTSOUND8)pdsfdds8;

    return DS_OK;
}