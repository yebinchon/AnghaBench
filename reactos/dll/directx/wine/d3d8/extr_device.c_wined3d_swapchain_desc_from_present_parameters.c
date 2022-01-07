
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_swapchain_desc {int flags; int auto_restore_display_mode; int swap_interval; int refresh_rate; void* auto_depth_stencil_format; int enable_auto_depth_stencil; int windowed; int device_window; int swap_effect; scalar_t__ multisample_quality; int multisample_type; int backbuffer_usage; int backbuffer_count; void* backbuffer_format; int backbuffer_height; int backbuffer_width; } ;
struct TYPE_3__ {scalar_t__ SwapEffect; int BackBufferCount; int Flags; int FullScreen_PresentationInterval; int FullScreen_RefreshRateInHz; int AutoDepthStencilFormat; int EnableAutoDepthStencil; int Windowed; int hDeviceWindow; int MultiSampleType; int BackBufferFormat; int BackBufferHeight; int BackBufferWidth; } ;
typedef TYPE_1__ D3DPRESENT_PARAMETERS ;
typedef int BOOL ;


 int D3DPRESENTFLAGS_MASK ;
 scalar_t__ D3DSWAPEFFECT_COPY ;
 scalar_t__ D3DSWAPEFFECT_COPY_VSYNC ;
 int FALSE ;
 int FIXME (char*,int) ;
 int TRUE ;
 int WARN (char*,int) ;
 int WINED3DUSAGE_RENDERTARGET ;
 int WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH ;
 int max (int,int) ;
 void* wined3dformat_from_d3dformat (int ) ;
 int wined3dswapeffect_from_d3dswapeffect (scalar_t__) ;

__attribute__((used)) static BOOL wined3d_swapchain_desc_from_present_parameters(struct wined3d_swapchain_desc *swapchain_desc,
        const D3DPRESENT_PARAMETERS *present_parameters)
{
    if (!present_parameters->SwapEffect || present_parameters->SwapEffect > D3DSWAPEFFECT_COPY_VSYNC)
    {
        WARN("Invalid swap effect %u passed.\n", present_parameters->SwapEffect);
        return FALSE;
    }
    if (present_parameters->BackBufferCount > 3
            || ((present_parameters->SwapEffect == D3DSWAPEFFECT_COPY
            || present_parameters->SwapEffect == D3DSWAPEFFECT_COPY_VSYNC)
            && present_parameters->BackBufferCount > 1))
    {
        WARN("Invalid backbuffer count %u.\n", present_parameters->BackBufferCount);
        return FALSE;
    }

    swapchain_desc->backbuffer_width = present_parameters->BackBufferWidth;
    swapchain_desc->backbuffer_height = present_parameters->BackBufferHeight;
    swapchain_desc->backbuffer_format = wined3dformat_from_d3dformat(present_parameters->BackBufferFormat);
    swapchain_desc->backbuffer_count = max(1, present_parameters->BackBufferCount);
    swapchain_desc->backbuffer_usage = WINED3DUSAGE_RENDERTARGET;
    swapchain_desc->multisample_type = present_parameters->MultiSampleType;
    swapchain_desc->multisample_quality = 0;
    swapchain_desc->swap_effect = wined3dswapeffect_from_d3dswapeffect(present_parameters->SwapEffect);
    swapchain_desc->device_window = present_parameters->hDeviceWindow;
    swapchain_desc->windowed = present_parameters->Windowed;
    swapchain_desc->enable_auto_depth_stencil = present_parameters->EnableAutoDepthStencil;
    swapchain_desc->auto_depth_stencil_format
            = wined3dformat_from_d3dformat(present_parameters->AutoDepthStencilFormat);
    swapchain_desc->flags
            = (present_parameters->Flags & D3DPRESENTFLAGS_MASK) | WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH;
    swapchain_desc->refresh_rate = present_parameters->FullScreen_RefreshRateInHz;
    swapchain_desc->swap_interval = present_parameters->FullScreen_PresentationInterval;
    swapchain_desc->auto_restore_display_mode = TRUE;

    if (present_parameters->Flags & ~D3DPRESENTFLAGS_MASK)
        FIXME("Unhandled flags %#x.\n", present_parameters->Flags & ~D3DPRESENTFLAGS_MASK);

    return TRUE;
}
