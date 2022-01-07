
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int handle; int d3d11_tex; int d3d11_device; int cy; int cx; } ;
struct TYPE_5__ {int Count; } ;
struct TYPE_6__ {int MipLevels; int ArraySize; int BindFlags; int MiscFlags; int Usage; TYPE_1__ SampleDesc; int Format; int Height; int Width; int member_0; } ;
typedef int IDXGIResource ;
typedef int HRESULT ;
typedef TYPE_2__ D3D11_TEXTURE2D_DESC ;


 int D3D11_BIND_RENDER_TARGET ;
 int D3D11_BIND_SHADER_RESOURCE ;
 int D3D11_RESOURCE_MISC_SHARED ;
 int D3D11_USAGE_DEFAULT ;
 int DXGI_FORMAT_B8G8R8A8_UNORM ;
 scalar_t__ FAILED (int ) ;
 int GUID_IDXGIResource ;
 int ID3D11Device_CreateTexture2D (int ,TYPE_2__*,int *,int *) ;
 int ID3D11Device_QueryInterface (int ,int *,void**) ;
 int IDXGIResource_GetSharedHandle (int *,int *) ;
 int IDXGIResource_Release (int *) ;
 TYPE_3__ data ;
 int hlog_hr (char*,int ) ;

__attribute__((used)) static inline bool gl_shtex_init_d3d11_tex(void)
{
 IDXGIResource *dxgi_res;
 HRESULT hr;

 D3D11_TEXTURE2D_DESC desc = {0};
 desc.Width = data.cx;
 desc.Height = data.cy;
 desc.MipLevels = 1;
 desc.ArraySize = 1;
 desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
 desc.SampleDesc.Count = 1;
 desc.Usage = D3D11_USAGE_DEFAULT;
 desc.MiscFlags = D3D11_RESOURCE_MISC_SHARED;
 desc.BindFlags = D3D11_BIND_RENDER_TARGET | D3D11_BIND_SHADER_RESOURCE;

 hr = ID3D11Device_CreateTexture2D(data.d3d11_device, &desc, ((void*)0),
       &data.d3d11_tex);
 if (FAILED(hr)) {
  hlog_hr("gl_shtex_init_d3d11_tex: failed to create texture",
   hr);
  return 0;
 }

 hr = ID3D11Device_QueryInterface(data.d3d11_tex, &GUID_IDXGIResource,
      (void **)&dxgi_res);
 if (FAILED(hr)) {
  hlog_hr("gl_shtex_init_d3d11_tex: failed to get IDXGIResource",
   hr);
  return 0;
 }

 hr = IDXGIResource_GetSharedHandle(dxgi_res, &data.handle);
 IDXGIResource_Release(dxgi_res);

 if (FAILED(hr)) {
  hlog_hr("gl_shtex_init_d3d11_tex: failed to get shared handle",
   hr);
  return 0;
 }

 return 1;
}
