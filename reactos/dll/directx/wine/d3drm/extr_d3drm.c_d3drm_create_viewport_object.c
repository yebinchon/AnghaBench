
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_viewport {int IDirect3DRMViewport_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_viewport_create (struct d3drm_viewport**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_viewport_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_viewport *viewport;
    HRESULT hr;

    if (FAILED(hr = d3drm_viewport_create(&viewport, d3drm)))
        return hr;

    *object = &viewport->IDirect3DRMViewport_iface;

    return hr;
}
