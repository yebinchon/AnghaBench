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
struct d3dx_parameter {int columns; int rows; scalar_t__ type; scalar_t__ class; scalar_t__ data; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DXPC_MATRIX_ROWS ; 
 scalar_t__ D3DXPC_VECTOR ; 
 scalar_t__ D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3DXPT_INT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int INT_FLOAT_MULTI ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct d3dx_parameter* FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC6(struct d3dx9_base_effect *base, D3DXHANDLE parameter, INT *n)
{
    struct d3dx_parameter *param = FUNC2(base, parameter);

    if (n && param && !param->element_count)
    {
        if (param->columns == 1 && param->rows == 1)
        {
            FUNC5(n, D3DXPT_INT, param->data, param->type);
            FUNC0("Returning %i\n", *n);
            return D3D_OK;
        }

        if (param->type == D3DXPT_FLOAT &&
                ((param->class == D3DXPC_VECTOR && param->columns != 2)
                || (param->class == D3DXPC_MATRIX_ROWS && param->rows != 2 && param->columns == 1)))
        {
            FUNC0("Vector fixup\n");

            /* all components (3,4) are clamped (0,255) and put in the INT */
            *n = (INT)(FUNC4(FUNC3(0.0f, *((FLOAT *)param->data + 2)), 1.0f) * INT_FLOAT_MULTI);
            *n += ((INT)(FUNC4(FUNC3(0.0f, *((FLOAT *)param->data + 1)), 1.0f) * INT_FLOAT_MULTI)) << 8;
            *n += ((INT)(FUNC4(FUNC3(0.0f, *((FLOAT *)param->data + 0)), 1.0f) * INT_FLOAT_MULTI)) << 16;
            if (param->columns * param->rows > 3)
            {
                *n += ((INT)(FUNC4(FUNC3(0.0f, *((FLOAT *)param->data + 3)), 1.0f) * INT_FLOAT_MULTI)) << 24;
            }

            FUNC0("Returning %i\n", *n);
            return D3D_OK;
        }
    }

    FUNC1("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}