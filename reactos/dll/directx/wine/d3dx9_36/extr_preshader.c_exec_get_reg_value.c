
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_regstore {int dummy; } ;
typedef enum pres_reg_tables { ____Placeholder_pres_reg_tables } pres_reg_tables ;


 double regstore_get_double (struct d3dx_regstore*,int,unsigned int) ;

__attribute__((used)) static double exec_get_reg_value(struct d3dx_regstore *rs, enum pres_reg_tables table, unsigned int offset)
{
    return regstore_get_double(rs, table, offset);
}
