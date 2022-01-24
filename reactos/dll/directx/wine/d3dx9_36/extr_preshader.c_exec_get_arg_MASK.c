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
struct d3dx_regstore {unsigned int* table_sizes; } ;
struct TYPE_4__ {unsigned int table; unsigned int offset; } ;
struct TYPE_3__ {scalar_t__ table; unsigned int offset; } ;
struct d3dx_pres_operand {TYPE_2__ reg; TYPE_1__ index_reg; } ;

/* Variables and functions */
 unsigned int PRES_REGTAB_CONST ; 
 scalar_t__ PRES_REGTAB_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 double FUNC1 (struct d3dx_regstore*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (double) ; 

__attribute__((used)) static double FUNC6(struct d3dx_regstore *rs, const struct d3dx_pres_operand *opr, unsigned int comp)
{
    unsigned int offset, base_index, reg_index, table;

    table = opr->reg.table;

    if (opr->index_reg.table == PRES_REGTAB_COUNT)
        base_index = 0;
    else
        base_index = FUNC5(FUNC1(rs, opr->index_reg.table, opr->index_reg.offset));

    offset = FUNC2(table, base_index) + opr->reg.offset + comp;
    reg_index = FUNC4(table, offset);

    if (reg_index >= rs->table_sizes[table])
    {
        unsigned int wrap_size;

        if (table == PRES_REGTAB_CONST)
        {
            /* As it can be guessed from tests, offset into floating constant table is wrapped
             * to the nearest power of 2 and not to the actual table size. */
            for (wrap_size = 1; wrap_size < rs->table_sizes[table]; wrap_size <<= 1)
                ;
        }
        else
        {
            wrap_size = rs->table_sizes[table];
        }
        FUNC0("Wrapping register index %u, table %u, wrap_size %u, table size %u.\n",
                reg_index, table, wrap_size, rs->table_sizes[table]);
        reg_index %= wrap_size;

        if (reg_index >= rs->table_sizes[table])
            return 0.0;

        offset = FUNC2(table, reg_index) + offset % FUNC3(table);
    }

    return FUNC1(rs, table, offset);
}