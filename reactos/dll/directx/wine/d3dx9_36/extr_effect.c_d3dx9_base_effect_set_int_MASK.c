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
struct d3dx_parameter {int rows; int columns; scalar_t__ type; scalar_t__ class; scalar_t__ data; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int FLOAT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DXPC_MATRIX_ROWS ; 
 scalar_t__ D3DXPC_VECTOR ; 
 scalar_t__ D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3DXPT_INT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int INT_FLOAT_MULTI_INVERSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct d3dx_parameter* FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(struct d3dx9_base_effect *base, D3DXHANDLE parameter, INT n)
{
    struct d3dx_parameter *param = FUNC2(base, parameter);

    if (param && !param->element_count)
    {
        if (param->rows == 1 && param->columns == 1)
        {
            DWORD value;

            FUNC4(&value, param->type, &n, D3DXPT_INT);
            if (value != *(DWORD *)param->data)
                FUNC3(param);
             *(DWORD *)param->data = value;
            return D3D_OK;
        }

        /*
         * Split the value, if parameter is a vector with dimension 3 or 4.
         */
        if (param->type == D3DXPT_FLOAT &&
            ((param->class == D3DXPC_VECTOR && param->columns != 2) ||
            (param->class == D3DXPC_MATRIX_ROWS && param->rows != 2 && param->columns == 1)))
        {
            FUNC0("Vector fixup\n");

            *(FLOAT *)param->data = ((n & 0xff0000) >> 16) * INT_FLOAT_MULTI_INVERSE;
            ((FLOAT *)param->data)[1] = ((n & 0xff00) >> 8) * INT_FLOAT_MULTI_INVERSE;
            ((FLOAT *)param->data)[2] = (n & 0xff) * INT_FLOAT_MULTI_INVERSE;
            if (param->rows * param->columns > 3)
            {
                ((FLOAT *)param->data)[3] = ((n & 0xff000000) >> 24) * INT_FLOAT_MULTI_INVERSE;
            }
            FUNC3(param);
            return D3D_OK;
        }
    }

    FUNC1("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}