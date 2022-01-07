
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_offset_reg (unsigned int,int) ;

__attribute__((used)) static unsigned int get_reg_components(unsigned int table)
{
    return get_offset_reg(table, 1);
}
