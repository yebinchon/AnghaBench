
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_swapchain_desc {int flags; int swap_interval; int refresh_rate; int auto_depth_stencil_format; int enable_auto_depth_stencil; int windowed; int device_window; int swap_effect; int multisample_type; int backbuffer_count; int backbuffer_format; int backbuffer_height; int backbuffer_width; } ;
struct TYPE_3__ {int Flags; int FullScreen_PresentationInterval; int FullScreen_RefreshRateInHz; void* AutoDepthStencilFormat; int EnableAutoDepthStencil; int Windowed; int hDeviceWindow; int SwapEffect; int MultiSampleType; int BackBufferCount; void* BackBufferFormat; int BackBufferHeight; int BackBufferWidth; } ;
typedef TYPE_1__ D3DPRESENT_PARAMETERS ;


 int D3DPRESENTFLAGS_MASK ;
 void* d3dformat_from_wined3dformat (int ) ;
 int d3dswapeffect_from_wined3dswapeffect (int ) ;

__attribute__((used)) static void present_parameters_from_wined3d_swapchain_desc(D3DPRESENT_PARAMETERS *present_parameters,
        const struct wined3d_swapchain_desc *swapchain_desc)
{
    present_parameters->BackBufferWidth = swapchain_desc->backbuffer_width;
    present_parameters->BackBufferHeight = swapchain_desc->backbuffer_height;
    present_parameters->BackBufferFormat = d3dformat_from_wined3dformat(swapchain_desc->backbuffer_format);
    present_parameters->BackBufferCount = swapchain_desc->backbuffer_count;
    present_parameters->MultiSampleType = swapchain_desc->multisample_type;
    present_parameters->SwapEffect = d3dswapeffect_from_wined3dswapeffect(swapchain_desc->swap_effect);
    present_parameters->hDeviceWindow = swapchain_desc->device_window;
    present_parameters->Windowed = swapchain_desc->windowed;
    present_parameters->EnableAutoDepthStencil = swapchain_desc->enable_auto_depth_stencil;
    present_parameters->AutoDepthStencilFormat
            = d3dformat_from_wined3dformat(swapchain_desc->auto_depth_stencil_format);
    present_parameters->Flags = swapchain_desc->flags & D3DPRESENTFLAGS_MASK;
    present_parameters->FullScreen_RefreshRateInHz = swapchain_desc->refresh_rate;
    present_parameters->FullScreen_PresentationInterval = swapchain_desc->swap_interval;
}
