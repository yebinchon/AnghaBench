
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_swapchain_desc {int dummy; } ;
struct d3d9_swapchain {int dummy; } ;
struct d3d9_device {int dummy; } ;
typedef int HRESULT ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,struct d3d9_swapchain*) ;
 int WARN (char*,int ) ;
 struct d3d9_swapchain* heap_alloc_zero (int) ;
 int heap_free (struct d3d9_swapchain*) ;
 int swapchain_init (struct d3d9_swapchain*,struct d3d9_device*,struct wined3d_swapchain_desc*) ;

HRESULT d3d9_swapchain_create(struct d3d9_device *device, struct wined3d_swapchain_desc *desc,
        struct d3d9_swapchain **swapchain)
{
    struct d3d9_swapchain *object;
    HRESULT hr;

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    if (FAILED(hr = swapchain_init(object, device, desc)))
    {
        WARN("Failed to initialize swapchain, hr %#x.\n", hr);
        heap_free(object);
        return hr;
    }

    TRACE("Created swapchain %p.\n", object);
    *swapchain = object;

    return D3D_OK;
}
