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
struct d3dx_parameter {size_t object_id; scalar_t__ type; unsigned int element_count; TYPE_1__* members; int /*<<< orphan*/  param_eval; int /*<<< orphan*/  name; } ;
struct d3dx_state {struct d3dx_parameter* referenced_param; struct d3dx_parameter parameter; } ;
struct d3dx_object {char* data; scalar_t__ size; } ;
struct d3dx9_base_effect {struct d3dx_object* objects; } ;
struct TYPE_2__ {scalar_t__ type; int object_id; int /*<<< orphan*/  param_eval; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXERR_INVALIDDATA ; 
 scalar_t__ D3DXPT_INT ; 
 scalar_t__ D3DXPT_PIXELSHADER ; 
 scalar_t__ D3DXPT_VERTEXSHADER ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct d3dx9_base_effect*,int*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct d3dx_parameter* FUNC5 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct d3dx9_base_effect*) ; 

__attribute__((used)) static HRESULT FUNC7(struct d3dx9_base_effect *base, struct d3dx_state *state,
        const char **skip_constants, unsigned int skip_constants_count)
{
    DWORD string_size;
    struct d3dx_parameter *param = &state->parameter;
    struct d3dx_object *object = &base->objects[param->object_id];
    char *ptr = object->data;
    HRESULT ret;

    FUNC2("Parsing array entry selection state for parameter %p.\n", param);

    string_size = *(DWORD *)ptr;
    state->referenced_param = FUNC5(base, NULL, ptr + 4);
    if (state->referenced_param)
    {
        FUNC2("Mapping to parameter %s.\n", FUNC4(state->referenced_param->name));
    }
    else
    {
        FUNC1("Referenced parameter %s not found.\n", ptr + 4);
        return D3DXERR_INVALIDDATA;
    }
    FUNC2("Unknown DWORD: 0x%.8x.\n", *(DWORD *)(ptr + string_size));

    if (string_size % sizeof(DWORD))
        FUNC1("Unaligned string_size %u.\n", string_size);
    if (FUNC0(ret = FUNC3(base, (DWORD *)(ptr + string_size) + 1,
            object->size - (string_size + sizeof(DWORD)), D3DXPT_INT, &param->param_eval,
            FUNC6(base), NULL, 0)))
        return ret;
    ret = D3D_OK;
    param = state->referenced_param;
    if (param->type == D3DXPT_VERTEXSHADER || param->type == D3DXPT_PIXELSHADER)
    {
        unsigned int i;

        for (i = 0; i < param->element_count; i++)
        {
            if (param->members[i].type != param->type)
            {
                FUNC1("Unexpected member parameter type %u, expected %u.\n", param->members[i].type, param->type);
                return D3DXERR_INVALIDDATA;
            }
            if (!param->members[i].param_eval)
            {
                FUNC2("Creating preshader for object %u.\n", param->members[i].object_id);
                object = &base->objects[param->members[i].object_id];
                if (FUNC0(ret = FUNC3(base, object->data, object->size, param->type,
                        &param->members[i].param_eval, FUNC6(base),
                        skip_constants, skip_constants_count)))
                    break;
            }
        }
    }
    return ret;
}