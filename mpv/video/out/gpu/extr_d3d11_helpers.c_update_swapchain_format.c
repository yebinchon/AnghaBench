
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_4__ {int Height; int Width; } ;
struct TYPE_5__ {TYPE_1__ BufferDesc; } ;
typedef int IDXGISwapChain ;
typedef int HRESULT ;
typedef TYPE_2__ DXGI_SWAP_CHAIN_DESC ;
typedef int DXGI_FORMAT ;


 scalar_t__ FAILED (int ) ;
 int IDXGISwapChain_GetDesc (int *,TYPE_2__*) ;
 int IDXGISwapChain_ResizeBuffers (int *,int ,int ,int ,int ,int ) ;
 int mp_HRESULT_to_str (int ) ;
 int mp_fatal (struct mp_log*,char*,int ) ;

__attribute__((used)) static bool update_swapchain_format(struct mp_log *log,
                                    IDXGISwapChain *swapchain,
                                    DXGI_FORMAT format)
{
    DXGI_SWAP_CHAIN_DESC desc;

    HRESULT hr = IDXGISwapChain_GetDesc(swapchain, &desc);
    if (FAILED(hr)) {
        mp_fatal(log, "Failed to query swap chain's current state: %s\n",
                 mp_HRESULT_to_str(hr));
        return 0;
    }

    hr = IDXGISwapChain_ResizeBuffers(swapchain, 0, desc.BufferDesc.Width,
                                      desc.BufferDesc.Height,
                                      format, 0);
    if (FAILED(hr)) {
        mp_fatal(log, "Couldn't update swapchain format: %s\n",
                 mp_HRESULT_to_str(hr));
        return 0;
    }

    return 1;
}
