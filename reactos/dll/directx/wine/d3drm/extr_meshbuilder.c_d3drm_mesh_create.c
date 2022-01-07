
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3drm_mesh {int ref; int obj; int * d3drm; TYPE_1__ IDirect3DRMMesh_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDirect3DRM_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,struct d3drm_mesh**,int *) ;
 int d3drm_mesh_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_mesh* heap_alloc_zero (int) ;

HRESULT d3drm_mesh_create(struct d3drm_mesh **mesh, IDirect3DRM *d3drm)
{
    static const char classname[] = "Mesh";
    struct d3drm_mesh *object;

    TRACE("mesh %p, d3drm %p.\n", mesh, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMMesh_iface.lpVtbl = &d3drm_mesh_vtbl;
    object->ref = 1;
    object->d3drm = d3drm;
    IDirect3DRM_AddRef(object->d3drm);

    d3drm_object_init(&object->obj, classname);

    *mesh = object;

    return S_OK;
}
