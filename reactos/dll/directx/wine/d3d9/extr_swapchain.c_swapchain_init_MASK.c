#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_swapchain_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_swapchain {int refcount; int /*<<< orphan*/ * parent_device; int /*<<< orphan*/  wined3d_swapchain; TYPE_1__ IDirect3DSwapChain9Ex_iface; } ;
struct d3d9_device {int /*<<< orphan*/  IDirect3DDevice9Ex_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d3d9_swapchain_vtbl ; 
 int /*<<< orphan*/  d3d9_swapchain_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wined3d_swapchain_desc*,struct d3d9_swapchain*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(struct d3d9_swapchain *swapchain, struct d3d9_device *device,
        struct wined3d_swapchain_desc *desc)
{
    HRESULT hr;

    swapchain->refcount = 1;
    swapchain->IDirect3DSwapChain9Ex_iface.lpVtbl = &d3d9_swapchain_vtbl;

    FUNC3();
    hr = FUNC5(device->wined3d_device, desc, swapchain,
            &d3d9_swapchain_wined3d_parent_ops, &swapchain->wined3d_swapchain);
    FUNC4();

    if (FUNC0(hr))
    {
        FUNC2("Failed to create wined3d swapchain, hr %#x.\n", hr);
        return hr;
    }

    swapchain->parent_device = &device->IDirect3DDevice9Ex_iface;
    FUNC1(swapchain->parent_device);

    return D3D_OK;
}