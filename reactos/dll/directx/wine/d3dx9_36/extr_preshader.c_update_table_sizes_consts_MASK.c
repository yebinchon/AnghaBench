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
struct d3dx_const_tab {unsigned int input_count; unsigned int* regset2table; TYPE_1__* inputs; } ;
struct TYPE_2__ {int RegisterCount; int RegisterIndex; size_t RegisterSet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int *table_sizes, struct d3dx_const_tab *ctab)
{
    unsigned int i, table, max_register;

    for (i = 0; i < ctab->input_count; ++i)
    {
        if (!ctab->inputs[i].RegisterCount)
            continue;
        max_register = ctab->inputs[i].RegisterIndex + ctab->inputs[i].RegisterCount - 1;
        table = ctab->regset2table[ctab->inputs[i].RegisterSet];
        FUNC0(table_sizes, table, max_register);
    }
}