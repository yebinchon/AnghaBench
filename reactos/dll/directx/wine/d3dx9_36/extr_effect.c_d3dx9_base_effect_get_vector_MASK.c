#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d3dx_parameter {int class; int bytes; scalar_t__ data; int /*<<< orphan*/  type; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_4__ {int x; int y; int z; int w; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DXVECTOR4 ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
#define  D3DXPC_MATRIX_ROWS 132 
#define  D3DXPC_OBJECT 131 
#define  D3DXPC_SCALAR 130 
#define  D3DXPC_STRUCT 129 
#define  D3DXPC_VECTOR 128 
 int /*<<< orphan*/  D3DXPT_INT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int INT_FLOAT_MULTI_INVERSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct d3dx_parameter* FUNC4 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct d3dx_parameter*,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC6(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, D3DXVECTOR4 *vector)
{
    struct d3dx_parameter *param = FUNC4(base, parameter);

    if (vector && param && !param->element_count)
    {
        FUNC1("Class %s\n", FUNC3(param->class));

        switch (param->class)
        {
            case D3DXPC_SCALAR:
            case D3DXPC_VECTOR:
                if (param->type == D3DXPT_INT && param->bytes == 4)
                {
                    FUNC1("INT fixup\n");
                    vector->x = (((*(INT *)param->data) & 0xff0000) >> 16) * INT_FLOAT_MULTI_INVERSE;
                    vector->y = (((*(INT *)param->data) & 0xff00) >> 8) * INT_FLOAT_MULTI_INVERSE;
                    vector->z = ((*(INT *)param->data) & 0xff) * INT_FLOAT_MULTI_INVERSE;
                    vector->w = (((*(INT *)param->data) & 0xff000000) >> 24) * INT_FLOAT_MULTI_INVERSE;
                    return D3D_OK;
                }
                FUNC5(param, vector);
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