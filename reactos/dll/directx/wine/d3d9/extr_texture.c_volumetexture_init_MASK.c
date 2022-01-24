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
struct wined3d_resource_desc {scalar_t__ size; void* depth; void* height; void* width; int /*<<< orphan*/  access; int /*<<< orphan*/  usage; scalar_t__ multisample_quality; int /*<<< orphan*/  multisample_type; int /*<<< orphan*/  format; int /*<<< orphan*/  resource_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  const* lpVtbl; } ;
struct d3d9_texture {int usage; int /*<<< orphan*/ * parent_device; int /*<<< orphan*/  wined3d_texture; int /*<<< orphan*/  rtv_list; int /*<<< orphan*/  resource; TYPE_1__ IDirect3DBaseTexture9_iface; } ;
struct d3d9_device {int /*<<< orphan*/  IDirect3DDevice9Ex_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture9Vtbl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ D3DPOOL ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DPOOL_SCRATCH ; 
 int D3DUSAGE_AUTOGENMIPMAP ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  WINED3DUSAGE_SCRATCH ; 
 int /*<<< orphan*/  WINED3DUSAGE_TEXTURE ; 
 int /*<<< orphan*/  WINED3D_MULTISAMPLE_NONE ; 
 int /*<<< orphan*/  WINED3D_RTYPE_TEXTURE_3D ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3d9_texture_3d_vtbl ; 
 int /*<<< orphan*/  d3d9_texture_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*,void*) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wined3d_resource_desc*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct d3d9_texture*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

HRESULT FUNC13(struct d3d9_texture *texture, struct d3d9_device *device,
        UINT width, UINT height, UINT depth, UINT levels, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_resource_desc desc;
    HRESULT hr;

    texture->IDirect3DBaseTexture9_iface.lpVtbl = (const IDirect3DBaseTexture9Vtbl *)&d3d9_texture_3d_vtbl;
    FUNC3(&texture->resource);
    FUNC4(&texture->rtv_list);
    texture->usage = usage;

    desc.resource_type = WINED3D_RTYPE_TEXTURE_3D;
    desc.format = FUNC11(format);
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = FUNC12(usage);
    desc.usage |= WINED3DUSAGE_TEXTURE;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.access = FUNC10(pool, usage);
    desc.width = width;
    desc.height = height;
    desc.depth = depth;
    desc.size = 0;

    if (usage & D3DUSAGE_AUTOGENMIPMAP)
    {
        FUNC2("D3DUSAGE_AUTOGENMIPMAP volume texture is not supported, returning D3DERR_INVALIDCALL.\n");
        return D3DERR_INVALIDCALL;
    }
    if (!levels)
        levels = FUNC6(FUNC5(FUNC5(width, height), depth)) + 1;

    FUNC7();
    hr = FUNC9(device->wined3d_device, &desc, 1, levels, 0,
            NULL, texture, &d3d9_texture_wined3d_parent_ops, &texture->wined3d_texture);
    FUNC8();
    if (FUNC0(hr))
    {
        FUNC2("Failed to create wined3d volume texture, hr %#x.\n", hr);
        return hr;
    }

    texture->parent_device = &device->IDirect3DDevice9Ex_iface;
    FUNC1(texture->parent_device);

    return D3D_OK;
}