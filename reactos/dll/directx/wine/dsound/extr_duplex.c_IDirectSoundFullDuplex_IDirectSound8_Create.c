
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * renderer_device; } ;
struct TYPE_4__ {TYPE_2__* pdsfd; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef int * LPDIRECTSOUND8 ;
typedef TYPE_1__ IDirectSoundFullDuplex_IDirectSound8 ;
typedef TYPE_2__ IDirectSoundFullDuplexImpl ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DSERR_UNINITIALIZED ;
 int DS_OK ;
 int DirectSoundFullDuplex_DirectSound8_Vtbl ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int *,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSoundFullDuplex_IDirectSound8_Create(
    LPDIRECTSOUNDFULLDUPLEX pdsfd,
    LPDIRECTSOUND8 * ppds8)
{
    IDirectSoundFullDuplex_IDirectSound8 * pdsfdds8;
    TRACE("(%p,%p)\n",pdsfd,ppds8);

    if (pdsfd == ((void*)0)) {
        ERR("invalid parameter: pdsfd == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (ppds8 == ((void*)0)) {
        ERR("invalid parameter: ppds8 == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (((IDirectSoundFullDuplexImpl*)pdsfd)->renderer_device == ((void*)0)) {
        WARN("not initialized\n");
        *ppds8 = ((void*)0);
        return DSERR_UNINITIALIZED;
    }

    pdsfdds8 = HeapAlloc(GetProcessHeap(),0,sizeof(*pdsfdds8));
    if (pdsfdds8 == ((void*)0)) {
        WARN("out of memory\n");
        *ppds8 = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pdsfdds8->lpVtbl = &DirectSoundFullDuplex_DirectSound8_Vtbl;
    pdsfdds8->ref = 0;
    pdsfdds8->pdsfd = (IDirectSoundFullDuplexImpl *)pdsfd;

    *ppds8 = (LPDIRECTSOUND8)pdsfdds8;

    return DS_OK;
}
