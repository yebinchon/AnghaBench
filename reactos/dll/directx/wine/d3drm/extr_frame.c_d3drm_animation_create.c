
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct d3drm_animation {int ref; int options; int * d3drm; int obj; TYPE_2__ IDirect3DRMAnimation2_iface; TYPE_1__ IDirect3DRMAnimation_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int D3DRMANIMATION_CLOSED ;
 int D3DRMANIMATION_LINEARPOSITION ;
 int D3DRM_OK ;
 int E_OUTOFMEMORY ;
 int IDirect3DRM_AddRef (int *) ;
 int TRACE (char*,struct d3drm_animation**,int *) ;
 int d3drm_animation1_vtbl ;
 int d3drm_animation2_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_animation* heap_alloc_zero (int) ;

HRESULT d3drm_animation_create(struct d3drm_animation **animation, IDirect3DRM *d3drm)
{
    static const char classname[] = "Animation";
    struct d3drm_animation *object;
    HRESULT hr = D3DRM_OK;

    TRACE("animation %p, d3drm %p.\n", animation, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMAnimation_iface.lpVtbl = &d3drm_animation1_vtbl;
    object->IDirect3DRMAnimation2_iface.lpVtbl = &d3drm_animation2_vtbl;
    object->d3drm = d3drm;
    object->ref = 1;
    object->options = D3DRMANIMATION_CLOSED | D3DRMANIMATION_LINEARPOSITION;

    d3drm_object_init(&object->obj, classname);

    IDirect3DRM_AddRef(object->d3drm);

    *animation = object;

    return hr;
}
