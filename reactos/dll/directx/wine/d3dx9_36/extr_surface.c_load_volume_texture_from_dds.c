
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dds_header {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Back; scalar_t__ Front; scalar_t__ Bottom; scalar_t__ Right; scalar_t__ Top; scalar_t__ Left; } ;
struct TYPE_5__ {scalar_t__ ResourceType; scalar_t__ Width; scalar_t__ Height; scalar_t__ Depth; int Format; int MipLevels; } ;
typedef int PALETTEENTRY ;
typedef int IDirect3DVolumeTexture9 ;
typedef int IDirect3DVolume9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;
typedef TYPE_2__ D3DBOX ;
typedef int BYTE ;


 scalar_t__ D3DRTYPE_VOLUMETEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXLoadVolumeFromMemory (int *,int const*,int *,int const*,int ,scalar_t__,scalar_t__,int *,TYPE_2__*,int ,int ) ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DVolume9_Release (int *) ;
 int IDirect3DVolumeTexture9_GetLevelCount (int *) ;
 int IDirect3DVolumeTexture9_GetVolumeLevel (int *,scalar_t__,int **) ;
 int calculate_dds_surface_size (int ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ max (int,scalar_t__) ;
 scalar_t__ min (int ,int ) ;

HRESULT load_volume_texture_from_dds(IDirect3DVolumeTexture9 *volume_texture, const void *src_data,
    const PALETTEENTRY *palette, DWORD filter, DWORD color_key, const D3DXIMAGE_INFO *src_info)
{
    HRESULT hr;
    UINT mip_level;
    UINT mip_levels;
    UINT src_slice_pitch;
    UINT src_row_pitch;
    D3DBOX src_box;
    UINT width, height, depth;
    IDirect3DVolume9 *volume;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);

    if (src_info->ResourceType != D3DRTYPE_VOLUMETEXTURE)
        return D3DXERR_INVALIDDATA;

    width = src_info->Width;
    height = src_info->Height;
    depth = src_info->Depth;
    mip_levels = min(src_info->MipLevels, IDirect3DVolumeTexture9_GetLevelCount(volume_texture));

    for (mip_level = 0; mip_level < mip_levels; mip_level++)
    {
        hr = calculate_dds_surface_size(src_info->Format, width, height, &src_row_pitch, &src_slice_pitch);
        if (FAILED(hr)) return hr;

        hr = IDirect3DVolumeTexture9_GetVolumeLevel(volume_texture, mip_level, &volume);
        if (FAILED(hr)) return hr;

        src_box.Left = 0;
        src_box.Top = 0;
        src_box.Right = width;
        src_box.Bottom = height;
        src_box.Front = 0;
        src_box.Back = depth;

        hr = D3DXLoadVolumeFromMemory(volume, palette, ((void*)0), pixels, src_info->Format,
            src_row_pitch, src_slice_pitch, ((void*)0), &src_box, filter, color_key);

        IDirect3DVolume9_Release(volume);
        if (FAILED(hr)) return hr;

        pixels += depth * src_slice_pitch;
        width = max(1, width / 2);
        height = max(1, height / 2);
        depth = max(1, depth / 2);
    }

    return D3D_OK;
}
