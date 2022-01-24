#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  PALETTEENTRY ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture9 ;
typedef  int /*<<< orphan*/  ID3DXBuffer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ D3DRESOURCETYPE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCUBEMAP_FACE_POSITIVE_X ; 
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DRTYPE_CUBETEXTURE ; 
 scalar_t__ D3DRTYPE_TEXTURE ; 
 scalar_t__ D3DRTYPE_VOLUMETEXTURE ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC7(ID3DXBuffer **dst_buffer, IDirect3DBaseTexture9 *src_texture, const PALETTEENTRY *src_palette)
{
    HRESULT hr;
    D3DRESOURCETYPE type;
    UINT mip_levels;
    IDirect3DSurface9 *surface;

    type = FUNC1(src_texture);

    if ((type !=  D3DRTYPE_TEXTURE) && (type != D3DRTYPE_CUBETEXTURE) && (type != D3DRTYPE_VOLUMETEXTURE))
        return D3DERR_INVALIDCALL;

    if (type == D3DRTYPE_CUBETEXTURE)
    {
        FUNC0("Cube texture not supported yet\n");
        return E_NOTIMPL;
    }
    else if (type == D3DRTYPE_VOLUMETEXTURE)
    {
        FUNC0("Volume texture not supported yet\n");
        return E_NOTIMPL;
    }

    mip_levels = FUNC3(src_texture);

    if (mip_levels > 1)
    {
        FUNC0("Mipmap not supported yet\n");
        return E_NOTIMPL;
    }

    if (src_palette)
    {
        FUNC0("Saving surfaces with palettized pixel formats not implemented yet\n");
        return E_NOTIMPL;
    }

    hr = FUNC5(type, src_texture, D3DCUBEMAP_FACE_POSITIVE_X, 0, &surface);

    if (FUNC4(hr))
    {
        hr = FUNC6(dst_buffer, surface, NULL);
        FUNC2(surface);
    }

    return hr;
}