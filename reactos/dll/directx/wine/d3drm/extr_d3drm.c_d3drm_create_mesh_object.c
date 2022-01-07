
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_mesh {int IDirect3DRMMesh_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_mesh_create (struct d3drm_mesh**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_mesh_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_mesh *mesh;
    HRESULT hr;

    if (FAILED(hr = d3drm_mesh_create(&mesh, d3drm)))
        return hr;

    *object = &mesh->IDirect3DRMMesh_iface;

    return hr;
}
