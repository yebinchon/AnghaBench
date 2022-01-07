
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d9_vertex_declaration {int dummy; } ;
struct d3d9_device {int dummy; } ;
typedef int HRESULT ;
typedef int D3DVERTEXELEMENT9 ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,struct d3d9_vertex_declaration*) ;
 int WARN (char*,int ) ;
 struct d3d9_vertex_declaration* heap_alloc_zero (int) ;
 int heap_free (struct d3d9_vertex_declaration*) ;
 int vertexdeclaration_init (struct d3d9_vertex_declaration*,struct d3d9_device*,int const*) ;

HRESULT d3d9_vertex_declaration_create(struct d3d9_device *device,
        const D3DVERTEXELEMENT9 *elements, struct d3d9_vertex_declaration **declaration)
{
    struct d3d9_vertex_declaration *object;
    HRESULT hr;

    if (!(object = heap_alloc_zero(sizeof(*object))))
        return E_OUTOFMEMORY;

    hr = vertexdeclaration_init(object, device, elements);
    if (FAILED(hr))
    {
        WARN("Failed to initialize vertex declaration, hr %#x.\n", hr);
        heap_free(object);
        return hr;
    }

    TRACE("Created vertex declaration %p.\n", object);
    *declaration = object;

    return D3D_OK;
}
