
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_header {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; int Format; int Height; int Width; } ;
typedef int RECT ;
typedef int PALETTEENTRY ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;
typedef int D3DCOLOR ;
typedef int BYTE ;


 scalar_t__ D3DRTYPE_TEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXLoadSurfaceFromMemory (int *,int const*,int const*,int const*,int ,int ,int *,int const*,int ,int ) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int calculate_dds_surface_size (int ,int ,int ,int *,int *) ;

__attribute__((used)) static HRESULT load_surface_from_dds(IDirect3DSurface9 *dst_surface, const PALETTEENTRY *dst_palette,
    const RECT *dst_rect, const void *src_data, const RECT *src_rect, DWORD filter, D3DCOLOR color_key,
    const D3DXIMAGE_INFO *src_info)
{
    UINT size;
    UINT src_pitch;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);

    if (src_info->ResourceType != D3DRTYPE_TEXTURE)
        return D3DXERR_INVALIDDATA;

    if (FAILED(calculate_dds_surface_size(src_info->Format, src_info->Width, src_info->Height, &src_pitch, &size)))
        return E_NOTIMPL;

    return D3DXLoadSurfaceFromMemory(dst_surface, dst_palette, dst_rect, pixels, src_info->Format,
        src_pitch, ((void*)0), src_rect, filter, color_key);
}
