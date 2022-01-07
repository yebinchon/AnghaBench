
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_light {int IDirect3DRMLight_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_light_create (struct d3drm_light**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_light_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_light *light;
    HRESULT hr;

    if (FAILED(hr = d3drm_light_create(&light, d3drm)))
        return hr;

    *object = &light->IDirect3DRMLight_iface;

    return hr;
}
