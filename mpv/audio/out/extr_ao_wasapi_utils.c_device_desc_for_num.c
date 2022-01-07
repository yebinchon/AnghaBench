
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enumerator {int log; int pDevices; } ;
struct device_desc {int dummy; } ;
typedef int UINT ;
typedef int IMMDevice ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IMMDeviceCollection_Item (int ,int ,int **) ;
 int MP_ERR (struct enumerator*,char*,int ,int ) ;
 int SAFE_RELEASE (int *) ;
 struct device_desc* get_device_desc (int ,int *) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static struct device_desc *device_desc_for_num(struct enumerator *e, UINT i)
{
    IMMDevice *pDevice = ((void*)0);
    HRESULT hr = IMMDeviceCollection_Item(e->pDevices, i, &pDevice);
    if (FAILED(hr)) {
        MP_ERR(e, "Failed getting device #%d: %s\n", i, mp_HRESULT_to_str(hr));
        return ((void*)0);
    }
    struct device_desc *d = get_device_desc(e->log, pDevice);
    SAFE_RELEASE(pDevice);
    return d;
}
