
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int LPDIRECTSOUND8 ;
typedef scalar_t__ LPDIRECTSOUND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DS_OK ;
 scalar_t__ E_NOINTERFACE ;
 int IDirectSound8_Release (int ) ;
 scalar_t__ IDirectSoundImpl_Create (int *) ;
 int IDirectSound_IDirectSound_AddRef (scalar_t__) ;
 scalar_t__ IDirectSound_IDirectSound_Create (int ,scalar_t__*) ;
 int IID_IDirectSound ;
 int IID_IUnknown ;
 int IsEqualIID (int ,int *) ;
 int TRACE (char*,int ,scalar_t__*) ;
 int WARN (char*) ;
 int debugstr_guid (int ) ;
 int setup_dsound_options () ;

HRESULT DSOUND_Create(
    REFIID riid,
    LPDIRECTSOUND *ppDS)
{
    LPDIRECTSOUND8 pDS;
    HRESULT hr;
    TRACE("(%s, %p)\n", debugstr_guid(riid), ppDS);

    if (!IsEqualIID(riid, &IID_IUnknown) &&
        !IsEqualIID(riid, &IID_IDirectSound)) {
        *ppDS = 0;
        return E_NOINTERFACE;
    }


    setup_dsound_options();

    hr = IDirectSoundImpl_Create(&pDS);
    if (hr == DS_OK) {
        hr = IDirectSound_IDirectSound_Create(pDS, ppDS);
        if (*ppDS)
            IDirectSound_IDirectSound_AddRef(*ppDS);
        else {
            WARN("IDirectSound_IDirectSound_Create failed\n");
            IDirectSound8_Release(pDS);
        }
    } else {
        WARN("IDirectSoundImpl_Create failed\n");
        *ppDS = 0;
    }

    return hr;
}
