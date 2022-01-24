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
struct dxbc_section {int tag; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
struct dxbc {unsigned int count; struct dxbc_section* sections; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3dcompiler_shader_reflection {int refcount; int /*<<< orphan*/  target; void* pcsg; void* osgn; void* isgn; int /*<<< orphan*/  types; TYPE_1__ ID3D11ShaderReflection_iface; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  TAG_ISGN 135 
#define  TAG_OSG5 134 
#define  TAG_OSGN 133 
#define  TAG_PCSG 132 
#define  TAG_RDEF 131 
#define  TAG_SHDR 130 
#define  TAG_SHEX 129 
#define  TAG_STAT 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct d3dcompiler_shader_reflection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct d3dcompiler_shader_reflection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct dxbc_section*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct d3dcompiler_shader_reflection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d3dcompiler_shader_reflection_type_compare ; 
 int /*<<< orphan*/  d3dcompiler_shader_reflection_vtbl ; 
 int /*<<< orphan*/  FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dxbc*) ; 
 int /*<<< orphan*/  FUNC12 (void const*,int /*<<< orphan*/ ,struct dxbc*) ; 
 int /*<<< orphan*/  FUNC13 (struct d3dcompiler_shader_reflection*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC15(struct d3dcompiler_shader_reflection *reflection,
        const void *data, SIZE_T data_size)
{
    struct dxbc src_dxbc;
    HRESULT hr;
    unsigned int i;

    reflection->ID3D11ShaderReflection_iface.lpVtbl = &d3dcompiler_shader_reflection_vtbl;
    reflection->refcount = 1;

    FUNC14(&reflection->types, d3dcompiler_shader_reflection_type_compare);

    hr = FUNC12(data, data_size, &src_dxbc);
    if (FUNC1(hr))
    {
        FUNC5("Failed to parse reflection\n");
        return hr;
    }

    for (i = 0; i < src_dxbc.count; ++i)
    {
        struct dxbc_section *section = &src_dxbc.sections[i];

        switch (section->tag)
        {
            case TAG_RDEF:
                hr = FUNC6(reflection, section->data, section->data_size);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse RDEF section.\n");
                    goto err_out;
                }
                break;

            case TAG_ISGN:
                reflection->isgn = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, sizeof(*reflection->isgn));
                if (!reflection->isgn)
                {
                    FUNC0("Failed to allocate ISGN memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = FUNC8(reflection->isgn, section, reflection->target);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse section ISGN.\n");
                    goto err_out;
                }
                break;

            case TAG_OSG5:
            case TAG_OSGN:
                reflection->osgn = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, sizeof(*reflection->osgn));
                if (!reflection->osgn)
                {
                    FUNC0("Failed to allocate OSGN memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = FUNC8(reflection->osgn, section, reflection->target);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse section OSGN.\n");
                    goto err_out;
                }
                break;

            case TAG_PCSG:
                reflection->pcsg = FUNC4(FUNC3(), HEAP_ZERO_MEMORY, sizeof(*reflection->pcsg));
                if (!reflection->pcsg)
                {
                    FUNC0("Failed to allocate PCSG memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = FUNC8(reflection->pcsg, section, reflection->target);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse section PCSG.\n");
                    goto err_out;
                }
                break;

            case TAG_SHEX:
            case TAG_SHDR:
                hr = FUNC7(reflection, section->data, section->data_size);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse SHDR section.\n");
                    goto err_out;
                }
                break;

            case TAG_STAT:
                hr = FUNC9(reflection, section->data, section->data_size);
                if (FUNC1(hr))
                {
                    FUNC5("Failed to parse section STAT.\n");
                    goto err_out;
                }
                break;

            default:
                FUNC2("Unhandled section %s!\n", FUNC10((const char *)&section->tag, 4));
                break;
        }
    }

    FUNC11(&src_dxbc);

    return hr;

err_out:
    FUNC13(reflection);
    FUNC11(&src_dxbc);

    return hr;
}