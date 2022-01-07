
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int desc ;
struct TYPE_4__ {int ViewDimension; int Format; } ;
typedef int ID3D11Texture2D ;
typedef int ID3D11Resource ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ D3D11_RENDER_TARGET_VIEW_DESC ;


 int D3D11_RTV_DIMENSION_TEXTURE2D ;
 scalar_t__ DXGI_ERROR_DEVICE_REMOVED ;
 scalar_t__ DXGI_ERROR_DEVICE_RESET ;
 scalar_t__ DXGI_ERROR_DRIVER_INTERNAL_ERROR ;
 int DXGI_FORMAT_R8G8B8A8_UNORM ;
 int DXGI_FORMAT_UNKNOWN ;
 int ID3D11DeviceContext_OMSetRenderTargets (int ,int ,int *,int *) ;
 scalar_t__ ID3D11Device_CreateRenderTargetView (int ,int *,TYPE_1__*,scalar_t__*) ;
 int ID3D11RenderTargetView_Release (scalar_t__) ;
 int ID3D11Texture2D_Release (int *) ;
 scalar_t__ IDXGISwapChain_GetBuffer (int ,int ,int *,void**) ;
 scalar_t__ IDXGISwapChain_ResizeBuffers (int ,int ,int,int,int ,int ) ;
 int IID_ID3D11Texture2D ;
 int MessageBoxW (int *,char*,char*,int ) ;
 int SUCCEEDED (scalar_t__) ;
 int assert (int ) ;
 int context ;
 int device ;
 int exit (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ rt_view ;
 int swap_chain ;

__attribute__((used)) static void
set_swap_chain_size(int width, int height)
{
    ID3D11Texture2D *back_buffer;
    D3D11_RENDER_TARGET_VIEW_DESC desc;
    HRESULT hr;

    if (rt_view)
        ID3D11RenderTargetView_Release(rt_view);

    ID3D11DeviceContext_OMSetRenderTargets(context, 0, ((void*)0), ((void*)0));

    hr = IDXGISwapChain_ResizeBuffers(swap_chain, 0, width, height, DXGI_FORMAT_UNKNOWN, 0);
    if (hr == DXGI_ERROR_DEVICE_REMOVED || hr == DXGI_ERROR_DEVICE_RESET || hr == DXGI_ERROR_DRIVER_INTERNAL_ERROR)
    {

        MessageBoxW(((void*)0), L"DXGI device is removed or reset!", L"Error", 0);
        exit(0);
    }
    assert(SUCCEEDED(hr));

    memset(&desc, 0, sizeof(desc));
    desc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
    desc.ViewDimension = D3D11_RTV_DIMENSION_TEXTURE2D;

    hr = IDXGISwapChain_GetBuffer(swap_chain, 0, &IID_ID3D11Texture2D, (void **)&back_buffer);
    assert(SUCCEEDED(hr));

    hr = ID3D11Device_CreateRenderTargetView(device, (ID3D11Resource *)back_buffer, &desc, &rt_view);
    assert(SUCCEEDED(hr));

    ID3D11Texture2D_Release(back_buffer);
}
