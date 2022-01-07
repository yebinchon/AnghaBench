
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_preshader {unsigned int ins_count; struct d3dx_pres_ins* ins; } ;
struct d3dx_pres_reg {scalar_t__ table; int offset; } ;
struct TYPE_2__ {struct d3dx_pres_reg reg; } ;
struct d3dx_pres_ins {TYPE_1__ output; } ;
struct d3dx_const_tab {int dummy; } ;
struct d3dx_const_param_eval_output {int register_count; scalar_t__ table; int element_count; int constant_class; int register_index; int * member_0; } ;


 int D3DXPC_FORCE_DWORD ;
 scalar_t__ PRES_REGTAB_TEMP ;
 int append_const_set (struct d3dx_const_tab*,struct d3dx_const_param_eval_output*) ;
 int get_reg_offset (scalar_t__,int ) ;

__attribute__((used)) static void append_pres_const_sets_for_shader_input(struct d3dx_const_tab *const_tab,
        struct d3dx_preshader *pres)
{
    unsigned int i;
    struct d3dx_const_param_eval_output const_set = {((void*)0)};

    for (i = 0; i < pres->ins_count; ++i)
    {
        const struct d3dx_pres_ins *ins = &pres->ins[i];
        const struct d3dx_pres_reg *reg = &ins->output.reg;

        if (reg->table == PRES_REGTAB_TEMP)
            continue;

        const_set.register_index = get_reg_offset(reg->table, reg->offset);
        const_set.register_count = 1;
        const_set.table = reg->table;
        const_set.constant_class = D3DXPC_FORCE_DWORD;
        const_set.element_count = 1;
        append_const_set(const_tab, &const_set);
    }
}
