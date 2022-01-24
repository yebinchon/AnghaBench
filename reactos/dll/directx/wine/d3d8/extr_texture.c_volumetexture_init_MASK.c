#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_resource_desc {int usage; scalar_t__ size; void* depth; void* height; void* width; int /*<<< orphan*/  access; scalar_t__ multisample_quality; int /*<<< orphan*/  multisample_type; int /*<<< orphan*/  format; int /*<<< orphan*/  resource_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  const* lpVtbl; } ;
struct d3d8_texture {int /*<<< orphan*/ * parent_device; int /*<<< orphan*/  wined3d_texture; int /*<<< orphan*/  rtv_list; int /*<<< orphan*/  resource; TYPE_1__ IDirect3DBaseTexture8_iface; } ;
struct d3d8_device {int /*<<< orphan*/  IDirect3DDevice8_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture8Vtbl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ D3DPOOL ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 scalar_t__ D3DPOOL_SCRATCH ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  Direct3DVolumeTexture8_Vtbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int WINED3DUSAGE_MASK ; 
 int WINED3DUSAGE_SCRATCH ; 
 int WINED3DUSAGE_TEXTURE ; 
 int /*<<< orphan*/  WINED3D_MULTISAMPLE_NONE ; 
 int /*<<< orphan*/  WINED3D_RTYPE_TEXTURE_3D ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3d8_texture_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*,void*) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wined3d_resource_desc*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct d3d8_texture*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

HRESULT FUNC12(struct d3d8_texture *texture, struct d3d8_device *device,
        UINT width, UINT height, UINT depth, UINT levels, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_resource_desc desc;
    HRESULT hr;

    texture->IDirect3DBaseTexture8_iface.lpVtbl = (const IDirect3DBaseTexture8Vtbl *)&Direct3DVolumeTexture8_Vtbl;
    FUNC3(&texture->resource);
    FUNC4(&texture->rtv_list);

    desc.resource_type = WINED3D_RTYPE_TEXTURE_3D;
    desc.format = FUNC11(format);
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = usage & WINED3DUSAGE_MASK;
    desc.usage |= WINED3DUSAGE_TEXTURE;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.access = FUNC10(pool, usage);
    desc.width = width;
    desc.height = height;
    desc.depth = depth;
    desc.size = 0;

    if (!levels)
        levels = FUNC6(FUNC5(FUNC5(width, height), depth)) + 1;

    FUNC7();
    hr = FUNC9(device->wined3d_device, &desc, 1, levels, 0,
            NULL, texture, &d3d8_texture_wined3d_parent_ops, &texture->wined3d_texture);
    FUNC8();
    if (FUNC0(hr))
    {
        FUNC2("Failed to create wined3d volume texture, hr %#x.\n", hr);
        return hr;
    }

    texture->parent_device = &device->IDirect3DDevice8_iface;
    FUNC1(texture->parent_device);

    return D3D_OK;
}