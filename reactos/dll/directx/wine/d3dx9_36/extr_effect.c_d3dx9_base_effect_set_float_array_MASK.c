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
struct d3dx_parameter {int bytes; int class; int /*<<< orphan*/  type; scalar_t__ data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
#define  D3DXPC_MATRIX_ROWS 132 
#define  D3DXPC_OBJECT 131 
#define  D3DXPC_SCALAR 130 
#define  D3DXPC_STRUCT 129 
#define  D3DXPC_VECTOR 128 
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct d3dx_parameter* FUNC4 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const float *f, UINT count)
{
    struct d3dx_parameter *param = FUNC4(base, parameter);

    if (param)
    {
        UINT i, size = FUNC5(count, param->bytes / sizeof(DWORD));

        FUNC1("Class %s\n", FUNC3(param->class));

        switch (param->class)
        {
            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
            case D3DXPC_MATRIX_ROWS:
                for (i = 0; i < size; ++i)
                {
                    FUNC7((DWORD *)param->data + i, param->type, &f[i], D3DXPT_FLOAT);
                }
                FUNC6(param);
                return D3D_OK;

            case D3DXPC_OBJECT:
            case D3DXPC_STRUCT:
                break;

            default:
                FUNC0("Unhandled class %s\n", FUNC3(param->class));
                break;
        }
    }

    FUNC2("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}