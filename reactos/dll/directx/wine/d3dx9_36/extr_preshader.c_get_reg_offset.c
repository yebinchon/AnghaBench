
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PRES_REGTAB_OBCONST ;

__attribute__((used)) static unsigned int get_reg_offset(unsigned int table, unsigned int offset)
{
    return table == PRES_REGTAB_OBCONST ? offset : offset >> 2;
}
