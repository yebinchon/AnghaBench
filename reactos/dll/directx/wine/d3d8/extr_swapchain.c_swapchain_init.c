
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_swapchain_desc {int dummy; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3d8_swapchain {int refcount; int * parent_device; int wined3d_swapchain; TYPE_1__ IDirect3DSwapChain8_iface; } ;
struct d3d8_device {int IDirect3DDevice8_iface; int wined3d_device; } ;
typedef int HRESULT ;


 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice8_AddRef (int *) ;
 int WARN (char*,int ) ;
 int d3d8_swapchain_vtbl ;
 int d3d8_swapchain_wined3d_parent_ops ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_swapchain_create (int ,struct wined3d_swapchain_desc*,struct d3d8_swapchain*,int *,int *) ;

__attribute__((used)) static HRESULT swapchain_init(struct d3d8_swapchain *swapchain, struct d3d8_device *device,
        struct wined3d_swapchain_desc *desc)
{
    HRESULT hr;

    swapchain->refcount = 1;
    swapchain->IDirect3DSwapChain8_iface.lpVtbl = &d3d8_swapchain_vtbl;

    wined3d_mutex_lock();
    hr = wined3d_swapchain_create(device->wined3d_device, desc, swapchain,
            &d3d8_swapchain_wined3d_parent_ops, &swapchain->wined3d_swapchain);
    wined3d_mutex_unlock();

    if (FAILED(hr))
    {
        WARN("Failed to create wined3d swapchain, hr %#x.\n", hr);
        return hr;
    }

    swapchain->parent_device = &device->IDirect3DDevice8_iface;
    IDirect3DDevice8_AddRef(swapchain->parent_device);

    return D3D_OK;
}
