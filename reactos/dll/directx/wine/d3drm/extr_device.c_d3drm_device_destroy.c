
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_device {int d3drm; scalar_t__ ddraw; int clipper; scalar_t__ primary_surface; scalar_t__ render_target; scalar_t__ device; int obj; int IDirect3DRMDevice_iface; } ;
typedef int IDirect3DRMObject ;


 int IDirect3DDevice_Release (scalar_t__) ;
 int IDirect3DRM_Release (int ) ;
 int IDirectDrawClipper_Release (int ) ;
 int IDirectDrawSurface_Release (scalar_t__) ;
 int IDirectDraw_Release (scalar_t__) ;
 int TRACE (char*) ;
 int d3drm_object_cleanup (int *,int *) ;
 int heap_free (struct d3drm_device*) ;

void d3drm_device_destroy(struct d3drm_device *device)
{
    d3drm_object_cleanup((IDirect3DRMObject *)&device->IDirect3DRMDevice_iface, &device->obj);
    if (device->device)
    {
        TRACE("Releasing attached ddraw interfaces.\n");
        IDirect3DDevice_Release(device->device);
    }
    if (device->render_target)
        IDirectDrawSurface_Release(device->render_target);
    if (device->primary_surface)
    {
        TRACE("Releasing primary surface and attached clipper.\n");
        IDirectDrawSurface_Release(device->primary_surface);
        IDirectDrawClipper_Release(device->clipper);
    }
    if (device->ddraw)
    {
        IDirectDraw_Release(device->ddraw);
        IDirect3DRM_Release(device->d3drm);
    }
    heap_free(device);
}
