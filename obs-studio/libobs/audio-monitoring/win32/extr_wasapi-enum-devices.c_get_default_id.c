
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_14__ {TYPE_2__* lpVtbl; } ;
struct TYPE_13__ {TYPE_1__* lpVtbl; } ;
struct TYPE_12__ {int (* Release ) (TYPE_4__*) ;int (* GetId ) (TYPE_4__*,int **) ;} ;
struct TYPE_11__ {int (* Release ) (TYPE_3__*) ;int (* GetDefaultAudioEndpoint ) (TYPE_3__*,int ,int ,TYPE_4__**) ;} ;
typedef TYPE_3__ IMMDeviceEnumerator ;
typedef TYPE_4__ IMMDevice ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *,int *,int ,int *,TYPE_3__**) ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int IID_IMMDeviceEnumerator ;
 char* bzalloc (int) ;
 int eConsole ;
 int eRender ;
 int os_wcs_to_utf8_ptr (int *,int ,char**) ;
 int stub1 (TYPE_3__*,int ,int ,TYPE_4__**) ;
 int stub2 (TYPE_4__*,int **) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_4__*) ;

__attribute__((used)) static void get_default_id(char **p_id)
{
 IMMDeviceEnumerator *immde = ((void*)0);
 IMMDevice *device = ((void*)0);
 WCHAR *w_id = ((void*)0);
 HRESULT hr;

 if (*p_id)
  return;

 hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
         &IID_IMMDeviceEnumerator, &immde);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = immde->lpVtbl->GetDefaultAudioEndpoint(immde, eRender, eConsole,
          &device);
 if (FAILED(hr)) {
  goto fail;
 }

 hr = device->lpVtbl->GetId(device, &w_id);
 if (FAILED(hr)) {
  goto fail;
 }

 os_wcs_to_utf8_ptr(w_id, 0, p_id);

fail:
 if (!*p_id)
  *p_id = bzalloc(1);
 if (immde)
  immde->lpVtbl->Release(immde);
 if (device)
  device->lpVtbl->Release(device);
 if (w_id)
  CoTaskMemFree(w_id);
}
