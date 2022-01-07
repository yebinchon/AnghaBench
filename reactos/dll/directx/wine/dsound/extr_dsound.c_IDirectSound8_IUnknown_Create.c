
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pds; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPUNKNOWN ;
typedef int * LPDIRECTSOUND8 ;
typedef TYPE_1__ IDirectSound8_IUnknown ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int DirectSound8_Unknown_Vtbl ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectSoundImpl_AddRef (int *) ;
 int TRACE (char*,int *,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSound8_IUnknown_Create(
    LPDIRECTSOUND8 pds,
    LPUNKNOWN * ppunk)
{
    IDirectSound8_IUnknown * pdsunk;
    TRACE("(%p,%p)\n",pds,ppunk);

    if (ppunk == ((void*)0)) {
        ERR("invalid parameter: ppunk == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (pds == ((void*)0)) {
        ERR("invalid parameter: pds == NULL\n");
        *ppunk = ((void*)0);
        return DSERR_INVALIDPARAM;
    }

    pdsunk = HeapAlloc(GetProcessHeap(),0,sizeof(*pdsunk));
    if (pdsunk == ((void*)0)) {
        WARN("out of memory\n");
        *ppunk = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pdsunk->lpVtbl = &DirectSound8_Unknown_Vtbl;
    pdsunk->ref = 0;
    pdsunk->pds = pds;

    IDirectSoundImpl_AddRef(pds);
    *ppunk = (LPUNKNOWN)pdsunk;

    return DS_OK;
}
