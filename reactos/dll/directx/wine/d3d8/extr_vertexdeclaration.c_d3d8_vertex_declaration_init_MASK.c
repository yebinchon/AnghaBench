#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_vertex_element {int dummy; } ;
struct d3d8_vertex_declaration {struct wined3d_vertex_element* elements; int /*<<< orphan*/  wined3d_vertex_declaration; int /*<<< orphan*/  elements_size; int /*<<< orphan*/  shader_handle; } ;
struct d3d8_device {int /*<<< orphan*/  wined3d_device; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,struct wined3d_vertex_element**) ; 
 int /*<<< orphan*/  d3d8_vertexdeclaration_wined3d_parent_ops ; 
 struct wined3d_vertex_element* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_vertex_element*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_vertex_element*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wined3d_vertex_element*,int /*<<< orphan*/ ,struct d3d8_vertex_declaration*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC10(struct d3d8_vertex_declaration *declaration,
        struct d3d8_device *device, const DWORD *elements, DWORD shader_handle)
{
    struct wined3d_vertex_element *wined3d_elements;
    UINT wined3d_element_count;
    HRESULT hr;

    declaration->shader_handle = shader_handle;

    wined3d_element_count = FUNC3(elements, &declaration->elements_size, &wined3d_elements);
    if (!(declaration->elements = FUNC4(declaration->elements_size)))
    {
        FUNC0("Failed to allocate vertex declaration elements memory.\n");
        FUNC5(wined3d_elements);
        return E_OUTOFMEMORY;
    }

    FUNC6(declaration->elements, elements, declaration->elements_size);

    FUNC7();
    hr = FUNC9(device->wined3d_device, wined3d_elements, wined3d_element_count,
            declaration, &d3d8_vertexdeclaration_wined3d_parent_ops, &declaration->wined3d_vertex_declaration);
    FUNC8();
    FUNC5(wined3d_elements);
    if (FUNC1(hr))
    {
        FUNC2("Failed to create wined3d vertex declaration, hr %#x.\n", hr);
        FUNC5(declaration->elements);
        return hr;
    }

    return D3D_OK;
}