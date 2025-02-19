
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct d3dx_sampler {unsigned int state_count; int * states; } ;
struct d3dx_pass {int dummy; } ;
struct d3dx_parameter {scalar_t__ class; int name; struct d3dx_sampler* data; TYPE_2__* members; scalar_t__ element_count; int type; TYPE_4__* param_eval; } ;
struct ID3DXEffectImpl {int device; int manager; } ;
struct TYPE_5__ {unsigned int input_count; TYPE_3__* inputs; struct d3dx_parameter** inputs_param; } ;
struct TYPE_8__ {TYPE_1__ shader_inputs; } ;
struct TYPE_7__ {unsigned int RegisterCount; scalar_t__ RegisterIndex; } ;
struct TYPE_6__ {struct d3dx_sampler* data; } ;
typedef int HRESULT ;
typedef TYPE_3__ D3DXCONSTANT_DESC ;
typedef scalar_t__ BOOL ;


 int D3DERR_INVALIDCALL ;
 int D3DVERTEXTEXTURESAMPLER0 ;
 scalar_t__ D3DXPC_OBJECT ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int TRACE (char*,int ,scalar_t__,unsigned int) ;
 int d3dx9_apply_state (struct ID3DXEffectImpl*,struct d3dx_pass*,int *,scalar_t__,scalar_t__) ;
 int d3dx_param_eval_set_shader_constants (int ,int ,TYPE_4__*,scalar_t__) ;
 int debugstr_a (int ) ;
 scalar_t__ is_param_type_sampler (int ) ;

__attribute__((used)) static HRESULT d3dx_set_shader_constants(struct ID3DXEffectImpl *effect, struct d3dx_pass *pass,
        struct d3dx_parameter *param, BOOL vs, BOOL update_all)
{
    HRESULT hr, ret;
    struct d3dx_parameter **params;
    D3DXCONSTANT_DESC *cdesc;
    unsigned int parameters_count;
    unsigned int i, j;

    if (!param->param_eval)
    {
        FIXME("param_eval structure is null.\n");
        return D3DERR_INVALIDCALL;
    }
    if (FAILED(hr = d3dx_param_eval_set_shader_constants(effect->manager, effect->device,
            param->param_eval, update_all)))
        return hr;
    params = param->param_eval->shader_inputs.inputs_param;
    cdesc = param->param_eval->shader_inputs.inputs;
    parameters_count = param->param_eval->shader_inputs.input_count;
    ret = D3D_OK;
    for (i = 0; i < parameters_count; ++i)
    {
        if (params[i] && params[i]->class == D3DXPC_OBJECT && is_param_type_sampler(params[i]->type))
        {
            struct d3dx_sampler *sampler;
            unsigned int sampler_idx;

            for (sampler_idx = 0; sampler_idx < cdesc[i].RegisterCount; ++sampler_idx)
            {
                sampler = params[i]->element_count ? params[i]->members[sampler_idx].data : params[i]->data;
                TRACE("sampler %s, register index %u, state count %u.\n", debugstr_a(params[i]->name),
                        cdesc[i].RegisterIndex, sampler->state_count);
                for (j = 0; j < sampler->state_count; ++j)
                {
                    if (FAILED(hr = d3dx9_apply_state(effect, pass, &sampler->states[j],
                            cdesc[i].RegisterIndex + sampler_idx + (vs ? D3DVERTEXTEXTURESAMPLER0 : 0),
                            update_all)))
                        ret = hr;
                }
            }
        }
    }
    return ret;
}
