
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
typedef int LPWSTR ;
typedef int IMMDeviceEnumerator ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXIT_ON_ERROR (int ) ;
 scalar_t__ FAILED (int ) ;
 int IID_IMMDeviceEnumerator ;
 int IMMDeviceEnumerator_GetDevice (int *,int ,int **) ;
 int SAFE_RELEASE (int *) ;
 int SUCCEEDED (int ) ;
 int mp_HRESULT_to_str (int ) ;
 int mp_err (struct mp_log*,char*,int ) ;

__attribute__((used)) static bool load_device(struct mp_log *l,
                           IMMDevice **ppDevice, LPWSTR deviceID)
{
    IMMDeviceEnumerator *pEnumerator = ((void*)0);
    HRESULT hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
                                  &IID_IMMDeviceEnumerator,
                                  (void **)&pEnumerator);
    EXIT_ON_ERROR(hr);

    hr = IMMDeviceEnumerator_GetDevice(pEnumerator, deviceID, ppDevice);
    EXIT_ON_ERROR(hr);

exit_label:
    if (FAILED(hr))
        mp_err(l, "Error loading selected device: %s\n", mp_HRESULT_to_str(hr));
    SAFE_RELEASE(pEnumerator);
    return SUCCEEDED(hr);
}
