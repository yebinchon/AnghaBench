
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_parameter {size_t object_id; scalar_t__ type; unsigned int element_count; TYPE_1__* members; int param_eval; int name; } ;
struct d3dx_state {struct d3dx_parameter* referenced_param; struct d3dx_parameter parameter; } ;
struct d3dx_object {char* data; scalar_t__ size; } ;
struct d3dx9_base_effect {struct d3dx_object* objects; } ;
struct TYPE_2__ {scalar_t__ type; int object_id; int param_eval; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3DXERR_INVALIDDATA ;
 scalar_t__ D3DXPT_INT ;
 scalar_t__ D3DXPT_PIXELSHADER ;
 scalar_t__ D3DXPT_VERTEXSHADER ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,scalar_t__,...) ;
 int TRACE (char*,...) ;
 int d3dx_create_param_eval (struct d3dx9_base_effect*,int*,scalar_t__,scalar_t__,int *,int ,char const**,unsigned int) ;
 int debugstr_a (int ) ;
 struct d3dx_parameter* get_parameter_by_name (struct d3dx9_base_effect*,int *,char*) ;
 int get_version_counter_ptr (struct d3dx9_base_effect*) ;

__attribute__((used)) static HRESULT d3dx9_parse_array_selector(struct d3dx9_base_effect *base, struct d3dx_state *state,
        const char **skip_constants, unsigned int skip_constants_count)
{
    DWORD string_size;
    struct d3dx_parameter *param = &state->parameter;
    struct d3dx_object *object = &base->objects[param->object_id];
    char *ptr = object->data;
    HRESULT ret;

    TRACE("Parsing array entry selection state for parameter %p.\n", param);

    string_size = *(DWORD *)ptr;
    state->referenced_param = get_parameter_by_name(base, ((void*)0), ptr + 4);
    if (state->referenced_param)
    {
        TRACE("Mapping to parameter %s.\n", debugstr_a(state->referenced_param->name));
    }
    else
    {
        FIXME("Referenced parameter %s not found.\n", ptr + 4);
        return D3DXERR_INVALIDDATA;
    }
    TRACE("Unknown DWORD: 0x%.8x.\n", *(DWORD *)(ptr + string_size));

    if (string_size % sizeof(DWORD))
        FIXME("Unaligned string_size %u.\n", string_size);
    if (FAILED(ret = d3dx_create_param_eval(base, (DWORD *)(ptr + string_size) + 1,
            object->size - (string_size + sizeof(DWORD)), D3DXPT_INT, &param->param_eval,
            get_version_counter_ptr(base), ((void*)0), 0)))
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
                FIXME("Unexpected member parameter type %u, expected %u.\n", param->members[i].type, param->type);
                return D3DXERR_INVALIDDATA;
            }
            if (!param->members[i].param_eval)
            {
                TRACE("Creating preshader for object %u.\n", param->members[i].object_id);
                object = &base->objects[param->members[i].object_id];
                if (FAILED(ret = d3dx_create_param_eval(base, object->data, object->size, param->type,
                        &param->members[i].param_eval, get_version_counter_ptr(base),
                        skip_constants, skip_constants_count)))
                    break;
            }
        }
    }
    return ret;
}
