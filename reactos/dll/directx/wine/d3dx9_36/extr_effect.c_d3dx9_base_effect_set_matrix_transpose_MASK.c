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
struct d3dx_parameter {int class; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXMATRIX ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
#define  D3DXPC_MATRIX_ROWS 132 
#define  D3DXPC_OBJECT 131 
#define  D3DXPC_SCALAR 130 
#define  D3DXPC_STRUCT 129 
#define  D3DXPC_VECTOR 128 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct d3dx_parameter* FUNC4 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC6 (struct d3dx_parameter*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static HRESULT FUNC7(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXMATRIX *matrix)
{
    struct d3dx_parameter *param = FUNC4(base, parameter);

    if (param && !param->element_count)
    {
        FUNC1("Class %s\n", FUNC3(param->class));

        switch (param->class)
        {
            case D3DXPC_MATRIX_ROWS:
                FUNC5(param);
                FUNC6(param, matrix);
                return D3D_OK;

            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
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