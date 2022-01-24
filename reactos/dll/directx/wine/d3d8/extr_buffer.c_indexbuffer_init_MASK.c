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
struct wined3d_buffer_desc {int usage; int access; scalar_t__ structure_byte_stride; scalar_t__ misc_flags; int /*<<< orphan*/  bind_flags; int /*<<< orphan*/  byte_width; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d8_indexbuffer {int /*<<< orphan*/ * parent_device; int /*<<< orphan*/  wined3d_buffer; int /*<<< orphan*/  format; int /*<<< orphan*/  resource; TYPE_1__ IDirect3DIndexBuffer8_iface; } ;
struct d3d8_device {int /*<<< orphan*/  IDirect3DDevice8_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ D3DPOOL ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 scalar_t__ D3DPOOL_SCRATCH ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int WINED3DUSAGE_MASK ; 
 int WINED3DUSAGE_SCRATCH ; 
 int WINED3DUSAGE_STATICDECL ; 
 int /*<<< orphan*/  WINED3D_BIND_INDEX_BUFFER ; 
 int WINED3D_RESOURCE_ACCESS_MAP_R ; 
 int WINED3D_RESOURCE_ACCESS_MAP_W ; 
 int /*<<< orphan*/  d3d8_indexbuffer_vtbl ; 
 int /*<<< orphan*/  d3d8_indexbuffer_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wined3d_buffer_desc*,int /*<<< orphan*/ *,struct d3d8_indexbuffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

HRESULT FUNC9(struct d3d8_indexbuffer *buffer, struct d3d8_device *device,
        UINT size, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_buffer_desc desc;
    HRESULT hr;

    desc.byte_width = size;
    desc.usage = (usage & WINED3DUSAGE_MASK) | WINED3DUSAGE_STATICDECL;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.bind_flags = WINED3D_BIND_INDEX_BUFFER;
    desc.access = FUNC7(pool, usage)
            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.misc_flags = 0;
    desc.structure_byte_stride = 0;

    buffer->IDirect3DIndexBuffer8_iface.lpVtbl = &d3d8_indexbuffer_vtbl;
    FUNC3(&buffer->resource);
    buffer->format = FUNC8(format);

    FUNC5();
    hr = FUNC4(device->wined3d_device, &desc, NULL, buffer,
            &d3d8_indexbuffer_wined3d_parent_ops, &buffer->wined3d_buffer);
    FUNC6();
    if (FUNC0(hr))
    {
        FUNC2("Failed to create wined3d buffer, hr %#x.\n", hr);
        return hr;
    }

    buffer->parent_device = &device->IDirect3DDevice8_iface;
    FUNC1(buffer->parent_device);

    return D3D_OK;
}