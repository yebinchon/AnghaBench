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
struct d3dx_parameter {scalar_t__ element_count; int class; int /*<<< orphan*/ * members; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXMATRIX ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
#define  D3DXPC_MATRIX_ROWS 131 
#define  D3DXPC_OBJECT 130 
#define  D3DXPC_SCALAR 129 
#define  D3DXPC_VECTOR 128 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct d3dx_parameter* FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static HRESULT FUNC6(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXMATRIX **matrix, UINT count)
{
    struct d3dx_parameter *param = FUNC3(base, parameter);

    if (param && count <= param->element_count)
    {
        UINT i;

        switch (param->class)
        {
            case D3DXPC_MATRIX_ROWS:
                FUNC4(param);
                for (i = 0; i < count; ++i)
                {
                    FUNC5(&param->members[i], matrix[i]);
                }
                return D3D_OK;

            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
            case D3DXPC_OBJECT:
                break;

            default:
                FUNC0("Unhandled class %s\n", FUNC2(param->class));
                break;
        }
    }

    FUNC1("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}