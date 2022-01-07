
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_header {int caps2; } ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; scalar_t__ MipLevels; scalar_t__ Width; int Format; } ;
typedef int RECT ;
typedef int PALETTEENTRY ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DCubeTexture9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;
typedef int BYTE ;


 int D3DCUBEMAP_FACE_NEGATIVE_Z ;
 int D3DCUBEMAP_FACE_POSITIVE_X ;
 scalar_t__ D3DRTYPE_CUBETEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXLoadSurfaceFromMemory (int *,int const*,int *,int const*,int ,scalar_t__,int *,int *,int ,int ) ;
 int D3D_OK ;
 int DDS_CAPS2_CUBEMAP_ALL_FACES ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DCubeTexture9_GetCubeMapSurface (int *,int,scalar_t__,int **) ;
 int IDirect3DCubeTexture9_GetLevelCount (int *) ;
 int IDirect3DSurface9_Release (int *) ;
 int SetRect (int *,int ,int ,scalar_t__,scalar_t__) ;
 int WARN (char*) ;
 int calculate_dds_surface_size (int ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ max (int,scalar_t__) ;
 scalar_t__ min (scalar_t__,int ) ;

HRESULT load_cube_texture_from_dds(IDirect3DCubeTexture9 *cube_texture, const void *src_data,
    const PALETTEENTRY *palette, DWORD filter, DWORD color_key, const D3DXIMAGE_INFO *src_info)
{
    HRESULT hr;
    int face;
    UINT mip_level;
    UINT size;
    RECT src_rect;
    UINT src_pitch;
    UINT mip_levels;
    UINT mip_level_size;
    IDirect3DSurface9 *surface;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);

    if (src_info->ResourceType != D3DRTYPE_CUBETEXTURE)
        return D3DXERR_INVALIDDATA;

    if ((header->caps2 & DDS_CAPS2_CUBEMAP_ALL_FACES) != DDS_CAPS2_CUBEMAP_ALL_FACES)
    {
        WARN("Only full cubemaps are supported\n");
        return D3DXERR_INVALIDDATA;
    }

    mip_levels = min(src_info->MipLevels, IDirect3DCubeTexture9_GetLevelCount(cube_texture));
    for (face = D3DCUBEMAP_FACE_POSITIVE_X; face <= D3DCUBEMAP_FACE_NEGATIVE_Z; face++)
    {
        size = src_info->Width;
        for (mip_level = 0; mip_level < src_info->MipLevels; mip_level++)
        {
            hr = calculate_dds_surface_size(src_info->Format, size, size, &src_pitch, &mip_level_size);
            if (FAILED(hr)) return hr;


            if (mip_level < mip_levels)
            {
                SetRect(&src_rect, 0, 0, size, size);

                IDirect3DCubeTexture9_GetCubeMapSurface(cube_texture, face, mip_level, &surface);
                hr = D3DXLoadSurfaceFromMemory(surface, palette, ((void*)0), pixels, src_info->Format, src_pitch,
                    ((void*)0), &src_rect, filter, color_key);
                IDirect3DSurface9_Release(surface);
                if (FAILED(hr)) return hr;
            }

            pixels += mip_level_size;
            size = max(1, size / 2);
        }
    }

    return D3D_OK;
}
