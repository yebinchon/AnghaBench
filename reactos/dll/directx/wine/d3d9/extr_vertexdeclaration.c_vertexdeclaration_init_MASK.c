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
struct wined3d_vertex_element {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d9_vertex_declaration {int refcount; int element_count; int /*<<< orphan*/ * parent_device; struct wined3d_vertex_element* elements; int /*<<< orphan*/  wined3d_declaration; TYPE_1__ IDirect3DVertexDeclaration9_iface; } ;
struct d3d9_device {int /*<<< orphan*/  IDirect3DDevice9Ex_iface; int /*<<< orphan*/  wined3d_device; } ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DVERTEXELEMENT9 ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_OUTOFVIDEOMEMORY ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,struct wined3d_vertex_element**,int*) ; 
 int /*<<< orphan*/  d3d9_vertex_declaration_vtbl ; 
 int /*<<< orphan*/  d3d9_vertexdeclaration_wined3d_parent_ops ; 
 struct wined3d_vertex_element* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_vertex_element*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_vertex_element*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wined3d_vertex_element*,int,struct d3d9_vertex_declaration*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(struct d3d9_vertex_declaration *declaration,
        struct d3d9_device *device, const D3DVERTEXELEMENT9 *elements)
{
    struct wined3d_vertex_element *wined3d_elements;
    UINT wined3d_element_count;
    UINT element_count;
    HRESULT hr;

    hr = FUNC4(elements, &wined3d_elements, &wined3d_element_count);
    if (FUNC1(hr))
    {
        FUNC3("Failed to create wined3d vertex declaration elements, hr %#x.\n", hr);
        return hr;
    }

    declaration->IDirect3DVertexDeclaration9_iface.lpVtbl = &d3d9_vertex_declaration_vtbl;
    declaration->refcount = 1;

    element_count = wined3d_element_count + 1;
    if (!(declaration->elements = FUNC5(element_count * sizeof(*declaration->elements))))
    {
        FUNC6(wined3d_elements);
        FUNC0("Failed to allocate vertex declaration elements memory.\n");
        return D3DERR_OUTOFVIDEOMEMORY;
    }
    FUNC7(declaration->elements, elements, element_count * sizeof(*elements));
    declaration->element_count = element_count;

    FUNC8();
    hr = FUNC10(device->wined3d_device, wined3d_elements, wined3d_element_count,
            declaration, &d3d9_vertexdeclaration_wined3d_parent_ops, &declaration->wined3d_declaration);
    FUNC9();
    FUNC6(wined3d_elements);
    if (FUNC1(hr))
    {
        FUNC6(declaration->elements);
        FUNC3("Failed to create wined3d vertex declaration, hr %#x.\n", hr);
        return hr;
    }

    declaration->parent_device = &device->IDirect3DDevice9Ex_iface;
    FUNC2(declaration->parent_device);

    return D3D_OK;
}