
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_texture {int IDirect3DRMTexture_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_texture_create (struct d3drm_texture**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_texture_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_texture *texture;
    HRESULT hr;

    if (FAILED(hr = d3drm_texture_create(&texture, d3drm)))
        return hr;

    *object = &texture->IDirect3DRMTexture_iface;

    return hr;
}
