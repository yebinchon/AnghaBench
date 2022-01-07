
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_mesh_builder {int IDirect3DRMMeshBuilder2_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_mesh_builder_create (struct d3drm_mesh_builder**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_mesh_builder_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_mesh_builder *mesh_builder;
    HRESULT hr;

    if (FAILED(hr = d3drm_mesh_builder_create(&mesh_builder, d3drm)))
        return hr;

    *object = &mesh_builder->IDirect3DRMMeshBuilder2_iface;

    return hr;
}
