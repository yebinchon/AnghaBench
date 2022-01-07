
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * capture_device; } ;
struct TYPE_4__ {TYPE_2__* pdsfd; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef int * LPDIRECTSOUNDCAPTURE8 ;
typedef int * LPDIRECTSOUNDCAPTURE ;
typedef TYPE_1__ IDirectSoundFullDuplex_IDirectSoundCapture ;
typedef TYPE_2__ IDirectSoundFullDuplexImpl ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DSERR_UNINITIALIZED ;
 int DS_OK ;
 int DirectSoundFullDuplex_DirectSoundCapture_Vtbl ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int *,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSoundFullDuplex_IDirectSoundCapture_Create(
    LPDIRECTSOUNDFULLDUPLEX pdsfd,
    LPDIRECTSOUNDCAPTURE8 * ppdsc8)
{
    IDirectSoundFullDuplex_IDirectSoundCapture * pdsfddsc;
    TRACE("(%p,%p)\n",pdsfd,ppdsc8);

    if (pdsfd == ((void*)0)) {
        ERR("invalid parameter: pdsfd == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (ppdsc8 == ((void*)0)) {
        ERR("invalid parameter: ppdsc8 == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (((IDirectSoundFullDuplexImpl*)pdsfd)->capture_device == ((void*)0)) {
        WARN("not initialized\n");
        *ppdsc8 = ((void*)0);
        return DSERR_UNINITIALIZED;
    }

    pdsfddsc = HeapAlloc(GetProcessHeap(),0,sizeof(*pdsfddsc));
    if (pdsfddsc == ((void*)0)) {
        WARN("out of memory\n");
        *ppdsc8 = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pdsfddsc->lpVtbl = &DirectSoundFullDuplex_DirectSoundCapture_Vtbl;
    pdsfddsc->ref = 0;
    pdsfddsc->pdsfd = (IDirectSoundFullDuplexImpl *)pdsfd;

    *ppdsc8 = (LPDIRECTSOUNDCAPTURE)pdsfddsc;

    return DS_OK;
}
