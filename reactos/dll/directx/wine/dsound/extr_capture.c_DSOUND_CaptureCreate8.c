
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef scalar_t__ LPDIRECTSOUNDCAPTURE8 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DS_OK ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ IDirectSoundCaptureImpl_Create (scalar_t__*) ;
 int IDirectSoundCapture_AddRef (scalar_t__) ;
 int IID_IDirectSoundCapture8 ;
 int IID_IUnknown ;
 int IsEqualIID (int ,int *) ;
 int TRACE (char*,int ,scalar_t__*) ;
 int WARN (char*) ;
 int debugstr_guid (int ) ;
 int setup_dsound_options () ;

HRESULT DSOUND_CaptureCreate8(
    REFIID riid,
    LPDIRECTSOUNDCAPTURE8 *ppDSC8)
{
    LPDIRECTSOUNDCAPTURE8 pDSC8;
    HRESULT hr;
    TRACE("(%s, %p)\n", debugstr_guid(riid), ppDSC8);

    if (!IsEqualIID(riid, &IID_IUnknown) &&
        !IsEqualIID(riid, &IID_IDirectSoundCapture8)) {
        *ppDSC8 = 0;
        return E_NOINTERFACE;
    }


    setup_dsound_options();

    hr = IDirectSoundCaptureImpl_Create(&pDSC8);
    if (hr == DS_OK) {
        IDirectSoundCapture_AddRef(pDSC8);
        *ppDSC8 = pDSC8;
    } else {
        WARN("IDirectSoundCaptureImpl_Create failed\n");
        *ppDSC8 = 0;
    }

    return hr;
}
