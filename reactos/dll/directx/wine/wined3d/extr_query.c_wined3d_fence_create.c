
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_gl_info {int dummy; } ;
struct wined3d_fence {int dummy; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
struct TYPE_2__ {struct wined3d_gl_info gl_info; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,struct wined3d_device*,...) ;
 int WINED3D_OK ;
 struct wined3d_fence* heap_alloc_zero (int) ;
 int heap_free (struct wined3d_fence*) ;
 int wined3d_fence_init (struct wined3d_fence*,struct wined3d_gl_info const*) ;

HRESULT wined3d_fence_create(struct wined3d_device *device, struct wined3d_fence **fence)
{
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct wined3d_fence *object;
    HRESULT hr;

    TRACE("device %p, fence %p.\n", device, fence);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    if (FAILED(hr = wined3d_fence_init(object, gl_info)))
    {
        heap_free(object);
        return hr;
    }

    TRACE("Created fence %p.\n", object);
    *fence = object;

    return WINED3D_OK;
}
