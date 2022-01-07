
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_const_tab {unsigned int input_count; unsigned int* regset2table; TYPE_1__* inputs; } ;
struct TYPE_2__ {int RegisterCount; int RegisterIndex; size_t RegisterSet; } ;


 int update_table_size (unsigned int*,unsigned int,unsigned int) ;

__attribute__((used)) static void update_table_sizes_consts(unsigned int *table_sizes, struct d3dx_const_tab *ctab)
{
    unsigned int i, table, max_register;

    for (i = 0; i < ctab->input_count; ++i)
    {
        if (!ctab->inputs[i].RegisterCount)
            continue;
        max_register = ctab->inputs[i].RegisterIndex + ctab->inputs[i].RegisterCount - 1;
        table = ctab->regset2table[ctab->inputs[i].RegisterSet];
        update_table_size(table_sizes, table, max_register);
    }
}
