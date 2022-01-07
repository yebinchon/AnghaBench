
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct d3dx_state {size_t operation; } ;
struct d3dx_pass {unsigned int state_count; struct d3dx_state* states; int annotation_count; int name; } ;
struct d3dx_parameter {int object_id; } ;
struct d3dx9_base_effect {int flags; TYPE_1__* objects; } ;
struct TYPE_7__ {scalar_t__ class; } ;
struct TYPE_6__ {int * pPixelShaderFunction; int * pVertexShaderFunction; int Annotations; int Name; } ;
struct TYPE_5__ {int * data; } ;
typedef int HRESULT ;
typedef TYPE_2__ D3DXPASS_DESC ;
typedef int D3DXHANDLE ;
typedef int BOOL ;


 int D3DERR_INVALIDCALL ;
 int D3DXFX_NOT_CLONEABLE ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 scalar_t__ SC_PIXELSHADER ;
 scalar_t__ SC_VERTEXSHADER ;
 int WARN (char*) ;
 int d3dx9_get_param_value_ptr (struct d3dx_pass*,struct d3dx_state*,void**,struct d3dx_parameter**,int ,int *) ;
 struct d3dx_pass* get_valid_pass (struct d3dx9_base_effect*,int ) ;
 TYPE_3__* state_table ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_pass_desc(struct d3dx9_base_effect *base,
        D3DXHANDLE pass_handle, D3DXPASS_DESC *desc)
{
    struct d3dx_pass *pass = get_valid_pass(base, pass_handle);
    unsigned int i;

    if (!desc || !pass)
    {
        WARN("Invalid argument specified.\n");
        return D3DERR_INVALIDCALL;
    }

    desc->Name = pass->name;
    desc->Annotations = pass->annotation_count;

    desc->pVertexShaderFunction = ((void*)0);
    desc->pPixelShaderFunction = ((void*)0);

    if (base->flags & D3DXFX_NOT_CLONEABLE)
        return D3D_OK;

    for (i = 0; i < pass->state_count; ++i)
    {
        struct d3dx_state *state = &pass->states[i];

        if (state_table[state->operation].class == SC_VERTEXSHADER
                || state_table[state->operation].class == SC_PIXELSHADER)
        {
            struct d3dx_parameter *param;
            void *param_value;
            BOOL param_dirty;
            HRESULT hr;
            void *data;

            if (FAILED(hr = d3dx9_get_param_value_ptr(pass, &pass->states[i], &param_value, &param,
                    FALSE, &param_dirty)))
                return hr;

            data = param->object_id ? base->objects[param->object_id].data : ((void*)0);
            if (state_table[state->operation].class == SC_VERTEXSHADER)
                desc->pVertexShaderFunction = data;
            else
                desc->pPixelShaderFunction = data;
        }
    }

    return D3D_OK;
}
