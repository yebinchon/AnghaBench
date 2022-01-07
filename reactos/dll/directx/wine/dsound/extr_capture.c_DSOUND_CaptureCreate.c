
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef scalar_t__ LPDIRECTSOUNDCAPTURE ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DS_OK ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ IDirectSoundCaptureImpl_Create (scalar_t__*) ;
 int IDirectSoundCapture_AddRef (scalar_t__) ;
 int IID_IDirectSoundCapture ;
 int IID_IUnknown ;
 int IsEqualIID (int ,int *) ;
 int TRACE (char*,int ,scalar_t__*) ;
 int WARN (char*) ;
 int debugstr_guid (int ) ;
 int setup_dsound_options () ;

HRESULT DSOUND_CaptureCreate(
    REFIID riid,
    LPDIRECTSOUNDCAPTURE *ppDSC)
{
    LPDIRECTSOUNDCAPTURE pDSC;
    HRESULT hr;
    TRACE("(%s, %p)\n", debugstr_guid(riid), ppDSC);

    if (!IsEqualIID(riid, &IID_IUnknown) &&
        !IsEqualIID(riid, &IID_IDirectSoundCapture)) {
        *ppDSC = 0;
        return E_NOINTERFACE;
    }


    setup_dsound_options();

    hr = IDirectSoundCaptureImpl_Create(&pDSC);
    if (hr == DS_OK) {
        IDirectSoundCapture_AddRef(pDSC);
        *ppDSC = pDSC;
    } else {
        WARN("IDirectSoundCaptureImpl_Create failed\n");
        *ppDSC = 0;
    }

    return hr;
}
