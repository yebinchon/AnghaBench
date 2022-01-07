
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d8_vertex_declaration {int wined3d_vertex_declaration; int shader_handle; scalar_t__ elements_size; int * elements; } ;
struct d3d8_device {int wined3d_device; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int WARN (char*,int ) ;
 int d3d8_vertexdeclaration_wined3d_parent_ops ;
 int wined3d_vertex_declaration_create_from_fvf (int ,int ,struct d3d8_vertex_declaration*,int *,int *) ;

HRESULT d3d8_vertex_declaration_init_fvf(struct d3d8_vertex_declaration *declaration,
        struct d3d8_device *device, DWORD fvf)
{
    HRESULT hr;

    declaration->elements = ((void*)0);
    declaration->elements_size = 0;
    declaration->shader_handle = fvf;

    hr = wined3d_vertex_declaration_create_from_fvf(device->wined3d_device, fvf, declaration,
            &d3d8_vertexdeclaration_wined3d_parent_ops, &declaration->wined3d_vertex_declaration);
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d vertex declaration, hr %#x.\n", hr);
        return hr;
    }

    return D3D_OK;
}
