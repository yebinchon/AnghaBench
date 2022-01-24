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
struct d3d9_vertex_declaration {int dummy; } ;
struct d3d9_device {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DVERTEXELEMENT9 ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3d9_vertex_declaration*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct d3d9_vertex_declaration* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct d3d9_vertex_declaration*) ; 
 int /*<<< orphan*/  FUNC5 (struct d3d9_vertex_declaration*,struct d3d9_device*,int /*<<< orphan*/  const*) ; 

HRESULT FUNC6(struct d3d9_device *device,
        const D3DVERTEXELEMENT9 *elements, struct d3d9_vertex_declaration **declaration)
{
    struct d3d9_vertex_declaration *object;
    HRESULT hr;

    if (!(object = FUNC3(sizeof(*object))))
        return E_OUTOFMEMORY;

    hr = FUNC5(object, device, elements);
    if (FUNC0(hr))
    {
        FUNC2("Failed to initialize vertex declaration, hr %#x.\n", hr);
        FUNC4(object);
        return hr;
    }

    FUNC1("Created vertex declaration %p.\n", object);
    *declaration = object;

    return D3D_OK;
}