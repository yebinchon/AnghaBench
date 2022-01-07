
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_regstore {int dummy; } ;
struct d3dx_preshader {int inputs; struct d3dx_regstore regs; } ;
struct d3dx_param_eval {int param_type; int shader_inputs; int version_counter; struct d3dx_preshader pres; } ;
struct IDirect3DDevice9 {int dummy; } ;
typedef int ULONG64 ;
typedef int ID3DXEffectStateManager ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int TRACE (char*,struct IDirect3DDevice9*,struct d3dx_param_eval*,int ) ;
 int TRUE ;
 int ULONG64_MAX ;
 int execute_preshader (struct d3dx_preshader*) ;
 scalar_t__ is_const_tab_input_dirty (int *,int ) ;
 int next_update_version (int ) ;
 int set_constants (struct d3dx_regstore*,int *,int ,int *,struct IDirect3DDevice9*,int ,int ,int ) ;

HRESULT d3dx_param_eval_set_shader_constants(ID3DXEffectStateManager *manager, struct IDirect3DDevice9 *device,
        struct d3dx_param_eval *peval, BOOL update_all)
{
    HRESULT hr;
    struct d3dx_preshader *pres = &peval->pres;
    struct d3dx_regstore *rs = &pres->regs;
    ULONG64 new_update_version = next_update_version(peval->version_counter);
    BOOL pres_dirty = FALSE;

    TRACE("device %p, peval %p, param_type %u.\n", device, peval, peval->param_type);

    if (is_const_tab_input_dirty(&pres->inputs, ULONG64_MAX))
    {
        set_constants(rs, &pres->inputs, new_update_version,
                ((void*)0), ((void*)0), peval->param_type, FALSE, FALSE);
        if (FAILED(hr = execute_preshader(pres)))
            return hr;
        pres_dirty = TRUE;
    }

    return set_constants(rs, &peval->shader_inputs, new_update_version,
            manager, device, peval->param_type, update_all, pres_dirty);
}
