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
struct TYPE_3__ {int /*<<< orphan*/ * pds; scalar_t__ ref; int /*<<< orphan*/ * lpVtbl; } ;
typedef  int /*<<< orphan*/ * LPUNKNOWN ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSound8_IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSERR_INVALIDPARAM ; 
 int /*<<< orphan*/  DSERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  DirectSound8_Unknown_Vtbl ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static HRESULT FUNC6(
    LPDIRECTSOUND8 pds,
    LPUNKNOWN * ppunk)
{
    IDirectSound8_IUnknown * pdsunk;
    FUNC4("(%p,%p)\n",pds,ppunk);

    if (ppunk == NULL) {
        FUNC0("invalid parameter: ppunk == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (pds == NULL) {
        FUNC0("invalid parameter: pds == NULL\n");
        *ppunk = NULL;
        return DSERR_INVALIDPARAM;
    }

    pdsunk = FUNC2(FUNC1(),0,sizeof(*pdsunk));
    if (pdsunk == NULL) {
        FUNC5("out of memory\n");
        *ppunk = NULL;
        return DSERR_OUTOFMEMORY;
    }

    pdsunk->lpVtbl = &DirectSound8_Unknown_Vtbl;
    pdsunk->ref = 0;
    pdsunk->pds = pds;

    FUNC3(pds);
    *ppunk = (LPUNKNOWN)pdsunk;

    return DS_OK;
}