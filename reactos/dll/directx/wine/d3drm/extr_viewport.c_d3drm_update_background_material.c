
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct d3drm_viewport {int material; int camera; } ;
typedef int mat ;
struct TYPE_5__ {int diffuse; } ;
struct TYPE_6__ {int dwSize; TYPE_1__ u; } ;
typedef int IDirect3DRMFrame ;
typedef int HRESULT ;
typedef TYPE_2__ D3DMATERIAL ;
typedef int D3DCOLOR ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DMaterial_SetMaterial (int ,TYPE_2__*) ;
 int IDirect3DRMFrame_GetScene (int ,int **) ;
 int IDirect3DRMFrame_GetSceneBackground (int *) ;
 int IDirect3DRMFrame_Release (int *) ;
 int d3drm_normalize_d3d_color (int *,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT d3drm_update_background_material(struct d3drm_viewport *viewport)
{
    IDirect3DRMFrame *root_frame;
    D3DCOLOR color;
    D3DMATERIAL mat;
    HRESULT hr;

    if (FAILED(hr = IDirect3DRMFrame_GetScene(viewport->camera, &root_frame)))
        return hr;
    color = IDirect3DRMFrame_GetSceneBackground(root_frame);
    IDirect3DRMFrame_Release(root_frame);

    memset(&mat, 0, sizeof(mat));
    mat.dwSize = sizeof(mat);
    d3drm_normalize_d3d_color(&mat.u.diffuse, color);

    return IDirect3DMaterial_SetMaterial(viewport->material, &mat);
}
