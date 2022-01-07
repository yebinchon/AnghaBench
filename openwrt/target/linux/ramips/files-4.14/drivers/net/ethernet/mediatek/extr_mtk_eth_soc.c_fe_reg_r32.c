
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fe_reg { ____Placeholder_fe_reg } fe_reg ;


 int fe_r32 (int ) ;
 int * fe_reg_table ;

u32 fe_reg_r32(enum fe_reg reg)
{
 return fe_r32(fe_reg_table[reg]);
}
