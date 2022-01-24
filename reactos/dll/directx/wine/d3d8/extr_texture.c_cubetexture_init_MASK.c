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
struct wined3d_resource_desc {int usage; int access; int depth; scalar_t__ size; void* height; void* width; scalar_t__ multisample_quality; int /*<<< orphan*/  multisample_type; int /*<<< orphan*/  format; int /*<<< orphan*/  resource_type; } ;
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
 scalar_t__ D3DPOOL_DEFAULT ; 
 scalar_t__ D3DPOOL_SCRATCH ; 
 int D3DUSAGE_DYNAMIC ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  Direct3DCubeTexture8_Vtbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int WINED3DUSAGE_LEGACY_CUBEMAP ; 
 int WINED3DUSAGE_MASK ; 
 int WINED3DUSAGE_SCRATCH ; 
 int WINED3DUSAGE_TEXTURE ; 
 int /*<<< orphan*/  WINED3D_MULTISAMPLE_NONE ; 
 int WINED3D_RESOURCE_ACCESS_MAP_R ; 
 int WINED3D_RESOURCE_ACCESS_MAP_W ; 
 int /*<<< orphan*/  WINED3D_RTYPE_TEXTURE_2D ; 
 int WINED3D_TEXTURE_CREATE_MAPPABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3d8_texture_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct wined3d_resource_desc*,int,void*,int,int /*<<< orphan*/ *,struct d3d8_texture*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

HRESULT FUNC11(struct d3d8_texture *texture, struct d3d8_device *device,
        UINT edge_length, UINT levels, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_resource_desc desc;
    DWORD flags = 0;
    HRESULT hr;

    texture->IDirect3DBaseTexture8_iface.lpVtbl = (const IDirect3DBaseTexture8Vtbl *)&Direct3DCubeTexture8_Vtbl;
    FUNC3(&texture->resource);
    FUNC4(&texture->rtv_list);

    desc.resource_type = WINED3D_RTYPE_TEXTURE_2D;
    desc.format = FUNC10(format);
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = usage & WINED3DUSAGE_MASK;
    desc.usage |= WINED3DUSAGE_LEGACY_CUBEMAP | WINED3DUSAGE_TEXTURE;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.access = FUNC9(pool, usage)
            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.width = edge_length;
    desc.height = edge_length;
    desc.depth = 1;
    desc.size = 0;

    if (pool != D3DPOOL_DEFAULT || (usage & D3DUSAGE_DYNAMIC))
        flags |= WINED3D_TEXTURE_CREATE_MAPPABLE;

    if (!levels)
        levels = FUNC5(edge_length) + 1;

    FUNC6();
    hr = FUNC8(device->wined3d_device, &desc, 6, levels, flags,
            NULL, texture, &d3d8_texture_wined3d_parent_ops, &texture->wined3d_texture);
    FUNC7();
    if (FUNC0(hr))
    {
        FUNC2("Failed to create wined3d cube texture, hr %#x.\n", hr);
        return hr;
    }

    texture->parent_device = &device->IDirect3DDevice8_iface;
    FUNC1(texture->parent_device);

    return D3D_OK;
}