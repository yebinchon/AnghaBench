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
struct d3dx_parameter {int class; scalar_t__ bytes; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
#define  D3DXPC_MATRIX_COLUMNS 133 
#define  D3DXPC_MATRIX_ROWS 132 
#define  D3DXPC_OBJECT 131 
#define  D3DXPC_SCALAR 130 
#define  D3DXPC_STRUCT 129 
#define  D3DXPC_VECTOR 128 
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct d3dx9_base_effect*,struct d3dx_parameter*,void*,char const*,char const**,struct d3dx_object*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (void*,char const*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC11(struct d3dx9_base_effect *base, struct d3dx_parameter *param,
        const char *data, const char *ptr, struct d3dx_object *objects)
{
    UINT size = param->bytes;
    HRESULT hr;
    void *value = NULL;

    FUNC5("param size: %u\n", size);

    if (size)
    {
        value = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, size);
        if (!value)
        {
            FUNC0("Failed to allocate data memory.\n");
            return E_OUTOFMEMORY;
        }

        switch(param->class)
        {
            case D3DXPC_OBJECT:
                break;

            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
            case D3DXPC_MATRIX_ROWS:
            case D3DXPC_MATRIX_COLUMNS:
            case D3DXPC_STRUCT:
                FUNC5("Data: %s.\n", FUNC9(ptr, size));
                FUNC10(value, ptr, size);
                break;

            default:
                FUNC1("Unhandled class %s\n", FUNC8(param->class));
                break;
        }
    }

    hr = FUNC7(base, param, value, data, &ptr, objects);
    if (hr != D3D_OK)
    {
        FUNC6("Failed to parse value\n");
        FUNC4(FUNC2(), 0, value);
        return hr;
    }

    return D3D_OK;
}