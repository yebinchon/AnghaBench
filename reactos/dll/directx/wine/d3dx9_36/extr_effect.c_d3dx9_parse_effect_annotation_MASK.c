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
struct d3dx_parameter {int /*<<< orphan*/  flags; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DX_PARAMETER_ANNOTATION ; 
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*,char const*,struct d3dx_object*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC5(struct d3dx9_base_effect *base, struct d3dx_parameter *anno,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    const char *ptr2;
    HRESULT hr;

    anno->flags = D3DX_PARAMETER_ANNOTATION;

    FUNC4(ptr, &offset);
    FUNC0("Typedef offset: %#x\n", offset);
    ptr2 = data + offset;
    hr = FUNC2(base, anno, data, &ptr2, NULL, D3DX_PARAMETER_ANNOTATION);
    if (hr != D3D_OK)
    {
        FUNC1("Failed to parse type definition\n");
        return hr;
    }

    FUNC4(ptr, &offset);
    FUNC0("Value offset: %#x\n", offset);
    hr = FUNC3(base, anno, data, data + offset, objects);
    if (hr != D3D_OK)
    {
        FUNC1("Failed to parse value\n");
        return hr;
    }

    return D3D_OK;
}