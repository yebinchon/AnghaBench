
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ element_count; } ;
struct TYPE_7__ {scalar_t__ element_count; } ;
struct TYPE_6__ {scalar_t__ element_count; } ;
struct wined3d_shader_desc {size_t byte_code_size; int max_version; TYPE_4__ patch_constant_signature; TYPE_3__ output_signature; TYPE_2__ input_signature; int format; int const* byte_code; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct d3d9_vertexshader {int refcount; int * parent_device; int wined3d_shader; TYPE_1__ IDirect3DVertexShader9_iface; } ;
struct d3d9_device {int IDirect3DDevice9Ex_iface; int wined3d_device; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_AddRef (int *) ;
 int WARN (char*,int ) ;
 int WINED3D_SHADER_BYTE_CODE_FORMAT_SM1 ;
 int d3d9_vertexshader_vtbl ;
 int d3d9_vertexshader_wined3d_parent_ops ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_shader_create_vs (int ,struct wined3d_shader_desc*,struct d3d9_vertexshader*,int *,int *) ;

HRESULT vertexshader_init(struct d3d9_vertexshader *shader, struct d3d9_device *device, const DWORD *byte_code)
{
    struct wined3d_shader_desc desc;
    HRESULT hr;

    shader->refcount = 1;
    shader->IDirect3DVertexShader9_iface.lpVtbl = &d3d9_vertexshader_vtbl;

    desc.byte_code = byte_code;
    desc.byte_code_size = ~(size_t)0;
    desc.format = WINED3D_SHADER_BYTE_CODE_FORMAT_SM1;
    desc.input_signature.element_count = 0;
    desc.output_signature.element_count = 0;
    desc.patch_constant_signature.element_count = 0;
    desc.max_version = 3;

    wined3d_mutex_lock();
    hr = wined3d_shader_create_vs(device->wined3d_device, &desc, shader,
            &d3d9_vertexshader_wined3d_parent_ops, &shader->wined3d_shader);
    wined3d_mutex_unlock();
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d vertex shader, hr %#x.\n", hr);
        return hr;
    }

    shader->parent_device = &device->IDirect3DDevice9Ex_iface;
    IDirect3DDevice9Ex_AddRef(shader->parent_device);

    return D3D_OK;
}
