
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wined3d_swapchain_desc {int enable_auto_depth_stencil; } ;
struct wined3d {int dummy; } ;
struct TYPE_12__ {int * ops; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct d3d9_device {int refcount; struct d3d9* d3d_parent; int wined3d_device; int * render_targets; struct wined3d_swapchain_desc* implicit_swapchains; void* fvf_decls; int max_user_clip_planes; TYPE_6__ device_parent; TYPE_1__ IDirect3DDevice9Ex_iface; } ;
struct d3d9 {int IDirect3D9Ex_iface; int extended; } ;
struct TYPE_10__ {unsigned int NumberOfAdaptersInGroup; int MaxUserClipPlanes; } ;
typedef TYPE_2__ WINED3DCAPS ;
typedef int UINT ;
struct TYPE_11__ {int BackBufferHeight; int BackBufferWidth; scalar_t__ hDeviceWindow; int Windowed; } ;
typedef scalar_t__ HWND ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_3__ D3DPRESENT_PARAMETERS ;
typedef int D3DDISPLAYMODEEX ;
typedef int D3DDEVTYPE ;


 int D3DCREATE_ADAPTERGROUP_DEVICE ;
 int D3DCREATE_FPU_PRESERVE ;
 int D3DCREATE_MULTITHREADED ;
 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int ERR (char*,...) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IDirect3D9Ex_AddRef (int *) ;
 int WARN (char*,int ) ;
 int WINED3D_RS_ZENABLE ;
 int d3d9_device_get_swapchains (struct d3d9_device*) ;
 int d3d9_device_vtbl ;
 int d3d9_wined3d_device_parent_ops ;
 void* heap_alloc (int) ;
 int heap_free (struct wined3d_swapchain_desc*) ;
 int present_parameters_from_wined3d_swapchain_desc (TYPE_3__*,struct wined3d_swapchain_desc*) ;
 int setup_fpu () ;
 int wined3d_device_acquire_focus_window (int ,scalar_t__) ;
 int wined3d_device_create (struct wined3d*,int ,int ,scalar_t__,int,int,TYPE_6__*,int *) ;
 int wined3d_device_decref (int ) ;
 int wined3d_device_get_rendertarget_view (int ,int ) ;
 int wined3d_device_init_3d (int ,struct wined3d_swapchain_desc*) ;
 int wined3d_device_release_focus_window (int ) ;
 int wined3d_device_set_multithreaded (int ) ;
 int wined3d_device_set_render_state (int ,int ,int) ;
 int wined3d_device_setup_fullscreen_window (int ,scalar_t__,int ,int ) ;
 int wined3d_device_uninit_3d (int ) ;
 int wined3d_get_device_caps (struct wined3d*,int ,int ,TYPE_2__*) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_rendertarget_view_get_sub_resource_parent (int ) ;
 int wined3d_swapchain_desc_from_present_parameters (struct wined3d_swapchain_desc*,TYPE_3__*,int ) ;

HRESULT device_init(struct d3d9_device *device, struct d3d9 *parent, struct wined3d *wined3d,
        UINT adapter, D3DDEVTYPE device_type, HWND focus_window, DWORD flags,
        D3DPRESENT_PARAMETERS *parameters, D3DDISPLAYMODEEX *mode)
{
    struct wined3d_swapchain_desc *swapchain_desc;
    unsigned i, count = 1;
    WINED3DCAPS caps;
    HRESULT hr;

    if (mode)
        FIXME("Ignoring display mode.\n");

    device->IDirect3DDevice9Ex_iface.lpVtbl = &d3d9_device_vtbl;
    device->device_parent.ops = &d3d9_wined3d_device_parent_ops;
    device->refcount = 1;

    if (!(flags & D3DCREATE_FPU_PRESERVE)) setup_fpu();

    wined3d_mutex_lock();
    if (FAILED(hr = wined3d_device_create(wined3d, adapter, device_type, focus_window, flags, 4,
            &device->device_parent, &device->wined3d_device)))
    {
        WARN("Failed to create wined3d device, hr %#x.\n", hr);
        wined3d_mutex_unlock();
        return hr;
    }

    wined3d_get_device_caps(wined3d, adapter, device_type, &caps);
    device->max_user_clip_planes = caps.MaxUserClipPlanes;
    if (flags & D3DCREATE_ADAPTERGROUP_DEVICE)
        count = caps.NumberOfAdaptersInGroup;

    if (flags & D3DCREATE_MULTITHREADED)
        wined3d_device_set_multithreaded(device->wined3d_device);

    if (!parameters->Windowed)
    {
        if (!focus_window)
            focus_window = parameters->hDeviceWindow;
        if (FAILED(hr = wined3d_device_acquire_focus_window(device->wined3d_device, focus_window)))
        {
            ERR("Failed to acquire focus window, hr %#x.\n", hr);
            wined3d_device_decref(device->wined3d_device);
            wined3d_mutex_unlock();
            return hr;
        }

        for (i = 0; i < count; ++i)
        {
            HWND device_window = parameters[i].hDeviceWindow;

            if (!device_window) device_window = focus_window;
            wined3d_device_setup_fullscreen_window(device->wined3d_device, device_window,
                    parameters[i].BackBufferWidth,
                    parameters[i].BackBufferHeight);
        }
    }

    if (!(swapchain_desc = heap_alloc(sizeof(*swapchain_desc) * count)))
    {
        ERR("Failed to allocate wined3d parameters.\n");
        wined3d_device_release_focus_window(device->wined3d_device);
        wined3d_device_decref(device->wined3d_device);
        wined3d_mutex_unlock();
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < count; ++i)
    {
        if (!wined3d_swapchain_desc_from_present_parameters(&swapchain_desc[i], &parameters[i],
                parent->extended))
        {
            wined3d_device_release_focus_window(device->wined3d_device);
            wined3d_device_decref(device->wined3d_device);
            heap_free(swapchain_desc);
            wined3d_mutex_unlock();
            return D3DERR_INVALIDCALL;
        }
    }

    if (FAILED(hr = wined3d_device_init_3d(device->wined3d_device, swapchain_desc)))
    {
        WARN("Failed to initialize 3D, hr %#x.\n", hr);
        wined3d_device_release_focus_window(device->wined3d_device);
        heap_free(swapchain_desc);
        wined3d_device_decref(device->wined3d_device);
        wined3d_mutex_unlock();
        return hr;
    }

    wined3d_device_set_render_state(device->wined3d_device,
            WINED3D_RS_ZENABLE, !!swapchain_desc->enable_auto_depth_stencil);

    if (FAILED(hr = d3d9_device_get_swapchains(device)))
    {
        wined3d_device_uninit_3d(device->wined3d_device);
        wined3d_device_release_focus_window(device->wined3d_device);
        wined3d_device_decref(device->wined3d_device);
        wined3d_mutex_unlock();
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < count; ++i)
    {
        present_parameters_from_wined3d_swapchain_desc(&parameters[i], &swapchain_desc[i]);
    }

    wined3d_mutex_unlock();

    heap_free(swapchain_desc);



    if (!(device->fvf_decls = heap_alloc(0)))
    {
        ERR("Failed to allocate FVF vertex declaration map memory.\n");
        wined3d_mutex_lock();
        heap_free(device->implicit_swapchains);
        wined3d_device_uninit_3d(device->wined3d_device);
        wined3d_device_release_focus_window(device->wined3d_device);
        wined3d_device_decref(device->wined3d_device);
        wined3d_mutex_unlock();
        return E_OUTOFMEMORY;
    }




    wined3d_mutex_lock();
    device->render_targets[0] = wined3d_rendertarget_view_get_sub_resource_parent(
            wined3d_device_get_rendertarget_view(device->wined3d_device, 0));
    wined3d_mutex_unlock();

    IDirect3D9Ex_AddRef(&parent->IDirect3D9Ex_iface);
    device->d3d_parent = parent;

    return D3D_OK;
}
