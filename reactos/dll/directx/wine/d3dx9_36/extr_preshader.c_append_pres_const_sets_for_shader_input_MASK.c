#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct d3dx_preshader {unsigned int ins_count; struct d3dx_pres_ins* ins; } ;
struct d3dx_pres_reg {scalar_t__ table; int /*<<< orphan*/  offset; } ;
struct TYPE_2__ {struct d3dx_pres_reg reg; } ;
struct d3dx_pres_ins {TYPE_1__ output; } ;
struct d3dx_const_tab {int dummy; } ;
struct d3dx_const_param_eval_output {int register_count; scalar_t__ table; int element_count; int /*<<< orphan*/  constant_class; int /*<<< orphan*/  register_index; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXPC_FORCE_DWORD ; 
 scalar_t__ PRES_REGTAB_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct d3dx_const_tab*,struct d3dx_const_param_eval_output*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct d3dx_const_tab *const_tab,
        struct d3dx_preshader *pres)
{
    unsigned int i;
    struct d3dx_const_param_eval_output const_set = {NULL};

    for (i = 0; i < pres->ins_count; ++i)
    {
        const struct d3dx_pres_ins *ins = &pres->ins[i];
        const struct d3dx_pres_reg *reg = &ins->output.reg;

        if (reg->table == PRES_REGTAB_TEMP)
            continue;

        const_set.register_index = FUNC1(reg->table, reg->offset);
        const_set.register_count = 1;
        const_set.table = reg->table;
        const_set.constant_class = D3DXPC_FORCE_DWORD;
        const_set.element_count = 1;
        FUNC0(const_tab, &const_set);
    }
}