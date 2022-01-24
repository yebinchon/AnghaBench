#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3dcompiler_shader_reflection_variable {int start_offset; int size; int flags; int /*<<< orphan*/  default_value; int /*<<< orphan*/  type; int /*<<< orphan*/  name; struct d3dcompiler_shader_reflection_constant_buffer* constant_buffer; TYPE_1__ ID3D11ShaderReflectionVariable_iface; } ;
struct d3dcompiler_shader_reflection_constant_buffer {int variable_count; struct d3dcompiler_shader_reflection_variable* variables; TYPE_2__* reflection; } ;
struct TYPE_4__ {int target; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int D3DCOMPILER_SHADER_TARGET_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct d3dcompiler_shader_reflection_variable* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dcompiler_shader_reflection_variable*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  d3dcompiler_shader_reflection_variable_vtbl ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct d3dcompiler_shader_reflection_variable*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const**,int) ; 

__attribute__((used)) static HRESULT FUNC12(struct d3dcompiler_shader_reflection_constant_buffer *cb,
        const char *data, DWORD data_size, const char *ptr)
{
    struct d3dcompiler_shader_reflection_variable *variables;
    unsigned int i;
    HRESULT hr;

    variables = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, cb->variable_count * sizeof(*variables));
    if (!variables)
    {
        FUNC0("Failed to allocate variables memory.\n");
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < cb->variable_count; i++)
    {
        struct d3dcompiler_shader_reflection_variable *v = &variables[i];
        DWORD offset;

        v->ID3D11ShaderReflectionVariable_iface.lpVtbl = &d3dcompiler_shader_reflection_variable_vtbl;
        v->constant_buffer = cb;

        FUNC10(&ptr, &offset);
        if (!FUNC5(data + offset, &v->name))
        {
            FUNC0("Failed to copy name.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }
        FUNC4("Variable name: %s.\n", FUNC7(v->name));

        FUNC10(&ptr, &v->start_offset);
        FUNC4("Variable offset: %u\n", v->start_offset);

        FUNC10(&ptr, &v->size);
        FUNC4("Variable size: %u\n", v->size);

        FUNC10(&ptr, &v->flags);
        FUNC4("Variable flags: %u\n", v->flags);

        FUNC10(&ptr, &offset);
        FUNC4("Variable type offset: %x\n", offset);
        v->type = FUNC9(cb->reflection, data, offset);
        if (!v->type)
        {
            FUNC0("Failed to get type.\n");
            hr = E_FAIL;
            goto err_out;
        }

        FUNC10(&ptr, &offset);
        FUNC4("Variable default value offset: %x\n", offset);
        if (!FUNC6(data + offset, &v->default_value, offset ? v->size : 0))
        {
            FUNC0("Failed to copy name.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        if ((cb->reflection->target & D3DCOMPILER_SHADER_TARGET_VERSION_MASK) >= 0x500)
            FUNC11(&ptr, 4);
    }

    cb->variables = variables;

    return S_OK;

err_out:
    for (i = 0; i < cb->variable_count; i++)
    {
        FUNC8(&variables[i]);
    }
    FUNC3(FUNC1(), 0, variables);
    return hr;
}