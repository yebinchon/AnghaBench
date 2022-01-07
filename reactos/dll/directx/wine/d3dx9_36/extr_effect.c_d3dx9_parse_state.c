
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_state {int operation; int index; int parameter; int type; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_2__ {int name; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ D3D_OK ;
 int FALSE ;
 int ST_CONSTANT ;
 int TRACE (char*,int,...) ;
 int WARN (char*) ;
 scalar_t__ d3dx9_parse_effect_typedef (struct d3dx9_base_effect*,int *,char const*,char const**,int *,int ) ;
 scalar_t__ d3dx9_parse_init_value (struct d3dx9_base_effect*,int *,char const*,char const*,struct d3dx_object*) ;
 int free_parameter (int *,int ,int ) ;
 int read_dword (char const**,int*) ;
 TYPE_1__* state_table ;

__attribute__((used)) static HRESULT d3dx9_parse_state(struct d3dx9_base_effect *base, struct d3dx_state *state,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    const char *ptr2;
    HRESULT hr;

    state->type = ST_CONSTANT;

    read_dword(ptr, &state->operation);
    TRACE("Operation: %#x (%s)\n", state->operation, state_table[state->operation].name);

    read_dword(ptr, &state->index);
    TRACE("Index: %#x\n", state->index);

    read_dword(ptr, &offset);
    TRACE("Typedef offset: %#x\n", offset);
    ptr2 = data + offset;
    hr = d3dx9_parse_effect_typedef(base, &state->parameter, data, &ptr2, ((void*)0), 0);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse type definition\n");
        goto err_out;
    }

    read_dword(ptr, &offset);
    TRACE("Value offset: %#x\n", offset);
    hr = d3dx9_parse_init_value(base, &state->parameter, data, data + offset, objects);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse value\n");
        goto err_out;
    }

    return D3D_OK;

err_out:

    free_parameter(&state->parameter, FALSE, FALSE);

    return hr;
}
