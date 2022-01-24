#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  texture_state; int /*<<< orphan*/  sampler_state; } ;
struct tss_lookup {TYPE_1__ u; scalar_t__ sampler_state; } ;
struct d3d_device {int /*<<< orphan*/  wined3d_device; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice7 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  size_t D3DTEXTURESTAGESTATETYPE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DTFG_ANISOTROPIC ; 
 int /*<<< orphan*/  D3DTFG_FLATCUBIC ; 
 int /*<<< orphan*/  D3DTFG_GAUSSIANCUBIC ; 
 int /*<<< orphan*/  D3DTFG_LINEAR ; 
 int /*<<< orphan*/  D3DTFG_POINT ; 
 int /*<<< orphan*/  D3DTFP_LINEAR ; 
 int /*<<< orphan*/  D3DTFP_NONE ; 
 int /*<<< orphan*/  D3DTFP_POINT ; 
#define  D3DTSS_MAGFILTER 135 
#define  D3DTSS_MIPFILTER 134 
 size_t D3DTSS_TEXTURETRANSFORMFLAGS ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  DDERR_INVALIDPARAMS ; 
 int /*<<< orphan*/  DD_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
#define  WINED3D_TEXF_ANISOTROPIC 133 
#define  WINED3D_TEXF_FLAT_CUBIC 132 
#define  WINED3D_TEXF_GAUSSIAN_CUBIC 131 
#define  WINED3D_TEXF_LINEAR 130 
#define  WINED3D_TEXF_NONE 129 
#define  WINED3D_TEXF_POINT 128 
 struct d3d_device* FUNC3 (int /*<<< orphan*/ *) ; 
 struct tss_lookup* tss_lookup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static HRESULT FUNC8(IDirect3DDevice7 *iface,
        DWORD stage, D3DTEXTURESTAGESTATETYPE state, DWORD *value)
{
    struct d3d_device *device = FUNC3(iface);
    const struct tss_lookup *l;

    FUNC1("iface %p, stage %u, state %#x, value %p.\n",
            iface, stage, state, value);

    if (!value)
        return DDERR_INVALIDPARAMS;

    if (state > D3DTSS_TEXTURETRANSFORMFLAGS)
    {
        FUNC2("Invalid state %#x passed.\n", state);
        return DD_OK;
    }

    l = &tss_lookup[state];

    FUNC6();

    if (l->sampler_state)
    {
        *value = FUNC4(device->wined3d_device, stage, l->u.sampler_state);

        switch (state)
        {
            /* Mipfilter is a sampler state with different values */
            case D3DTSS_MIPFILTER:
            {
                switch (*value)
                {
                    case WINED3D_TEXF_NONE:
                        *value = D3DTFP_NONE;
                        break;
                    case WINED3D_TEXF_POINT:
                        *value = D3DTFP_POINT;
                        break;
                    case WINED3D_TEXF_LINEAR:
                        *value = D3DTFP_LINEAR;
                        break;
                    default:
                        FUNC0("Unexpected mipfilter value %#x.\n", *value);
                        *value = D3DTFP_NONE;
                        break;
                }
                break;
            }

            /* Magfilter has slightly different values */
            case D3DTSS_MAGFILTER:
            {
                switch (*value)
                {
                    case WINED3D_TEXF_POINT:
                            *value = D3DTFG_POINT;
                            break;
                    case WINED3D_TEXF_LINEAR:
                            *value = D3DTFG_LINEAR;
                            break;
                    case WINED3D_TEXF_ANISOTROPIC:
                            *value = D3DTFG_ANISOTROPIC;
                            break;
                    case WINED3D_TEXF_FLAT_CUBIC:
                            *value = D3DTFG_FLATCUBIC;
                            break;
                    case WINED3D_TEXF_GAUSSIAN_CUBIC:
                            *value = D3DTFG_GAUSSIANCUBIC;
                            break;
                    default:
                        FUNC0("Unexpected wined3d mag filter value %#x.\n", *value);
                        *value = D3DTFG_POINT;
                        break;
                }
                break;
            }

            default:
                break;
        }
    }
    else
    {
        *value = FUNC5(device->wined3d_device, stage, l->u.texture_state);
    }

    FUNC7();

    return D3D_OK;
}