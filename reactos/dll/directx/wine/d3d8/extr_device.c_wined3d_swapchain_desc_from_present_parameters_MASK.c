#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_swapchain_desc {int flags; int /*<<< orphan*/  auto_restore_display_mode; int /*<<< orphan*/  swap_interval; int /*<<< orphan*/  refresh_rate; void* auto_depth_stencil_format; int /*<<< orphan*/  enable_auto_depth_stencil; int /*<<< orphan*/  windowed; int /*<<< orphan*/  device_window; int /*<<< orphan*/  swap_effect; scalar_t__ multisample_quality; int /*<<< orphan*/  multisample_type; int /*<<< orphan*/  backbuffer_usage; int /*<<< orphan*/  backbuffer_count; void* backbuffer_format; int /*<<< orphan*/  backbuffer_height; int /*<<< orphan*/  backbuffer_width; } ;
struct TYPE_3__ {scalar_t__ SwapEffect; int BackBufferCount; int Flags; int /*<<< orphan*/  FullScreen_PresentationInterval; int /*<<< orphan*/  FullScreen_RefreshRateInHz; int /*<<< orphan*/  AutoDepthStencilFormat; int /*<<< orphan*/  EnableAutoDepthStencil; int /*<<< orphan*/  Windowed; int /*<<< orphan*/  hDeviceWindow; int /*<<< orphan*/  MultiSampleType; int /*<<< orphan*/  BackBufferFormat; int /*<<< orphan*/  BackBufferHeight; int /*<<< orphan*/  BackBufferWidth; } ;
typedef  TYPE_1__ D3DPRESENT_PARAMETERS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int D3DPRESENTFLAGS_MASK ; 
 scalar_t__ D3DSWAPEFFECT_COPY ; 
 scalar_t__ D3DSWAPEFFECT_COPY_VSYNC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  WINED3DUSAGE_RENDERTARGET ; 
 int WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC5(struct wined3d_swapchain_desc *swapchain_desc,
        const D3DPRESENT_PARAMETERS *present_parameters)
{
    if (!present_parameters->SwapEffect || present_parameters->SwapEffect > D3DSWAPEFFECT_COPY_VSYNC)
    {
        FUNC1("Invalid swap effect %u passed.\n", present_parameters->SwapEffect);
        return FALSE;
    }
    if (present_parameters->BackBufferCount > 3
            || ((present_parameters->SwapEffect == D3DSWAPEFFECT_COPY
            || present_parameters->SwapEffect == D3DSWAPEFFECT_COPY_VSYNC)
            && present_parameters->BackBufferCount > 1))
    {
        FUNC1("Invalid backbuffer count %u.\n", present_parameters->BackBufferCount);
        return FALSE;
    }

    swapchain_desc->backbuffer_width = present_parameters->BackBufferWidth;
    swapchain_desc->backbuffer_height = present_parameters->BackBufferHeight;
    swapchain_desc->backbuffer_format = FUNC3(present_parameters->BackBufferFormat);
    swapchain_desc->backbuffer_count = FUNC2(1, present_parameters->BackBufferCount);
    swapchain_desc->backbuffer_usage = WINED3DUSAGE_RENDERTARGET;
    swapchain_desc->multisample_type = present_parameters->MultiSampleType;
    swapchain_desc->multisample_quality = 0; /* d3d9 only */
    swapchain_desc->swap_effect = FUNC4(present_parameters->SwapEffect);
    swapchain_desc->device_window = present_parameters->hDeviceWindow;
    swapchain_desc->windowed = present_parameters->Windowed;
    swapchain_desc->enable_auto_depth_stencil = present_parameters->EnableAutoDepthStencil;
    swapchain_desc->auto_depth_stencil_format
            = FUNC3(present_parameters->AutoDepthStencilFormat);
    swapchain_desc->flags
            = (present_parameters->Flags & D3DPRESENTFLAGS_MASK) | WINED3D_SWAPCHAIN_ALLOW_MODE_SWITCH;
    swapchain_desc->refresh_rate = present_parameters->FullScreen_RefreshRateInHz;
    swapchain_desc->swap_interval = present_parameters->FullScreen_PresentationInterval;
    swapchain_desc->auto_restore_display_mode = TRUE;

    if (present_parameters->Flags & ~D3DPRESENTFLAGS_MASK)
        FUNC0("Unhandled flags %#x.\n", present_parameters->Flags & ~D3DPRESENTFLAGS_MASK);

    return TRUE;
}