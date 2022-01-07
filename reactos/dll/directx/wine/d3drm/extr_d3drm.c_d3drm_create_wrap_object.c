
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_wrap {int IDirect3DRMWrap_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_wrap_create (struct d3drm_wrap**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_wrap_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_wrap *wrap;
    HRESULT hr;

    if (FAILED(hr = d3drm_wrap_create(&wrap, d3drm)))
        return hr;

    *object = &wrap->IDirect3DRMWrap_iface;

    return hr;
}
