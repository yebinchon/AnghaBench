#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ddraw {int d3dversion; int /*<<< orphan*/  IDirectDraw7_iface; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3d_vertex_buffer {int ref; int version; int Caps; int fvf; int size; int /*<<< orphan*/  wined3d_declaration; int /*<<< orphan*/  wined3d_buffer; struct ddraw* ddraw; TYPE_1__ IDirect3DVertexBuffer7_iface; } ;
struct TYPE_5__ {int dwSize; int dwCaps; int dwFVF; int dwNumVertices; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_2__ D3DVERTEXBUFFERDESC ;

/* Variables and functions */
 scalar_t__ D3D_OK ; 
 scalar_t__ DDERR_INVALIDPARAMS ; 
 scalar_t__ DDERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ WINED3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  d3d_vertex_buffer7_vtbl ; 
 scalar_t__ FUNC5 (struct d3d_vertex_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ddraw*,int) ; 
 int FUNC7 (int) ; 
 struct d3d_vertex_buffer* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct d3d_vertex_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

HRESULT FUNC14(struct d3d_vertex_buffer **vertex_buf,
        struct ddraw *ddraw, D3DVERTEXBUFFERDESC *desc)
{
    struct d3d_vertex_buffer *buffer;
    HRESULT hr = D3D_OK;

    FUNC3("Vertex buffer description:\n");
    FUNC3("    dwSize %u\n", desc->dwSize);
    FUNC3("    dwCaps %#x\n", desc->dwCaps);
    FUNC3("    FVF %#x\n", desc->dwFVF);
    FUNC3("    dwNumVertices %u\n", desc->dwNumVertices);

    if (!(buffer = FUNC8(sizeof(*buffer))))
        return DDERR_OUTOFMEMORY;

    buffer->IDirect3DVertexBuffer7_iface.lpVtbl = &d3d_vertex_buffer7_vtbl;
    buffer->ref = 1;
    buffer->version = ddraw->d3dversion;
    if (buffer->version == 7)
        FUNC2(&ddraw->IDirectDraw7_iface);
    buffer->ddraw = ddraw;
    buffer->Caps = desc->dwCaps;
    buffer->fvf = desc->dwFVF;
    buffer->size = FUNC7(desc->dwFVF) * desc->dwNumVertices;

    FUNC11();

    if (FUNC1(hr = FUNC5(buffer, FALSE, &buffer->wined3d_buffer)))
    {
        FUNC4("Failed to create wined3d vertex buffer, hr %#x.\n", hr);
        if (hr == WINED3DERR_INVALIDCALL)
            hr = DDERR_INVALIDPARAMS;
        goto end;
    }

    if (!(buffer->wined3d_declaration = FUNC6(ddraw, desc->dwFVF)))
    {
        FUNC0("Failed to find vertex declaration for fvf %#x.\n", desc->dwFVF);
        FUNC10(buffer->wined3d_buffer);
        hr = DDERR_INVALIDPARAMS;
        goto end;
    }
    FUNC13(buffer->wined3d_declaration);

end:
    FUNC12();
    if (hr == D3D_OK)
        *vertex_buf = buffer;
    else
        FUNC9(buffer);

    return hr;
}