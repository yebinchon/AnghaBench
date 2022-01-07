
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pds; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPDIRECTSOUND8 ;
typedef int * LPDIRECTSOUND ;
typedef TYPE_1__ IDirectSound8_IDirectSound ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int DirectSound8_DirectSound_Vtbl ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectSoundImpl_AddRef (int *) ;
 int TRACE (char*,int *,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSound8_IDirectSound_Create(
    LPDIRECTSOUND8 pds,
    LPDIRECTSOUND * ppds)
{
    IDirectSound8_IDirectSound * pdsds;
    TRACE("(%p,%p)\n",pds,ppds);

    if (ppds == ((void*)0)) {
        ERR("invalid parameter: ppds == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (pds == ((void*)0)) {
        ERR("invalid parameter: pds == NULL\n");
        *ppds = ((void*)0);
        return DSERR_INVALIDPARAM;
    }

    pdsds = HeapAlloc(GetProcessHeap(),0,sizeof(*pdsds));
    if (pdsds == ((void*)0)) {
        WARN("out of memory\n");
        *ppds = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pdsds->lpVtbl = &DirectSound8_DirectSound_Vtbl;
    pdsds->ref = 0;
    pdsds->pds = pds;

    IDirectSoundImpl_AddRef(pds);
    *ppds = (LPDIRECTSOUND)pdsds;

    return DS_OK;
}
