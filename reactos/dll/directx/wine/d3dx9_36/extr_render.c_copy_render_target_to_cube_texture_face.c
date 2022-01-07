
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirect3DSurface9 ;
typedef int IDirect3DCubeTexture9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DCUBEMAP_FACES ;


 int D3DXLoadSurfaceFromSurface (int *,int *,int *,int *,int *,int *,int ,int ) ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DCubeTexture9_GetCubeMapSurface (int *,int ,int ,int **) ;
 int IDirect3DSurface9_Release (int *) ;

__attribute__((used)) static void copy_render_target_to_cube_texture_face(IDirect3DCubeTexture9 *cube_texture,
        D3DCUBEMAP_FACES face, IDirect3DSurface9 *render_target, DWORD filter)
{
    HRESULT hr;
    IDirect3DSurface9 *cube_surface;

    IDirect3DCubeTexture9_GetCubeMapSurface(cube_texture, face, 0, &cube_surface);

    hr = D3DXLoadSurfaceFromSurface(cube_surface, ((void*)0), ((void*)0), render_target, ((void*)0), ((void*)0), filter, 0);
    if (FAILED(hr)) ERR("Copying render target data to surface failed %#x\n", hr);

    IDirect3DSurface9_Release(cube_surface);
}
