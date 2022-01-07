
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_frame {int IDirect3DRMFrame_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_frame_create (struct d3drm_frame**,int *,int *) ;

__attribute__((used)) static HRESULT d3drm_create_frame_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_frame *frame;
    HRESULT hr;

    if (FAILED(hr = d3drm_frame_create(&frame, ((void*)0), d3drm)))
        return hr;

    *object = &frame->IDirect3DRMFrame_iface;

    return hr;
}
