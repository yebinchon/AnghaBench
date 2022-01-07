
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PALETTEENTRY ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DBaseTexture9 ;
typedef int ID3DXBuffer ;
typedef int HRESULT ;
typedef scalar_t__ D3DRESOURCETYPE ;


 int D3DCUBEMAP_FACE_POSITIVE_X ;
 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DRTYPE_CUBETEXTURE ;
 scalar_t__ D3DRTYPE_TEXTURE ;
 scalar_t__ D3DRTYPE_VOLUMETEXTURE ;
 int E_NOTIMPL ;
 int FIXME (char*) ;
 scalar_t__ IDirect3DBaseTexture9_GetType (int *) ;
 int IDirect3DSurface9_Release (int *) ;
 int IDirect3DTexture9_GetLevelCount (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int get_surface (scalar_t__,int *,int ,int ,int **) ;
 int save_dds_surface_to_memory (int **,int *,int *) ;

HRESULT save_dds_texture_to_memory(ID3DXBuffer **dst_buffer, IDirect3DBaseTexture9 *src_texture, const PALETTEENTRY *src_palette)
{
    HRESULT hr;
    D3DRESOURCETYPE type;
    UINT mip_levels;
    IDirect3DSurface9 *surface;

    type = IDirect3DBaseTexture9_GetType(src_texture);

    if ((type != D3DRTYPE_TEXTURE) && (type != D3DRTYPE_CUBETEXTURE) && (type != D3DRTYPE_VOLUMETEXTURE))
        return D3DERR_INVALIDCALL;

    if (type == D3DRTYPE_CUBETEXTURE)
    {
        FIXME("Cube texture not supported yet\n");
        return E_NOTIMPL;
    }
    else if (type == D3DRTYPE_VOLUMETEXTURE)
    {
        FIXME("Volume texture not supported yet\n");
        return E_NOTIMPL;
    }

    mip_levels = IDirect3DTexture9_GetLevelCount(src_texture);

    if (mip_levels > 1)
    {
        FIXME("Mipmap not supported yet\n");
        return E_NOTIMPL;
    }

    if (src_palette)
    {
        FIXME("Saving surfaces with palettized pixel formats not implemented yet\n");
        return E_NOTIMPL;
    }

    hr = get_surface(type, src_texture, D3DCUBEMAP_FACE_POSITIVE_X, 0, &surface);

    if (SUCCEEDED(hr))
    {
        hr = save_dds_surface_to_memory(dst_buffer, surface, ((void*)0));
        IDirect3DSurface9_Release(surface);
    }

    return hr;
}
