#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_swapchain_desc {int dummy; } ;
struct d3d9_swapchain {int dummy; } ;
struct d3d9_device {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3d9_swapchain*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct d3d9_swapchain* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct d3d9_swapchain*) ; 
 int /*<<< orphan*/  FUNC5 (struct d3d9_swapchain*,struct d3d9_device*,struct wined3d_swapchain_desc*) ; 

HRESULT FUNC6(struct d3d9_device *device, struct wined3d_swapchain_desc *desc,
        struct d3d9_swapchain **swapchain)
{
    struct d3d9_swapchain *object;
    HRESULT hr;

    if (!(object = FUNC3(sizeof(*object))))
        return E_OUTOFMEMORY;

    if (FUNC0(hr = FUNC5(object, device, desc)))
    {
        FUNC2("Failed to initialize swapchain, hr %#x.\n", hr);
        FUNC4(object);
        return hr;
    }

    FUNC1("Created swapchain %p.\n", object);
    *swapchain = object;

    return D3D_OK;
}