#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct d3dx_regstore {scalar_t__* tables; } ;
struct TYPE_4__ {unsigned int table; unsigned int offset; } ;
struct TYPE_3__ {unsigned int table; size_t offset; } ;
struct d3dx_pres_operand {TYPE_2__ reg; TYPE_1__ index_reg; } ;

/* Variables and functions */
 unsigned int PRES_REGTAB_COUNT ; 
 unsigned int PRES_REGTAB_IMMED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t FUNC1 (size_t,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,size_t) ; 
 int /*<<< orphan*/ * table_symbol ; 

__attribute__((used)) static void FUNC3(struct d3dx_regstore *rs, const struct d3dx_pres_operand *arg, int component_count)
{
    static const char *xyzw_str = "xyzw";
    unsigned int i, table;

    table = arg->reg.table;
    if (table == PRES_REGTAB_IMMED && arg->index_reg.table == PRES_REGTAB_COUNT)
    {
        FUNC0("(");
        for (i = 0; i < component_count; ++i)
            FUNC0(i < component_count - 1 ? "%.16e, " : "%.16e",
                    ((double *)rs->tables[PRES_REGTAB_IMMED])[arg->reg.offset + i]);
        FUNC0(")");
    }
    else
    {
        if (arg->index_reg.table == PRES_REGTAB_COUNT)
        {
            FUNC0("%s%u.", table_symbol[table], FUNC2(table, arg->reg.offset));
        }
        else
        {
            unsigned int index_reg;

            index_reg = FUNC2(arg->index_reg.table, arg->index_reg.offset);
            FUNC0("%s[%u + %s%u.%c].", table_symbol[table], FUNC2(table, arg->reg.offset),
                    table_symbol[arg->index_reg.table], index_reg,
                    xyzw_str[arg->index_reg.offset - FUNC1(arg->index_reg.table, index_reg)]);
        }
        for (i = 0; i < component_count; ++i)
            FUNC0("%c", xyzw_str[(arg->reg.offset + i) % 4]);
    }
}