
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enumerator {int log; int pEnumerator; } ;
struct device_desc {int dummy; } ;
typedef int IMMDevice ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IMMDeviceEnumerator_GetDefaultAudioEndpoint (int ,int ,int ,int **) ;
 int MP_ERR (struct enumerator*,char*,int ) ;
 int SAFE_RELEASE (int *) ;
 int eMultimedia ;
 int eRender ;
 struct device_desc* get_device_desc (int ,int *) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static struct device_desc *default_device_desc(struct enumerator *e)
{
    IMMDevice *pDevice = ((void*)0);
    HRESULT hr = IMMDeviceEnumerator_GetDefaultAudioEndpoint(
        e->pEnumerator, eRender, eMultimedia, &pDevice);
    if (FAILED(hr)) {
        MP_ERR(e, "Error from GetDefaultAudioEndpoint: %s\n",
               mp_HRESULT_to_str(hr));
        return ((void*)0);
    }
    struct device_desc *d = get_device_desc(e->log, pDevice);
    SAFE_RELEASE(pDevice);
    return d;
}
