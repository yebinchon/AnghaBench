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
#define  D3DXPT_BOOL 137 
#define  D3DXPT_FLOAT 136 
#define  D3DXPT_INT 135 
#define  D3DXPT_STRING 134 
#define  D3DXPT_TEXTURE 133 
#define  D3DXPT_TEXTURE1D 132 
#define  D3DXPT_TEXTURE2D 131 
#define  D3DXPT_TEXTURE3D 130 
#define  D3DXPT_TEXTURECUBE 129 
#define  D3DXPT_VOID 128 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct d3dx_parameter* FUNC7 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC11 (char**,char const*) ; 

__attribute__((used)) static HRESULT FUNC12(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const void *data, UINT bytes)
{
    struct d3dx_parameter *param = FUNC7(base, parameter);
    unsigned int i;

    if (!param)
    {
        FUNC5("Invalid parameter %p specified\n", parameter);
        return D3DERR_INVALIDCALL;
    }

    /* samplers don't touch data */
    if (param->class == D3DXPC_OBJECT && FUNC8(param->type))
    {
        FUNC4("Sampler: returning E_FAIL\n");
        return E_FAIL;
    }

    if (data && param->bytes <= bytes)
    {
        switch (param->type)
        {
            case D3DXPT_TEXTURE:
            case D3DXPT_TEXTURE1D:
            case D3DXPT_TEXTURE2D:
            case D3DXPT_TEXTURE3D:
            case D3DXPT_TEXTURECUBE:
                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    IUnknown *old_texture = ((IUnknown **)param->data)[i];
                    IUnknown *new_texture = ((IUnknown **)data)[i];

                    if (new_texture == old_texture)
                        continue;

                    if (new_texture)
                        FUNC2(new_texture);
                    if (old_texture)
                        FUNC3(old_texture);
                }
            /* fallthrough */
            case D3DXPT_VOID:
            case D3DXPT_BOOL:
            case D3DXPT_INT:
            case D3DXPT_FLOAT:
                FUNC4("Copy %u bytes.\n", param->bytes);
                FUNC9(param->data, data, param->bytes);
                FUNC10(param);
                break;

            case D3DXPT_STRING:
            {
                HRESULT hr;

                FUNC10(param);
                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    if (FUNC0(hr = FUNC11(&((char **)param->data)[i], ((const char **)data)[i])))
                        return hr;
                }
                break;
            }

            default:
                FUNC1("Unhandled type %s.\n", FUNC6(param->type));
                break;
        }

        return D3D_OK;
    }

    FUNC5("Invalid argument specified\n");

    return D3DERR_INVALIDCALL;
}