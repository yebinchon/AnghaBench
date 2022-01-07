
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_header {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; int Format; int Height; int Width; } ;
typedef int PALETTEENTRY ;
typedef int IDirect3DVolume9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;
typedef int D3DCOLOR ;
typedef int D3DBOX ;
typedef int BYTE ;


 scalar_t__ D3DRTYPE_VOLUMETEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXLoadVolumeFromMemory (int *,int const*,int const*,int const*,int ,int ,int ,int *,int const*,int ,int ) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int calculate_dds_surface_size (int ,int ,int ,int *,int *) ;

HRESULT load_volume_from_dds(IDirect3DVolume9 *dst_volume, const PALETTEENTRY *dst_palette,
    const D3DBOX *dst_box, const void *src_data, const D3DBOX *src_box, DWORD filter, D3DCOLOR color_key,
    const D3DXIMAGE_INFO *src_info)
{
    UINT row_pitch, slice_pitch;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);

    if (src_info->ResourceType != D3DRTYPE_VOLUMETEXTURE)
        return D3DXERR_INVALIDDATA;

    if (FAILED(calculate_dds_surface_size(src_info->Format, src_info->Width, src_info->Height, &row_pitch, &slice_pitch)))
        return E_NOTIMPL;

    return D3DXLoadVolumeFromMemory(dst_volume, dst_palette, dst_box, pixels, src_info->Format,
        row_pitch, slice_pitch, ((void*)0), src_box, filter, color_key);
}
