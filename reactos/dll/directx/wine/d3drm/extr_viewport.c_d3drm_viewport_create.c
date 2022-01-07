
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct d3drm_viewport {int obj; int * d3drm; TYPE_2__ IDirect3DRMViewport2_iface; TYPE_1__ IDirect3DRMViewport_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,struct d3drm_viewport**,int *) ;
 int d3drm_object_init (int *,char const*) ;
 int d3drm_viewport1_vtbl ;
 int d3drm_viewport2_vtbl ;
 struct d3drm_viewport* heap_alloc_zero (int) ;

HRESULT d3drm_viewport_create(struct d3drm_viewport **viewport, IDirect3DRM *d3drm)
{
    static const char classname[] = "Viewport";
    struct d3drm_viewport *object;

    TRACE("viewport %p, d3drm %p.\n", viewport, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMViewport_iface.lpVtbl = &d3drm_viewport1_vtbl;
    object->IDirect3DRMViewport2_iface.lpVtbl = &d3drm_viewport2_vtbl;
    object->d3drm = d3drm;
    d3drm_object_init(&object->obj, classname);

    *viewport = object;

    return S_OK;
}
