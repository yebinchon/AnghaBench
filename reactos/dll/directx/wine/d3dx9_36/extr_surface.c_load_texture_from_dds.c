
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_header {int dummy; } ;
typedef unsigned int UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; unsigned int Width; unsigned int Height; int Format; int MipLevels; } ;
typedef int RECT ;
typedef int PALETTEENTRY ;
typedef int IDirect3DTexture9 ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;
typedef int D3DCOLOR ;
typedef int BYTE ;


 scalar_t__ D3DRTYPE_CUBETEXTURE ;
 scalar_t__ D3DRTYPE_TEXTURE ;
 scalar_t__ D3DRTYPE_VOLUMETEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXLoadSurfaceFromMemory (int *,int const*,int *,int const*,int ,unsigned int,int *,int *,int ,int ) ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DSurface9_Release (int *) ;
 int IDirect3DTexture9_GetLevelCount (int *) ;
 int IDirect3DTexture9_GetSurfaceLevel (int *,unsigned int,int **) ;
 int SetRect (int *,int ,int ,unsigned int,unsigned int) ;
 int WARN (char*,scalar_t__) ;
 int calculate_dds_surface_size (int ,unsigned int,unsigned int,unsigned int*,unsigned int*) ;
 unsigned int max (int,unsigned int) ;
 unsigned int min (int ,int ) ;

HRESULT load_texture_from_dds(IDirect3DTexture9 *texture, const void *src_data, const PALETTEENTRY *palette,
        DWORD filter, D3DCOLOR color_key, const D3DXIMAGE_INFO *src_info, unsigned int skip_levels,
        unsigned int *loaded_miplevels)
{
    HRESULT hr;
    RECT src_rect;
    UINT src_pitch;
    UINT mip_level;
    UINT mip_levels;
    UINT mip_level_size;
    UINT width, height;
    IDirect3DSurface9 *surface;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);



    if ((src_info->ResourceType != D3DRTYPE_TEXTURE)
            && (src_info->ResourceType != D3DRTYPE_CUBETEXTURE)
            && (src_info->ResourceType != D3DRTYPE_VOLUMETEXTURE))
    {
        WARN("Trying to load a %u resource as a 2D texture, returning failure.\n", src_info->ResourceType);
        return D3DXERR_INVALIDDATA;
    }

    width = src_info->Width;
    height = src_info->Height;
    mip_levels = min(src_info->MipLevels, IDirect3DTexture9_GetLevelCount(texture));
    if (src_info->ResourceType == D3DRTYPE_VOLUMETEXTURE)
        mip_levels = 1;
    for (mip_level = 0; mip_level < mip_levels + skip_levels; ++mip_level)
    {
        hr = calculate_dds_surface_size(src_info->Format, width, height, &src_pitch, &mip_level_size);
        if (FAILED(hr)) return hr;

        if (mip_level >= skip_levels)
        {
            SetRect(&src_rect, 0, 0, width, height);

            IDirect3DTexture9_GetSurfaceLevel(texture, mip_level - skip_levels, &surface);
            hr = D3DXLoadSurfaceFromMemory(surface, palette, ((void*)0), pixels, src_info->Format, src_pitch,
                    ((void*)0), &src_rect, filter, color_key);
            IDirect3DSurface9_Release(surface);
            if (FAILED(hr))
                return hr;
        }

        pixels += mip_level_size;
        width = max(1, width / 2);
        height = max(1, height / 2);
    }

    *loaded_miplevels = mip_levels - skip_levels;

    return D3D_OK;
}
