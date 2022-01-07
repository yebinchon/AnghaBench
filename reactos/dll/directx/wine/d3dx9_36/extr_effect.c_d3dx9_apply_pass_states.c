
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_pass {unsigned int state_count; int update_version; int * states; } ;
struct ID3DXEffectImpl {int light_updated; scalar_t__ material_updated; int current_material; int * current_light; int base_effect; } ;
typedef int ULONG64 ;
typedef int HRESULT ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (int *) ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int SET_D3D_STATE (struct ID3DXEffectImpl*,int ,unsigned int,...) ;
 int SetLight ;
 int SetMaterial ;
 int TRACE (char*,struct ID3DXEffectImpl*,struct d3dx_pass*,unsigned int) ;
 int WARN (char*,int ) ;
 int d3dx9_apply_state (struct ID3DXEffectImpl*,struct d3dx_pass*,int *,unsigned int,int ) ;
 int next_effect_update_version (int *) ;

__attribute__((used)) static HRESULT d3dx9_apply_pass_states(struct ID3DXEffectImpl *effect, struct d3dx_pass *pass, BOOL update_all)
{
    unsigned int i;
    HRESULT ret;
    HRESULT hr;
    ULONG64 new_update_version = next_effect_update_version(&effect->base_effect);

    TRACE("effect %p, pass %p, state_count %u.\n", effect, pass, pass->state_count);

    ret = D3D_OK;
    for (i = 0; i < pass->state_count; ++i)
    {
        if (FAILED(hr = d3dx9_apply_state(effect, pass, &pass->states[i], ~0u, update_all)))
        {
            WARN("Error applying state, hr %#x.\n", hr);
            ret = hr;
        }
    }

    if (effect->light_updated)
    {
        for (i = 0; i < ARRAY_SIZE(effect->current_light); ++i)
        {
            if ((effect->light_updated & (1u << i))
                    && FAILED(hr = SET_D3D_STATE(effect, SetLight, i, &effect->current_light[i])))
            {
                WARN("Error setting light, hr %#x.\n", hr);
                ret = hr;
            }
        }
        effect->light_updated = 0;
    }

    if (effect->material_updated
            && FAILED(hr = SET_D3D_STATE(effect, SetMaterial, &effect->current_material)))
    {
        WARN("Error setting material, hr %#x.\n", hr);
        ret = hr;
    }
    effect->material_updated = FALSE;

    pass->update_version = new_update_version;
    return ret;
}
