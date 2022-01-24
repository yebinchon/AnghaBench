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
struct d3dx_parameter {scalar_t__ type; scalar_t__ data; int /*<<< orphan*/  element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct IDirect3DPixelShader9 {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DXPT_PIXELSHADER ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (struct IDirect3DPixelShader9*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct IDirect3DPixelShader9*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct d3dx_parameter* FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, struct IDirect3DPixelShader9 **shader)
{
    struct d3dx_parameter *param = FUNC3(base, parameter);

    if (shader && param && !param->element_count && param->type == D3DXPT_PIXELSHADER)
    {
        if ((*shader = *(struct IDirect3DPixelShader9 **)param->data))
            FUNC0(*shader);
        FUNC1("Returning %p.\n", *shader);
        return D3D_OK;
    }

    FUNC2("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}