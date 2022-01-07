
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pdsfd; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPUNKNOWN ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef TYPE_1__ IDirectSoundFullDuplex_IUnknown ;
typedef int IDirectSoundFullDuplexImpl ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int DirectSoundFullDuplex_Unknown_Vtbl ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int *,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSoundFullDuplex_IUnknown_Create(
    LPDIRECTSOUNDFULLDUPLEX pdsfd,
    LPUNKNOWN * ppunk)
{
    IDirectSoundFullDuplex_IUnknown * pdsfdunk;
    TRACE("(%p,%p)\n",pdsfd,ppunk);

    if (pdsfd == ((void*)0)) {
        ERR("invalid parameter: pdsfd == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (ppunk == ((void*)0)) {
        ERR("invalid parameter: ppunk == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    pdsfdunk = HeapAlloc(GetProcessHeap(),0,sizeof(*pdsfdunk));
    if (pdsfdunk == ((void*)0)) {
        WARN("out of memory\n");
        *ppunk = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pdsfdunk->lpVtbl = &DirectSoundFullDuplex_Unknown_Vtbl;
    pdsfdunk->ref = 0;
    pdsfdunk->pdsfd = (IDirectSoundFullDuplexImpl *)pdsfd;

    *ppunk = (LPUNKNOWN)pdsfdunk;

    return DS_OK;
}
