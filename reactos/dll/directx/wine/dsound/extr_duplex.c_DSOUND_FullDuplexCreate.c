
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int * renderer_device; int * capture_device; int * lpVtbl; } ;
typedef int REFIID ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef TYPE_1__ IDirectSoundFullDuplexImpl ;
typedef int HRESULT ;


 int DSERR_INVALIDPARAM ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int E_NOINTERFACE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IID_IDirectSoundFullDuplex ;
 int IID_IUnknown ;
 int IsEqualIID (int ,int *) ;
 int TRACE (char*,int ,int **) ;
 int WARN (char*) ;
 int debugstr_guid (int ) ;
 int dsfdvt ;
 int setup_dsound_options () ;

HRESULT DSOUND_FullDuplexCreate(
    REFIID riid,
    LPDIRECTSOUNDFULLDUPLEX* ppDSFD)
{
    IDirectSoundFullDuplexImpl *This = ((void*)0);
    TRACE("(%s, %p)\n", debugstr_guid(riid), ppDSFD);

    if (ppDSFD == ((void*)0)) {
        WARN("invalid parameter: ppDSFD == NULL\n");
        return DSERR_INVALIDPARAM;
    }

    if (!IsEqualIID(riid, &IID_IUnknown) &&
        !IsEqualIID(riid, &IID_IDirectSoundFullDuplex)) {
        *ppDSFD = 0;
        return E_NOINTERFACE;
    }


    setup_dsound_options();

    This = HeapAlloc(GetProcessHeap(),
        HEAP_ZERO_MEMORY, sizeof(IDirectSoundFullDuplexImpl));

    if (This == ((void*)0)) {
        WARN("out of memory\n");
        *ppDSFD = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    This->lpVtbl = &dsfdvt;
    This->ref = 1;
    This->capture_device = ((void*)0);
    This->renderer_device = ((void*)0);

    *ppDSFD = (LPDIRECTSOUNDFULLDUPLEX)This;

    return DS_OK;
}
