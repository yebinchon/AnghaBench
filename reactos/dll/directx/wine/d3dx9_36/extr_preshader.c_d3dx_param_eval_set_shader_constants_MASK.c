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
struct d3dx_regstore {int dummy; } ;
struct d3dx_preshader {int /*<<< orphan*/  inputs; struct d3dx_regstore regs; } ;
struct d3dx_param_eval {int /*<<< orphan*/  param_type; int /*<<< orphan*/  shader_inputs; int /*<<< orphan*/  version_counter; struct d3dx_preshader pres; } ;
struct IDirect3DDevice9 {int dummy; } ;
typedef  int /*<<< orphan*/  ULONG64 ;
typedef  int /*<<< orphan*/  ID3DXEffectStateManager ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct IDirect3DDevice9*,struct d3dx_param_eval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ULONG64_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct d3dx_preshader*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct d3dx_regstore*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct IDirect3DDevice9*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT FUNC6(ID3DXEffectStateManager *manager, struct IDirect3DDevice9 *device,
        struct d3dx_param_eval *peval, BOOL update_all)
{
    HRESULT hr;
    struct d3dx_preshader *pres = &peval->pres;
    struct d3dx_regstore *rs = &pres->regs;
    ULONG64 new_update_version = FUNC4(peval->version_counter);
    BOOL pres_dirty = FALSE;

    FUNC1("device %p, peval %p, param_type %u.\n", device, peval, peval->param_type);

    if (FUNC3(&pres->inputs, ULONG64_MAX))
    {
        FUNC5(rs, &pres->inputs, new_update_version,
                NULL, NULL, peval->param_type, FALSE, FALSE);
        if (FUNC0(hr = FUNC2(pres)))
            return hr;
        pres_dirty = TRUE;
    }

    return FUNC5(rs, &peval->shader_inputs, new_update_version,
            manager, device, peval->param_type, update_all, pres_dirty);
}