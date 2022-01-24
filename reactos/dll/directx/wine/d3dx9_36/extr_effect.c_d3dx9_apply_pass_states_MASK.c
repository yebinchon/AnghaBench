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
struct d3dx_pass {unsigned int state_count; int /*<<< orphan*/  update_version; int /*<<< orphan*/ * states; } ;
struct ID3DXEffectImpl {int light_updated; scalar_t__ material_updated; int /*<<< orphan*/  current_material; int /*<<< orphan*/ * current_light; int /*<<< orphan*/  base_effect; } ;
typedef  int /*<<< orphan*/  ULONG64 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct ID3DXEffectImpl*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/  SetLight ; 
 int /*<<< orphan*/  SetMaterial ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ID3DXEffectImpl*,struct d3dx_pass*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ID3DXEffectImpl*,struct d3dx_pass*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(struct ID3DXEffectImpl *effect, struct d3dx_pass *pass, BOOL update_all)
{
    unsigned int i;
    HRESULT ret;
    HRESULT hr;
    ULONG64 new_update_version = FUNC6(&effect->base_effect);

    FUNC3("effect %p, pass %p, state_count %u.\n", effect, pass, pass->state_count);

    ret = D3D_OK;
    for (i = 0; i < pass->state_count; ++i)
    {
        if (FUNC1(hr = FUNC5(effect, pass, &pass->states[i], ~0u, update_all)))
        {
            FUNC4("Error applying state, hr %#x.\n", hr);
            ret = hr;
        }
    }

    if (effect->light_updated)
    {
        for (i = 0; i < FUNC0(effect->current_light); ++i)
        {
            if ((effect->light_updated & (1u << i))
                    && FUNC1(hr = FUNC2(effect, SetLight, i, &effect->current_light[i])))
            {
                FUNC4("Error setting light, hr %#x.\n", hr);
                ret = hr;
            }
        }
        effect->light_updated = 0;
    }

    if (effect->material_updated
            && FUNC1(hr = FUNC2(effect, SetMaterial, &effect->current_material)))
    {
        FUNC4("Error setting material, hr %#x.\n", hr);
        ret = hr;
    }
    effect->material_updated = FALSE;

    pass->update_version = new_update_version;
    return ret;
}