
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct d3drm_face {int ref; int obj; TYPE_2__ IDirect3DRMFace2_iface; TYPE_1__ IDirect3DRMFace_iface; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,struct d3drm_face**) ;
 int d3drm_face1_vtbl ;
 int d3drm_face2_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_face* heap_alloc_zero (int) ;

HRESULT d3drm_face_create(struct d3drm_face **face)
{
    static const char classname[] = "Face";
    struct d3drm_face *object;

    TRACE("face %p.\n", face);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMFace_iface.lpVtbl = &d3drm_face1_vtbl;
    object->IDirect3DRMFace2_iface.lpVtbl = &d3drm_face2_vtbl;
    object->ref = 1;

    d3drm_object_init(&object->obj, classname);

    *face = object;

    return S_OK;
}
