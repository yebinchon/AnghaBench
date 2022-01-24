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
struct dds_header {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {scalar_t__ ResourceType; int /*<<< orphan*/  Format; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; } ;
typedef  int /*<<< orphan*/  PALETTEENTRY ;
typedef  int /*<<< orphan*/  IDirect3DVolume9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ D3DXIMAGE_INFO ;
typedef  int /*<<< orphan*/  D3DCOLOR ;
typedef  int /*<<< orphan*/  D3DBOX ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ D3DRTYPE_VOLUMETEXTURE ; 
 int /*<<< orphan*/  D3DXERR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC3(IDirect3DVolume9 *dst_volume, const PALETTEENTRY *dst_palette,
    const D3DBOX *dst_box, const void *src_data, const D3DBOX *src_box, DWORD filter, D3DCOLOR color_key,
    const D3DXIMAGE_INFO *src_info)
{
    UINT row_pitch, slice_pitch;
    const struct dds_header *header = src_data;
    const BYTE *pixels = (BYTE *)(header + 1);

    if (src_info->ResourceType != D3DRTYPE_VOLUMETEXTURE)
        return D3DXERR_INVALIDDATA;

    if (FUNC1(FUNC2(src_info->Format, src_info->Width, src_info->Height, &row_pitch, &slice_pitch)))
        return E_NOTIMPL;

    return FUNC0(dst_volume, dst_palette, dst_box, pixels, src_info->Format,
        row_pitch, slice_pitch, NULL, src_box, filter, color_key);
}