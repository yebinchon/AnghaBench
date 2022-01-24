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
struct d3d8_vertex_declaration {int dummy; } ;
struct d3d8_device {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3d8_vertex_declaration*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct d3d8_vertex_declaration*,struct d3d8_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct d3d8_vertex_declaration* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct d3d8_vertex_declaration*) ; 

__attribute__((used)) static HRESULT FUNC6(struct d3d8_device *device,
        const DWORD *declaration, DWORD shader_handle, struct d3d8_vertex_declaration **decl_ptr)
{
    struct d3d8_vertex_declaration *object;
    HRESULT hr;

    FUNC1("device %p, declaration %p, shader_handle %#x, decl_ptr %p.\n",
            device, declaration, shader_handle, decl_ptr);

    if (!(object = FUNC4(sizeof(*object))))
        return E_OUTOFMEMORY;

    hr = FUNC3(object, device, declaration, shader_handle);
    if (FUNC0(hr))
    {
        FUNC2("Failed to initialize vertex declaration, hr %#x.\n", hr);
        FUNC5(object);
        return hr;
    }

    FUNC1("Created vertex declaration %p.\n", object);
    *decl_ptr = object;

    return D3D_OK;
}