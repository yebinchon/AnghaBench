
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct d3drm_device {int obj; int * d3drm; TYPE_3__ IDirect3DRMWinDevice_iface; TYPE_2__ IDirect3DRMDevice3_iface; TYPE_1__ IDirect3DRMDevice2_iface; TYPE_4__ IDirect3DRMDevice_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int D3DRM_OK ;
 int E_OUTOFMEMORY ;
 int TRACE (char*,struct d3drm_device**,int *) ;
 int d3drm_device1_vtbl ;
 int d3drm_device2_vtbl ;
 int d3drm_device3_vtbl ;
 int d3drm_device_win_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 struct d3drm_device* heap_alloc_zero (int) ;

HRESULT d3drm_device_create(struct d3drm_device **device, IDirect3DRM *d3drm)
{
    static const char classname[] = "Device";
    struct d3drm_device *object;

    TRACE("device %p, d3drm %p.\n", device, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMDevice_iface.lpVtbl = &d3drm_device1_vtbl;
    object->IDirect3DRMDevice2_iface.lpVtbl = &d3drm_device2_vtbl;
    object->IDirect3DRMDevice3_iface.lpVtbl = &d3drm_device3_vtbl;
    object->IDirect3DRMWinDevice_iface.lpVtbl = &d3drm_device_win_vtbl;
    object->d3drm = d3drm;
    d3drm_object_init(&object->obj, classname);

    *device = object;

    return D3DRM_OK;
}
