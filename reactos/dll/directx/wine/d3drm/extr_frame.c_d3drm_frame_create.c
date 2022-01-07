
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct d3drm_frame {int ref; int traversal_options; int * d3drm; TYPE_3__ IDirect3DRMFrame3_iface; int transform; int obj; int scenebackground; TYPE_2__ IDirect3DRMFrame2_iface; TYPE_1__ IDirect3DRMFrame_iface; } ;
typedef int IUnknown ;
typedef int IDirect3DRMFrame3 ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 int D3DRMFRAME_PICKENABLE ;
 int D3DRMFRAME_RENDERENABLE ;
 int D3DRM_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DRMFrame3_AddChild (int *,TYPE_3__*) ;
 int IDirect3DRMFrame_QueryInterface (int *,int *,void**) ;
 int IDirect3DRMFrame_Release (int *) ;
 int IDirect3DRM_AddRef (int *) ;
 int IID_IDirect3DRMFrame3 ;
 int TRACE (char*,struct d3drm_frame**,int *,int *) ;
 int d3drm_frame1_vtbl ;
 int d3drm_frame2_vtbl ;
 int d3drm_frame3_vtbl ;
 int d3drm_object_init (int *,char const*) ;
 int d3drm_set_color (int *,float,float,float,float) ;
 struct d3drm_frame* heap_alloc_zero (int) ;
 int heap_free (struct d3drm_frame*) ;
 int identity ;

HRESULT d3drm_frame_create(struct d3drm_frame **frame, IUnknown *parent_frame, IDirect3DRM *d3drm)
{
    static const char classname[] = "Frame";
    struct d3drm_frame *object;
    HRESULT hr = D3DRM_OK;

    TRACE("frame %p, parent_frame %p, d3drm %p.\n", frame, parent_frame, d3drm);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    object->IDirect3DRMFrame_iface.lpVtbl = &d3drm_frame1_vtbl;
    object->IDirect3DRMFrame2_iface.lpVtbl = &d3drm_frame2_vtbl;
    object->IDirect3DRMFrame3_iface.lpVtbl = &d3drm_frame3_vtbl;
    object->d3drm = d3drm;
    object->ref = 1;
    d3drm_set_color(&object->scenebackground, 0.0f, 0.0f, 0.0f, 1.0f);
    object->traversal_options = D3DRMFRAME_RENDERENABLE | D3DRMFRAME_PICKENABLE;

    d3drm_object_init(&object->obj, classname);

    object->transform = identity;

    if (parent_frame)
    {
        IDirect3DRMFrame3 *p;

        if (FAILED(hr = IDirect3DRMFrame_QueryInterface(parent_frame, &IID_IDirect3DRMFrame3, (void **)&p)))
        {
            heap_free(object);
            return hr;
        }
        IDirect3DRMFrame_Release(parent_frame);
        IDirect3DRMFrame3_AddChild(p, &object->IDirect3DRMFrame3_iface);
    }

    IDirect3DRM_AddRef(object->d3drm);

    *frame = object;

    return hr;
}
