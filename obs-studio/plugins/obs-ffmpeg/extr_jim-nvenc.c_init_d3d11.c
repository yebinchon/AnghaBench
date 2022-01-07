
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct nvenc_data {int * context; int * device; } ;
typedef int obs_data_t ;
struct TYPE_14__ {TYPE_1__* lpVtbl; } ;
struct TYPE_13__ {TYPE_2__* lpVtbl; } ;
struct TYPE_12__ {int (* Release ) (TYPE_3__*) ;} ;
struct TYPE_11__ {int (* Release ) (TYPE_4__*) ;int (* EnumAdapters ) (TYPE_4__*,int ,TYPE_3__**) ;} ;
typedef int (* PFN_D3D11_CREATE_DEVICE ) (TYPE_3__*,int ,int *,int ,int *,int ,int ,int **,int *,int **) ;
typedef TYPE_4__ IDXGIFactory1 ;
typedef TYPE_3__ IDXGIAdapter ;
typedef int ID3D11DeviceContext ;
typedef int ID3D11Device ;
typedef int HRESULT ;
typedef int HMODULE ;
typedef int (* CREATEDXGIFACTORY1PROC ) (int *,TYPE_4__**) ;


 int D3D11_SDK_VERSION ;
 int D3D_DRIVER_TYPE_UNKNOWN ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int IID_IDXGIFactory1 ;
 int error (char*) ;
 int error_hr (char*) ;
 int get_lib (struct nvenc_data*,char*) ;
 int stub1 (TYPE_4__*,int ,TYPE_3__**) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_3__*) ;

__attribute__((used)) static bool init_d3d11(struct nvenc_data *enc, obs_data_t *settings)
{
 HMODULE dxgi = get_lib(enc, "DXGI.dll");
 HMODULE d3d11 = get_lib(enc, "D3D11.dll");
 CREATEDXGIFACTORY1PROC create_dxgi;
 PFN_D3D11_CREATE_DEVICE create_device;
 IDXGIFactory1 *factory;
 IDXGIAdapter *adapter;
 ID3D11Device *device;
 ID3D11DeviceContext *context;
 HRESULT hr;

 if (!dxgi || !d3d11) {
  return 0;
 }

 create_dxgi = (CREATEDXGIFACTORY1PROC)GetProcAddress(
  dxgi, "CreateDXGIFactory1");
 create_device = (PFN_D3D11_CREATE_DEVICE)GetProcAddress(
  d3d11, "D3D11CreateDevice");

 if (!create_dxgi || !create_device) {
  error("Failed to load D3D11/DXGI procedures");
  return 0;
 }

 hr = create_dxgi(&IID_IDXGIFactory1, &factory);
 if (FAILED(hr)) {
  error_hr("CreateDXGIFactory1 failed");
  return 0;
 }

 hr = factory->lpVtbl->EnumAdapters(factory, 0, &adapter);
 factory->lpVtbl->Release(factory);
 if (FAILED(hr)) {
  error_hr("EnumAdapters failed");
  return 0;
 }

 hr = create_device(adapter, D3D_DRIVER_TYPE_UNKNOWN, ((void*)0), 0, ((void*)0), 0,
      D3D11_SDK_VERSION, &device, ((void*)0), &context);
 adapter->lpVtbl->Release(adapter);
 if (FAILED(hr)) {
  error_hr("D3D11CreateDevice failed");
  return 0;
 }

 enc->device = device;
 enc->context = context;
 return 1;
}
