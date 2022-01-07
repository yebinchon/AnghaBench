
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int * lpVtbl; int bDirectSound8; } ;
typedef scalar_t__ LPDIRECTSOUND8 ;
typedef int LPCGUID ;
typedef TYPE_1__* LPCDirectSoundImpl ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef int CDirectSoundImpl ;
typedef int BOOL ;


 int DPRINT (char*,scalar_t__) ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_OUTOFMEMORY ;
 scalar_t__ DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 scalar_t__ IDirectSound8_Initialize (scalar_t__,int ) ;
 int IDirectSound8_Release (scalar_t__) ;
 int SUCCEEDED (scalar_t__) ;
 int vt_DirectSound8 ;

HRESULT
InternalDirectSoundCreate(
    LPCGUID lpcGUID,
    LPDIRECTSOUND8 *ppDS,
    IUnknown *pUnkOuter,
    BOOL bDirectSound8)
{
    LPCDirectSoundImpl This;
    HRESULT hr;

    if (!ppDS || pUnkOuter != ((void*)0))
    {

        return DSERR_INVALIDPARAM;
    }


    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundImpl));
    if (!This)
    {

        return DSERR_OUTOFMEMORY;
    }


    This->ref = 1;
    This->bDirectSound8 = bDirectSound8;
    This->lpVtbl = &vt_DirectSound8;



    hr = IDirectSound8_Initialize((LPDIRECTSOUND8)&This->lpVtbl, lpcGUID);


    if (!SUCCEEDED(hr))
    {

        DPRINT("Failed to initialize DirectSound object with %x\n", hr);
        IDirectSound8_Release((LPDIRECTSOUND8)&This->lpVtbl);
        return hr;
    }


    *ppDS = (LPDIRECTSOUND8)&This->lpVtbl;
    DPRINT("DirectSound object %p\n", *ppDS);
    return DS_OK;
}
