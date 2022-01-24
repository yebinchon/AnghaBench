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
struct d3dx_parameter {scalar_t__ class; int type; scalar_t__ bytes; int element_count; scalar_t__ data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 scalar_t__ D3DXPC_OBJECT ; 
#define  D3DXPT_BOOL 139 
#define  D3DXPT_FLOAT 138 
#define  D3DXPT_INT 137 
#define  D3DXPT_PIXELSHADER 136 
#define  D3DXPT_STRING 135 
#define  D3DXPT_TEXTURE 134 
#define  D3DXPT_TEXTURE1D 133 
#define  D3DXPT_TEXTURE2D 132 
#define  D3DXPT_TEXTURE3D 131 
#define  D3DXPT_TEXTURECUBE 130 
#define  D3DXPT_VERTEXSHADER 129 
#define  D3DXPT_VOID 128 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 struct d3dx_parameter* FUNC5 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC8(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, void *data, UINT bytes)
{
    struct d3dx_parameter *param = FUNC5(base, parameter);

    if (!param)
    {
        FUNC3("Invalid parameter %p specified\n", parameter);
        return D3DERR_INVALIDCALL;
    }

    /* samplers don't touch data */
    if (param->class == D3DXPC_OBJECT && FUNC6(param->type))
    {
        FUNC2("Sampler: returning E_FAIL\n");
        return E_FAIL;
    }

    if (data && param->bytes <= bytes)
    {
        FUNC2("Type %s\n", FUNC4(param->type));

        switch (param->type)
        {
            case D3DXPT_VOID:
            case D3DXPT_BOOL:
            case D3DXPT_INT:
            case D3DXPT_FLOAT:
            case D3DXPT_STRING:
                break;

            case D3DXPT_VERTEXSHADER:
            case D3DXPT_PIXELSHADER:
            case D3DXPT_TEXTURE:
            case D3DXPT_TEXTURE1D:
            case D3DXPT_TEXTURE2D:
            case D3DXPT_TEXTURE3D:
            case D3DXPT_TEXTURECUBE:
            {
                UINT i;

                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    IUnknown *unk = ((IUnknown **)param->data)[i];
                    if (unk) FUNC1(unk);
                }
                break;
            }

            default:
                FUNC0("Unhandled type %s\n", FUNC4(param->type));
                break;
        }

        FUNC2("Copy %u bytes\n", param->bytes);
        FUNC7(data, param->data, param->bytes);
        return D3D_OK;
    }

    FUNC3("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}