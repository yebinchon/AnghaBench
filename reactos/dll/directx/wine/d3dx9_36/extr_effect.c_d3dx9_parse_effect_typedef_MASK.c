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
struct d3dx_parameter {size_t flags; int class; int element_count; int columns; int rows; int bytes; int member_count; struct d3dx_parameter* semantic; struct d3dx_parameter* name; struct d3dx_parameter* members; scalar_t__ type; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  size_t UINT ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
#define  D3DXPC_MATRIX_COLUMNS 146 
#define  D3DXPC_MATRIX_ROWS 145 
#define  D3DXPC_OBJECT 144 
#define  D3DXPC_SCALAR 143 
#define  D3DXPC_STRUCT 142 
#define  D3DXPC_VECTOR 141 
#define  D3DXPT_PIXELSHADER 140 
#define  D3DXPT_SAMPLER 139 
#define  D3DXPT_SAMPLER1D 138 
#define  D3DXPT_SAMPLER2D 137 
#define  D3DXPT_SAMPLER3D 136 
#define  D3DXPT_SAMPLERCUBE 135 
#define  D3DXPT_STRING 134 
#define  D3DXPT_TEXTURE 133 
#define  D3DXPT_TEXTURE1D 132 
#define  D3DXPT_TEXTURE2D 131 
#define  D3DXPT_TEXTURE3D 130 
#define  D3DXPT_TEXTURECUBE 129 
#define  D3DXPT_VERTEXSHADER 128 
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (struct d3dx_parameter**,char const*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct d3dx_parameter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC12 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC13(struct d3dx9_base_effect *base, struct d3dx_parameter *param,
	const char *data, const char **ptr, struct d3dx_parameter *parent, UINT flags)
{
    DWORD offset;
    HRESULT hr;
    UINT i;

    param->flags = flags;

    if (!parent)
    {
        FUNC12(ptr, (DWORD *)&param->type);
        FUNC5("Type: %s\n", FUNC9(param->type));

        FUNC12(ptr, (DWORD *)&param->class);
        FUNC5("Class: %s\n", FUNC8(param->class));

        FUNC12(ptr, &offset);
        FUNC5("Type name offset: %#x\n", offset);
        hr = FUNC7(&param->name, data + offset);
        if (hr != D3D_OK)
        {
            FUNC6("Failed to parse name\n");
            goto err_out;
        }

        FUNC12(ptr, &offset);
        FUNC5("Type semantic offset: %#x\n", offset);
        hr = FUNC7(&param->semantic, data + offset);
        if (hr != D3D_OK)
        {
            FUNC6("Failed to parse semantic\n");
            goto err_out;
        }

        FUNC12(ptr, &param->element_count);
        FUNC5("Elements: %u\n", param->element_count);

        switch (param->class)
        {
            case D3DXPC_VECTOR:
                FUNC12(ptr, &param->columns);
                FUNC5("Columns: %u\n", param->columns);

                FUNC12(ptr, &param->rows);
                FUNC5("Rows: %u\n", param->rows);

                /* sizeof(DWORD) * rows * columns */
                param->bytes = 4 * param->rows * param->columns;
                break;

            case D3DXPC_SCALAR:
            case D3DXPC_MATRIX_ROWS:
            case D3DXPC_MATRIX_COLUMNS:
                FUNC12(ptr, &param->rows);
                FUNC5("Rows: %u\n", param->rows);

                FUNC12(ptr, &param->columns);
                FUNC5("Columns: %u\n", param->columns);

                /* sizeof(DWORD) * rows * columns */
                param->bytes = 4 * param->rows * param->columns;
                break;

            case D3DXPC_STRUCT:
                FUNC12(ptr, &param->member_count);
                FUNC5("Members: %u\n", param->member_count);
                break;

            case D3DXPC_OBJECT:
                switch (param->type)
                {
                    case D3DXPT_STRING:
                    case D3DXPT_PIXELSHADER:
                    case D3DXPT_VERTEXSHADER:
                    case D3DXPT_TEXTURE:
                    case D3DXPT_TEXTURE1D:
                    case D3DXPT_TEXTURE2D:
                    case D3DXPT_TEXTURE3D:
                    case D3DXPT_TEXTURECUBE:
                        param->bytes = sizeof(void *);
                        break;

                    case D3DXPT_SAMPLER:
                    case D3DXPT_SAMPLER1D:
                    case D3DXPT_SAMPLER2D:
                    case D3DXPT_SAMPLER3D:
                    case D3DXPT_SAMPLERCUBE:
                        param->bytes = 0;
                        break;

                    default:
                        FUNC1("Unhandled type %s\n", FUNC9(param->type));
                        break;
                }
                break;

            default:
                FUNC1("Unhandled class %s\n", FUNC8(param->class));
                break;
        }
    }
    else
    {
        /* elements */
        param->type = parent->type;
        param->class = parent->class;
        param->name = parent->name;
        param->semantic = parent->semantic;
        param->element_count = 0;
        param->member_count = parent->member_count;
        param->bytes = parent->bytes;
        param->rows = parent->rows;
        param->columns = parent->columns;
    }

    if (param->element_count)
    {
        unsigned int param_bytes = 0;
        const char *save_ptr = *ptr;

        param->members = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*param->members) * param->element_count);
        if (!param->members)
        {
            FUNC0("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < param->element_count; ++i)
        {
            *ptr = save_ptr;

            FUNC11(&param->members[i]);
            hr = FUNC13(base, &param->members[i], data, ptr, param, flags);
            if (hr != D3D_OK)
            {
                FUNC6("Failed to parse member %u\n", i);
                goto err_out;
            }

            param_bytes += param->members[i].bytes;
        }

        param->bytes = param_bytes;
    }
    else if (param->member_count)
    {
        param->members = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*param->members) * param->member_count);
        if (!param->members)
        {
            FUNC0("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < param->member_count; ++i)
        {
            FUNC11(&param->members[i]);
            hr = FUNC13(base, &param->members[i], data, ptr, NULL, flags);
            if (hr != D3D_OK)
            {
                FUNC6("Failed to parse member %u\n", i);
                goto err_out;
            }

            param->bytes += param->members[i].bytes;
        }
    }
    return D3D_OK;

err_out:

    if (param->members)
    {
        unsigned int count = param->element_count ? param->element_count : param->member_count;

        for (i = 0; i < count; ++i)
            FUNC10(&param->members[i], param->element_count != 0, TRUE);
        FUNC4(FUNC2(), 0, param->members);
        param->members = NULL;
    }

    if (!parent)
    {
        FUNC4(FUNC2(), 0, param->name);
        FUNC4(FUNC2(), 0, param->semantic);
    }
    param->name = NULL;
    param->semantic = NULL;

    return hr;
}