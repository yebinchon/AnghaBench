
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct d3drm_mesh_builder {int ref; int obj; int * d3drm; TYPE_2__ IDirect3DRMMeshBuilder3_iface; TYPE_1__ IDirect3DRMMeshBuilder2_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDirect3DRM_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,struct d3drm_mesh_builder**) ;
 int d3drm_mesh_builder2_vtbl ;
 int d3drm_mesh_builder3_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_mesh_builder* heap_alloc_zero (int) ;

HRESULT d3drm_mesh_builder_create(struct d3drm_mesh_builder **mesh_builder, IDirect3DRM *d3drm)
{
    static const char classname[] = "Builder";
    struct d3drm_mesh_builder *object;

    TRACE("mesh_builder %p.\n", mesh_builder);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMMeshBuilder2_iface.lpVtbl = &d3drm_mesh_builder2_vtbl;
    object->IDirect3DRMMeshBuilder3_iface.lpVtbl = &d3drm_mesh_builder3_vtbl;
    object->ref = 1;
    object->d3drm = d3drm;
    IDirect3DRM_AddRef(object->d3drm);

    d3drm_object_init(&object->obj, classname);

    *mesh_builder = object;

    return S_OK;
}
