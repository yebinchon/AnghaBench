
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3drm_wrap {int ref; int obj; TYPE_1__ IDirect3DRMWrap_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,struct d3drm_wrap**,int *) ;
 int d3drm_object_init (int *,char const*) ;
 int d3drm_wrap_vtbl ;
 struct d3drm_wrap* heap_alloc_zero (int) ;

HRESULT d3drm_wrap_create(struct d3drm_wrap **wrap, IDirect3DRM *d3drm)
{
    static const char classname[] = "";
    struct d3drm_wrap *object;

    TRACE("wrap %p, d3drm %p.\n", wrap, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMWrap_iface.lpVtbl = &d3drm_wrap_vtbl;
    object->ref = 1;

    d3drm_object_init(&object->obj, classname);

    *wrap = object;

    return S_OK;
}
