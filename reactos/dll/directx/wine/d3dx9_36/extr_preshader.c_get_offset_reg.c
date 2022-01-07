
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PRES_REGTAB_OBCONST ;

__attribute__((used)) static unsigned int get_offset_reg(unsigned int table, unsigned int reg_idx)
{
    return table == PRES_REGTAB_OBCONST ? reg_idx : reg_idx << 2;
}
