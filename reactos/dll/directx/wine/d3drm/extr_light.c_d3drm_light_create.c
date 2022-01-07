
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3drm_light {int ref; int obj; int * d3drm; TYPE_1__ IDirect3DRMLight_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDirect3DRM_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,struct d3drm_light**) ;
 int d3drm_light_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_light* heap_alloc_zero (int) ;

HRESULT d3drm_light_create(struct d3drm_light **light, IDirect3DRM *d3drm)
{
    static const char classname[] = "Light";
    struct d3drm_light *object;

    TRACE("light %p.\n", light);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMLight_iface.lpVtbl = &d3drm_light_vtbl;
    object->ref = 1;
    object->d3drm = d3drm;
    IDirect3DRM_AddRef(object->d3drm);

    d3drm_object_init(&object->obj, classname);

    *light = object;

    return S_OK;
}
