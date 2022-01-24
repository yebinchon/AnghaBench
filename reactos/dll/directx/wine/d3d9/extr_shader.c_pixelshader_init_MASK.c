#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ element_count; } ;
struct TYPE_7__ {scalar_t__ element_count; } ;
struct TYPE_6__ {scalar_t__ element_count; } ;
struct wined3d_shader_desc {size_t byte_code_size; int max_version; TYPE_4__ patch_constant_signature; TYPE_3__ output_signature; TYPE_2__ input_signature; int /*<<< orphan*/  format; int /*<<< orphan*/  const* byte_code; } ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_pixelshader {int refcount; int /*<<< orphan*/ * parent_device; int /*<<< orphan*/  wined3d_shader; TYPE_1__ IDirect3DPixelShader9_iface; } ;
struct d3d9_device {int /*<<< orphan*/  IDirect3DDevice9Ex_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3D_SHADER_BYTE_CODE_FORMAT_SM1 ; 
 int /*<<< orphan*/  d3d9_pixelshader_vtbl ; 
 int /*<<< orphan*/  d3d9_pixelshader_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wined3d_shader_desc*,struct d3d9_pixelshader*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC6(struct d3d9_pixelshader *shader, struct d3d9_device *device, const DWORD *byte_code)
{
    struct wined3d_shader_desc desc;
    HRESULT hr;

    shader->refcount = 1;
    shader->IDirect3DPixelShader9_iface.lpVtbl = &d3d9_pixelshader_vtbl;

    desc.byte_code = byte_code;
    desc.byte_code_size = ~(size_t)0;
    desc.format = WINED3D_SHADER_BYTE_CODE_FORMAT_SM1;
    desc.input_signature.element_count = 0;
    desc.output_signature.element_count = 0;
    desc.patch_constant_signature.element_count = 0;
    desc.max_version = 3;

    FUNC3();
    hr = FUNC5(device->wined3d_device, &desc, shader,
            &d3d9_pixelshader_wined3d_parent_ops, &shader->wined3d_shader);
    FUNC4();
    if (FUNC0(hr))
    {
        FUNC2("Failed to created wined3d pixel shader, hr %#x.\n", hr);
        return hr;
    }

    shader->parent_device = &device->IDirect3DDevice9Ex_iface;
    FUNC1(shader->parent_device);

    return D3D_OK;
}