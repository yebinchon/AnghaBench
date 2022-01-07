
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int obs_enum_audio_device_cb ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* lpVtbl; } ;
struct TYPE_10__ {int (* GetCount ) (TYPE_2__*,scalar_t__*) ;int (* EnumAudioEndpoints ) (TYPE_2__*,int ,int ,TYPE_2__**) ;} ;
typedef TYPE_2__ IMMDeviceEnumerator ;
typedef TYPE_2__ IMMDeviceCollection ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *,int *,int ,int *,TYPE_2__**) ;
 int DEVICE_STATE_ACTIVE ;
 scalar_t__ FAILED (int ) ;
 int IID_IMMDeviceEnumerator ;
 int eRender ;
 int get_device_info (int ,void*,TYPE_2__*,scalar_t__) ;
 int safe_release (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ,TYPE_2__**) ;
 int stub2 (TYPE_2__*,scalar_t__*) ;

void obs_enum_audio_monitoring_devices(obs_enum_audio_device_cb cb, void *data)
{
 IMMDeviceEnumerator *enumerator = ((void*)0);
 IMMDeviceCollection *collection = ((void*)0);
 UINT count;
 HRESULT hr;

 hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
         &IID_IMMDeviceEnumerator, &enumerator);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = enumerator->lpVtbl->EnumAudioEndpoints(
  enumerator, eRender, DEVICE_STATE_ACTIVE, &collection);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = collection->lpVtbl->GetCount(collection, &count);
 if (FAILED(hr)) {
  goto fail;
 }

 for (UINT i = 0; i < count; i++) {
  if (!get_device_info(cb, data, collection, i)) {
   break;
  }
 }

fail:
 safe_release(enumerator);
 safe_release(collection);
}
