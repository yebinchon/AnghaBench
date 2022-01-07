
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int * lpVtbl; } ;
typedef scalar_t__ LPDIRECTSOUNDCAPTURE8 ;
typedef int LPDIRECTSOUND8 ;
typedef int LPCGUID ;
typedef TYPE_1__* LPCDirectSoundCaptureImpl ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int CDirectSoundCaptureImpl ;


 int DPRINT (char*,scalar_t__) ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_OUTOFMEMORY ;
 scalar_t__ DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 scalar_t__ IDirectSoundCapture_Initialize (scalar_t__,int ) ;
 int IDirectSoundCapture_Release (int ) ;
 int SUCCEEDED (scalar_t__) ;
 int vt_DirectSoundCapture ;

HRESULT
InternalDirectSoundCaptureCreate(
    LPCGUID lpcGUID,
    LPDIRECTSOUNDCAPTURE8 *ppDS,
    IUnknown *pUnkOuter)
{
    LPCDirectSoundCaptureImpl This;
    HRESULT hr;

    if (!ppDS || pUnkOuter != ((void*)0))
    {

        return DSERR_INVALIDPARAM;
    }


    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundCaptureImpl));
    if (!This)
    {

        return DSERR_OUTOFMEMORY;
    }


    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundCapture;



    hr = IDirectSoundCapture_Initialize((LPDIRECTSOUNDCAPTURE8)&This->lpVtbl, lpcGUID);


    if (!SUCCEEDED(hr))
    {

        DPRINT("Failed to initialize DirectSoundCapture object with %x\n", hr);
        IDirectSoundCapture_Release((LPDIRECTSOUND8)&This->lpVtbl);
        return hr;
    }


    *ppDS = (LPDIRECTSOUNDCAPTURE8)&This->lpVtbl;
    DPRINT("DirectSoundCapture object %p\n", *ppDS);
    return DS_OK;
}
