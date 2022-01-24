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
struct d3dx_parameter {int rows; int columns; scalar_t__ data; int /*<<< orphan*/  type; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct d3dx_parameter* FUNC1 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(struct d3dx9_base_effect *base, D3DXHANDLE parameter, float f)
{
    struct d3dx_parameter *param = FUNC1(base, parameter);

    if (param && !param->element_count && param->rows == 1 && param->columns == 1)
    {
        DWORD value;

        FUNC3(&value, param->type, &f, D3DXPT_FLOAT);
        if (value != *(DWORD *)param->data)
            FUNC2(param);
         *(DWORD *)param->data = value;
        return D3D_OK;
    }

    FUNC0("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}