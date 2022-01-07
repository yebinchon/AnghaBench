
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ table; int offset; } ;
struct d3dx_pres_operand {TYPE_1__ reg; TYPE_1__ index_reg; } ;


 int FIXME (char*,unsigned int) ;
 scalar_t__ PRES_REGTAB_COUNT ;
 scalar_t__ PRES_REGTAB_OBCONST ;
 int WARN (char*,unsigned int) ;
 unsigned int* parse_pres_reg (unsigned int*,TYPE_1__*) ;

__attribute__((used)) static unsigned int *parse_pres_arg(unsigned int *ptr, unsigned int count, struct d3dx_pres_operand *opr)
{
    if (count < 3 || (*ptr && count < 5))
    {
        WARN("Byte code buffer ends unexpectedly, count %u.\n", count);
        return ((void*)0);
    }

    if (*ptr)
    {
        if (*ptr != 1)
        {
            FIXME("Unknown relative addressing flag, word %#x.\n", *ptr);
            return ((void*)0);
        }
        ptr = parse_pres_reg(ptr + 1, &opr->index_reg);
        if (!ptr)
            return ((void*)0);
    }
    else
    {
        opr->index_reg.table = PRES_REGTAB_COUNT;
        ++ptr;
    }

    ptr = parse_pres_reg(ptr, &opr->reg);

    if (opr->reg.table == PRES_REGTAB_OBCONST)
        opr->reg.offset /= 4;
    return ptr;
}
