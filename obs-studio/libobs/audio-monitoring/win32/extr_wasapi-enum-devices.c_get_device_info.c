
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int (* obs_enum_audio_device_cb ) (void*,char*,char*) ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_21__ {TYPE_1__* lpVtbl; } ;
struct TYPE_20__ {TYPE_2__* lpVtbl; } ;
struct TYPE_19__ {int * pwszVal; } ;
struct TYPE_18__ {int (* GetValue ) (TYPE_4__*,int *,TYPE_3__*) ;int (* OpenPropertyStore ) (TYPE_4__*,int ,TYPE_4__**) ;int (* GetId ) (TYPE_4__*,int **) ;} ;
struct TYPE_17__ {int (* Item ) (TYPE_5__*,int ,TYPE_4__**) ;} ;
typedef TYPE_3__ PROPVARIANT ;
typedef TYPE_4__ IPropertyStore ;
typedef TYPE_5__ IMMDeviceCollection ;
typedef TYPE_4__ IMMDevice ;
typedef int HRESULT ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int PKEY_Device_FriendlyName ;
 int PropVariantInit (TYPE_3__*) ;
 int STGM_READ ;
 int os_wcs_to_utf8 (int *,int ,char*,int) ;
 int safe_release (TYPE_4__*) ;
 int stub1 (TYPE_5__*,int ,TYPE_4__**) ;
 int stub2 (TYPE_4__*,int **) ;
 int stub3 (TYPE_4__*,int ,TYPE_4__**) ;
 int stub4 (TYPE_4__*,int *,TYPE_3__*) ;

__attribute__((used)) static bool get_device_info(obs_enum_audio_device_cb cb, void *data,
       IMMDeviceCollection *collection, UINT idx)
{
 IPropertyStore *store = ((void*)0);
 IMMDevice *device = ((void*)0);
 PROPVARIANT name_var;
 char utf8_name[512];
 WCHAR *w_id = ((void*)0);
 char utf8_id[512];
 bool cont = 1;
 HRESULT hr;

 hr = collection->lpVtbl->Item(collection, idx, &device);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = device->lpVtbl->GetId(device, &w_id);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = device->lpVtbl->OpenPropertyStore(device, STGM_READ, &store);
 if (FAILED(hr)) {
  goto fail;
 }

 PropVariantInit(&name_var);
 hr = store->lpVtbl->GetValue(store, &PKEY_Device_FriendlyName,
         &name_var);
 if (FAILED(hr)) {
  goto fail;
 }

 os_wcs_to_utf8(w_id, 0, utf8_id, 512);
 os_wcs_to_utf8(name_var.pwszVal, 0, utf8_name, 512);

 cont = cb(data, utf8_name, utf8_id);

fail:
 safe_release(store);
 safe_release(device);
 if (w_id)
  CoTaskMemFree(w_id);
 return cont;
}
