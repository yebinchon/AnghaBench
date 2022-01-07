
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d8_vertex_declaration {int dummy; } ;
struct d3d8_device {int dummy; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,struct d3d8_vertex_declaration*,...) ;
 int WARN (char*,int ) ;
 int d3d8_vertex_declaration_init (struct d3d8_vertex_declaration*,struct d3d8_device*,int const*,int ) ;
 struct d3d8_vertex_declaration* heap_alloc_zero (int) ;
 int heap_free (struct d3d8_vertex_declaration*) ;

__attribute__((used)) static HRESULT d3d8_vertexshader_create_vertexdeclaration(struct d3d8_device *device,
        const DWORD *declaration, DWORD shader_handle, struct d3d8_vertex_declaration **decl_ptr)
{
    struct d3d8_vertex_declaration *object;
    HRESULT hr;

    TRACE("device %p, declaration %p, shader_handle %#x, decl_ptr %p.\n",
            device, declaration, shader_handle, decl_ptr);

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    hr = d3d8_vertex_declaration_init(object, device, declaration, shader_handle);
    if (FAILED(hr))
    {
        WARN("Failed to initialize vertex declaration, hr %#x.\n", hr);
        heap_free(object);
        return hr;
    }

    TRACE("Created vertex declaration %p.\n", object);
    *decl_ptr = object;

    return D3D_OK;
}
