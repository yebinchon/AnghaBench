
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct d3dx_parameter {int bytes; int type; } ;
struct TYPE_3__ {scalar_t__* tables; int * table_sizes; } ;
struct TYPE_4__ {TYPE_1__ regs; int inputs; } ;
struct d3dx_param_eval {TYPE_2__ pres; int param_type; int version_counter; } ;
typedef int HRESULT ;


 int D3DXPT_FLOAT ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 size_t PRES_REGTAB_OCONST ;
 int TRACE (char*,struct d3dx_param_eval*,struct d3dx_parameter const*,void*) ;
 int ULONG64_MAX ;
 int execute_preshader (TYPE_2__*) ;
 unsigned int get_offset_reg (size_t,int ) ;
 scalar_t__ is_const_tab_input_dirty (int *,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int next_update_version (int ) ;
 int set_constants (TYPE_1__*,int *,int ,int *,int *,int ,int ,int ) ;
 int set_number (unsigned int*,int ,float*,int ) ;

HRESULT d3dx_evaluate_parameter(struct d3dx_param_eval *peval, const struct d3dx_parameter *param,
        void *param_value)
{
    HRESULT hr;
    unsigned int i;
    unsigned int elements, elements_param, elements_table;
    float *oc;

    TRACE("peval %p, param %p, param_value %p.\n", peval, param, param_value);

    if (is_const_tab_input_dirty(&peval->pres.inputs, ULONG64_MAX))
    {
        set_constants(&peval->pres.regs, &peval->pres.inputs,
                next_update_version(peval->version_counter),
                ((void*)0), ((void*)0), peval->param_type, FALSE, FALSE);

        if (FAILED(hr = execute_preshader(&peval->pres)))
            return hr;
    }

    elements_table = get_offset_reg(PRES_REGTAB_OCONST, peval->pres.regs.table_sizes[PRES_REGTAB_OCONST]);
    elements_param = param->bytes / sizeof(unsigned int);
    elements = min(elements_table, elements_param);
    oc = (float *)peval->pres.regs.tables[PRES_REGTAB_OCONST];
    for (i = 0; i < elements; ++i)
        set_number((unsigned int *)param_value + i, param->type, oc + i, D3DXPT_FLOAT);
    return D3D_OK;
}
