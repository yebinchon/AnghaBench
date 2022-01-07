
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_element {int dummy; } ;
struct d3d8_vertex_declaration {struct wined3d_vertex_element* elements; int wined3d_vertex_declaration; int elements_size; int shader_handle; } ;
struct d3d8_device {int wined3d_device; } ;
typedef int UINT ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int WARN (char*,int ) ;
 int convert_to_wined3d_declaration (int const*,int *,struct wined3d_vertex_element**) ;
 int d3d8_vertexdeclaration_wined3d_parent_ops ;
 struct wined3d_vertex_element* heap_alloc (int ) ;
 int heap_free (struct wined3d_vertex_element*) ;
 int memcpy (struct wined3d_vertex_element*,int const*,int ) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_vertex_declaration_create (int ,struct wined3d_vertex_element*,int ,struct d3d8_vertex_declaration*,int *,int *) ;

HRESULT d3d8_vertex_declaration_init(struct d3d8_vertex_declaration *declaration,
        struct d3d8_device *device, const DWORD *elements, DWORD shader_handle)
{
    struct wined3d_vertex_element *wined3d_elements;
    UINT wined3d_element_count;
    HRESULT hr;

    declaration->shader_handle = shader_handle;

    wined3d_element_count = convert_to_wined3d_declaration(elements, &declaration->elements_size, &wined3d_elements);
    if (!(declaration->elements = heap_alloc(declaration->elements_size)))
    {
        ERR("Failed to allocate vertex declaration elements memory.\n");
        heap_free(wined3d_elements);
        return E_OUTOFMEMORY;
    }

    memcpy(declaration->elements, elements, declaration->elements_size);

    wined3d_mutex_lock();
    hr = wined3d_vertex_declaration_create(device->wined3d_device, wined3d_elements, wined3d_element_count,
            declaration, &d3d8_vertexdeclaration_wined3d_parent_ops, &declaration->wined3d_vertex_declaration);
    wined3d_mutex_unlock();
    heap_free(wined3d_elements);
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d vertex declaration, hr %#x.\n", hr);
        heap_free(declaration->elements);
        return hr;
    }

    return D3D_OK;
}
