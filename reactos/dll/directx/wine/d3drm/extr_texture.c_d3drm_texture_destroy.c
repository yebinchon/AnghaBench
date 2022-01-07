
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_texture {scalar_t__ surface; int d3drm; scalar_t__ image; int obj; int IDirect3DRMTexture_iface; } ;
typedef int IDirect3DRMObject ;


 int IDirect3DRM_Release (int ) ;
 int IDirectDrawSurface_Release (scalar_t__) ;
 int TRACE (char*,struct d3drm_texture*) ;
 int d3drm_object_cleanup (int *,int *) ;
 int heap_free (struct d3drm_texture*) ;

__attribute__((used)) static void d3drm_texture_destroy(struct d3drm_texture *texture)
{
    TRACE("texture %p is being destroyed.\n", texture);

    d3drm_object_cleanup((IDirect3DRMObject*)&texture->IDirect3DRMTexture_iface, &texture->obj);
    if (texture->image || texture->surface)
        IDirect3DRM_Release(texture->d3drm);
    if (texture->surface)
        IDirectDrawSurface_Release(texture->surface);
    heap_free(texture);
}
