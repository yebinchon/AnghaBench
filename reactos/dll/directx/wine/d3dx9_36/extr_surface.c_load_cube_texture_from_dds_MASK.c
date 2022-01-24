#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dds_header {int caps2; } ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; scalar_t__ MipLevels; scalar_t__ Width; int /*<<< orphan*/  Format; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  PALETTEENTRY ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DCubeTexture9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ D3DXIMAGE_INFO ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int D3DCUBEMAP_FACE_NEGATIVE_Z ; 
 int D3DCUBEMAP_FACE_POSITIVE_X ; 
 scalar_t__ D3DRTYPE_CUBETEXTURE ; 
 int /*<<< orphan*/  D3DXERR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D_OK ; 
 int DDS_CAPS2_CUBEMAP_ALL_FACES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

HRESULT FUNC10(IDirect3DCubeTexture9 *cube_texture, const void *src_data,
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
        FUNC6("Only full cubemaps are supported\n");
        return D3DXERR_INVALIDDATA;
    }

    mip_levels = FUNC9(src_info->MipLevels, FUNC3(cube_texture));
    for (face = D3DCUBEMAP_FACE_POSITIVE_X; face <= D3DCUBEMAP_FACE_NEGATIVE_Z; face++)
    {
        size = src_info->Width;
        for (mip_level = 0; mip_level < src_info->MipLevels; mip_level++)
        {
            hr = FUNC7(src_info->Format, size, size, &src_pitch, &mip_level_size);
            if (FUNC1(hr)) return hr;

            /* if texture has fewer mip levels than DDS file, skip excessive mip levels */
            if (mip_level < mip_levels)
            {
                FUNC5(&src_rect, 0, 0, size, size);

                FUNC2(cube_texture, face, mip_level, &surface);
                hr = FUNC0(surface, palette, NULL, pixels, src_info->Format, src_pitch,
                    NULL, &src_rect, filter, color_key);
                FUNC4(surface);
                if (FUNC1(hr)) return hr;
            }

            pixels += mip_level_size;
            size = FUNC8(1, size / 2);
        }
    }

    return D3D_OK;
}