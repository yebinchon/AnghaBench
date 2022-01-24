#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct d3dx_parameter {int class; int bytes; int columns; scalar_t__ data; int /*<<< orphan*/  type; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  w; int /*<<< orphan*/  x; int /*<<< orphan*/  y; int /*<<< orphan*/  z; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_1__ D3DXVECTOR4 ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
#define  D3DXPC_MATRIX_ROWS 132 
#define  D3DXPC_OBJECT 131 
#define  D3DXPC_SCALAR 130 
#define  D3DXPC_STRUCT 129 
#define  D3DXPC_VECTOR 128 
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3DXPT_INT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int INT_FLOAT_MULTI ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct d3dx_parameter* FUNC4 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC8 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC9 (struct d3dx_parameter*,TYPE_1__ const*) ; 

__attribute__((used)) static HRESULT FUNC10(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXVECTOR4 *vector)
{
    struct d3dx_parameter *param = FUNC4(base, parameter);

    if (param && !param->element_count)
    {
        FUNC1("Class %s\n", FUNC3(param->class));

        switch (param->class)
        {
            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
                FUNC8(param);
                if (param->type == D3DXPT_INT && param->bytes == 4)
                {
                    DWORD tmp;

                    FUNC1("INT fixup\n");
                    tmp = (DWORD)(FUNC5(FUNC7(vector->z, 1.0f), 0.0f) * INT_FLOAT_MULTI);
                    tmp += ((DWORD)(FUNC5(FUNC7(vector->y, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 8;
                    tmp += ((DWORD)(FUNC5(FUNC7(vector->x, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 16;
                    tmp += ((DWORD)(FUNC5(FUNC7(vector->w, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 24;

                    *(INT *)param->data = tmp;
                    return D3D_OK;
                }
                if (param->type == D3DXPT_FLOAT)
                {
                    FUNC6(param->data, vector, param->columns * sizeof(float));
                    return D3D_OK;
                }

                FUNC9(param, vector);
                return D3D_OK;

            case D3DXPC_MATRIX_ROWS:
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