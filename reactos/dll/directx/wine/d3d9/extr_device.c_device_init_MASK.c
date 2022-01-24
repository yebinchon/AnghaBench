#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct wined3d_swapchain_desc {int /*<<< orphan*/  enable_auto_depth_stencil; } ;
struct wined3d {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_device {int refcount; struct d3d9* d3d_parent; int /*<<< orphan*/  wined3d_device; int /*<<< orphan*/ * render_targets; struct wined3d_swapchain_desc* implicit_swapchains; void* fvf_decls; int /*<<< orphan*/  max_user_clip_planes; TYPE_6__ device_parent; TYPE_1__ IDirect3DDevice9Ex_iface; } ;
struct d3d9 {int /*<<< orphan*/  IDirect3D9Ex_iface; int /*<<< orphan*/  extended; } ;
struct TYPE_10__ {unsigned int NumberOfAdaptersInGroup; int /*<<< orphan*/  MaxUserClipPlanes; } ;
typedef  TYPE_2__ WINED3DCAPS ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int /*<<< orphan*/  BackBufferHeight; int /*<<< orphan*/  BackBufferWidth; scalar_t__ hDeviceWindow; int /*<<< orphan*/  Windowed; } ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_3__ D3DPRESENT_PARAMETERS ;
typedef  int /*<<< orphan*/  D3DDISPLAYMODEEX ;
typedef  int /*<<< orphan*/  D3DDEVTYPE ;

/* Variables and functions */
 int D3DCREATE_ADAPTERGROUP_DEVICE ; 
 int D3DCREATE_FPU_PRESERVE ; 
 int D3DCREATE_MULTITHREADED ; 
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3D_RS_ZENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct d3d9_device*) ; 
 int /*<<< orphan*/  d3d9_device_vtbl ; 
 int /*<<< orphan*/  d3d9_wined3d_device_parent_ops ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_swapchain_desc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct wined3d_swapchain_desc*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct wined3d_swapchain_desc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct wined3d*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct wined3d_swapchain_desc*,TYPE_3__*,int /*<<< orphan*/ ) ; 

HRESULT FUNC25(struct d3d9_device *device, struct d3d9 *parent, struct wined3d *wined3d,
        UINT adapter, D3DDEVTYPE device_type, HWND focus_window, DWORD flags,
        D3DPRESENT_PARAMETERS *parameters, D3DDISPLAYMODEEX *mode)
{
    struct wined3d_swapchain_desc *swapchain_desc;
    unsigned i, count = 1;
    WINED3DCAPS caps;
    HRESULT hr;

    if (mode)
        FUNC2("Ignoring display mode.\n");

    device->IDirect3DDevice9Ex_iface.lpVtbl = &d3d9_device_vtbl;
    device->device_parent.ops = &d3d9_wined3d_device_parent_ops;
    device->refcount = 1;

    if (!(flags & D3DCREATE_FPU_PRESERVE)) FUNC9();

    FUNC21();
    if (FUNC1(hr = FUNC11(wined3d, adapter, device_type, focus_window, flags, 4,
            &device->device_parent, &device->wined3d_device)))
    {
        FUNC4("Failed to create wined3d device, hr %#x.\n", hr);
        FUNC22();
        return hr;
    }

    FUNC20(wined3d, adapter, device_type, &caps);
    device->max_user_clip_planes = caps.MaxUserClipPlanes;
    if (flags & D3DCREATE_ADAPTERGROUP_DEVICE)
        count = caps.NumberOfAdaptersInGroup;

    if (flags & D3DCREATE_MULTITHREADED)
        FUNC16(device->wined3d_device);

    if (!parameters->Windowed)
    {
        if (!focus_window)
            focus_window = parameters->hDeviceWindow;
        if (FUNC1(hr = FUNC10(device->wined3d_device, focus_window)))
        {
            FUNC0("Failed to acquire focus window, hr %#x.\n", hr);
            FUNC12(device->wined3d_device);
            FUNC22();
            return hr;
        }

        for (i = 0; i < count; ++i)
        {
            HWND device_window = parameters[i].hDeviceWindow;

            if (!device_window) device_window = focus_window;
            FUNC18(device->wined3d_device, device_window,
                    parameters[i].BackBufferWidth,
                    parameters[i].BackBufferHeight);
        }
    }

    if (!(swapchain_desc = FUNC6(sizeof(*swapchain_desc) * count)))
    {
        FUNC0("Failed to allocate wined3d parameters.\n");
        FUNC15(device->wined3d_device);
        FUNC12(device->wined3d_device);
        FUNC22();
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < count; ++i)
    {
        if (!FUNC24(&swapchain_desc[i], &parameters[i],
                parent->extended))
        {
            FUNC15(device->wined3d_device);
            FUNC12(device->wined3d_device);
            FUNC7(swapchain_desc);
            FUNC22();
            return D3DERR_INVALIDCALL;
        }
    }

    if (FUNC1(hr = FUNC14(device->wined3d_device, swapchain_desc)))
    {
        FUNC4("Failed to initialize 3D, hr %#x.\n", hr);
        FUNC15(device->wined3d_device);
        FUNC7(swapchain_desc);
        FUNC12(device->wined3d_device);
        FUNC22();
        return hr;
    }

    FUNC17(device->wined3d_device,
            WINED3D_RS_ZENABLE, !!swapchain_desc->enable_auto_depth_stencil);

    if (FUNC1(hr = FUNC5(device)))
    {
        FUNC19(device->wined3d_device);
        FUNC15(device->wined3d_device);
        FUNC12(device->wined3d_device);
        FUNC22();
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < count; ++i)
    {
        FUNC8(&parameters[i], &swapchain_desc[i]);
    }

    FUNC22();

    FUNC7(swapchain_desc);

    /* Initialize the converted declaration array. This creates a valid pointer
     * and when adding decls HeapReAlloc() can be used without further checking. */
    if (!(device->fvf_decls = FUNC6(0)))
    {
        FUNC0("Failed to allocate FVF vertex declaration map memory.\n");
        FUNC21();
        FUNC7(device->implicit_swapchains);
        FUNC19(device->wined3d_device);
        FUNC15(device->wined3d_device);
        FUNC12(device->wined3d_device);
        FUNC22();
        return E_OUTOFMEMORY;
    }

    /* We could also simply ignore the initial rendertarget since it's known
     * not to be a texture (we currently use these only for automatic mipmap
     * generation). */
    FUNC21();
    device->render_targets[0] = FUNC23(
            FUNC13(device->wined3d_device, 0));
    FUNC22();

    FUNC3(&parent->IDirect3D9Ex_iface);
    device->d3d_parent = parent;

    return D3D_OK;
}