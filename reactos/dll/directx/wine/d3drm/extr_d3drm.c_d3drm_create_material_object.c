
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_material {int IDirect3DRMMaterial2_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_material_create (struct d3drm_material**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_material_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_material *material;
    HRESULT hr;

    if (FAILED(hr = d3drm_material_create(&material, d3drm)))
        return hr;

    *object = &material->IDirect3DRMMaterial2_iface;

    return hr;
}
