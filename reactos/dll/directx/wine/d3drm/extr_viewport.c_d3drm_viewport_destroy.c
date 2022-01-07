
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_viewport {int d3drm; int camera; int material; scalar_t__ d3d_viewport; int obj; int IDirect3DRMViewport_iface; } ;
typedef int IDirect3DRMObject ;


 int IDirect3DMaterial_Release (int ) ;
 int IDirect3DRMFrame_Release (int ) ;
 int IDirect3DRM_Release (int ) ;
 int IDirect3DViewport_Release (scalar_t__) ;
 int TRACE (char*,struct d3drm_viewport*) ;
 int d3drm_object_cleanup (int *,int *) ;
 int heap_free (struct d3drm_viewport*) ;

__attribute__((used)) static void d3drm_viewport_destroy(struct d3drm_viewport *viewport)
{
    TRACE("viewport %p releasing attached interfaces.\n", viewport);

    d3drm_object_cleanup((IDirect3DRMObject *)&viewport->IDirect3DRMViewport_iface, &viewport->obj);

    if (viewport->d3d_viewport)
    {
        IDirect3DViewport_Release(viewport->d3d_viewport);
        IDirect3DMaterial_Release(viewport->material);
        IDirect3DRMFrame_Release(viewport->camera);
        IDirect3DRM_Release(viewport->d3drm);
    }

    heap_free(viewport);
}
