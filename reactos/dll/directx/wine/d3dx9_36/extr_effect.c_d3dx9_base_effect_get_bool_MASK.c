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
struct d3dx_parameter {int rows; int columns; int /*<<< orphan*/  type; int /*<<< orphan*/  data; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3DXPT_BOOL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct d3dx_parameter* FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(struct d3dx9_base_effect *base, D3DXHANDLE parameter, BOOL *b)
{
    struct d3dx_parameter *param = FUNC2(base, parameter);

    if (b && param && !param->element_count && param->rows == 1 && param->columns == 1)
    {
        FUNC3(b, D3DXPT_BOOL, param->data, param->type);
        FUNC0("Returning %s\n", *b ? "TRUE" : "FALSE");
        return D3D_OK;
    }

    FUNC1("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}