
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDirect3DSurface9 {int dummy; } ;
struct IDirect3DBaseTexture9 {int dummy; } ;
typedef int UINT ;
typedef int IDirect3DTexture9 ;
typedef int IDirect3DCubeTexture9 ;
typedef int HRESULT ;
typedef int D3DRESOURCETYPE ;




 int ERR (char*) ;
 int E_NOTIMPL ;
 int IDirect3DCubeTexture9_GetCubeMapSurface (int *,int,int ,struct IDirect3DSurface9**) ;
 int IDirect3DTexture9_GetSurfaceLevel (int *,int ,struct IDirect3DSurface9**) ;

__attribute__((used)) static HRESULT get_surface(D3DRESOURCETYPE type, struct IDirect3DBaseTexture9 *tex,
        int face, UINT level, struct IDirect3DSurface9 **surf)
{
    switch (type)
    {
        case 128:
            return IDirect3DTexture9_GetSurfaceLevel((IDirect3DTexture9*) tex, level, surf);
        case 129:
            return IDirect3DCubeTexture9_GetCubeMapSurface((IDirect3DCubeTexture9*) tex, face, level, surf);
        default:
            ERR("Unexpected texture type\n");
            return E_NOTIMPL;
    }
}
