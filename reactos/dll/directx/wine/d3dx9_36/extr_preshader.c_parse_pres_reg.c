
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_pres_reg {int table; int offset; } ;
typedef enum pres_reg_tables { ____Placeholder_pres_reg_tables } pres_reg_tables ;


 unsigned int ARRAY_SIZE (int const*) ;
 int FIXME (char*,unsigned int) ;
__attribute__((used)) static unsigned int *parse_pres_reg(unsigned int *ptr, struct d3dx_pres_reg *reg)
{
    static const enum pres_reg_tables reg_table[8] =
    {
        133, 132, 134, 133,
        130, 131, 129, 128
    };

    if (*ptr >= ARRAY_SIZE(reg_table) || reg_table[*ptr] == 133)
    {
        FIXME("Unsupported register table %#x.\n", *ptr);
        return ((void*)0);
    }

    reg->table = reg_table[*ptr++];
    reg->offset = *ptr++;
    return ptr;
}
