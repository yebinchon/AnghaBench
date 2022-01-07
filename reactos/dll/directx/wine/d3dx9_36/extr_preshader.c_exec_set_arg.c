
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_regstore {int dummy; } ;
struct d3dx_pres_reg {scalar_t__ offset; int table; } ;


 int regstore_set_double (struct d3dx_regstore*,int ,scalar_t__,double) ;

__attribute__((used)) static void exec_set_arg(struct d3dx_regstore *rs, const struct d3dx_pres_reg *reg,
        unsigned int comp, double res)
{
    regstore_set_double(rs, reg->table, reg->offset + comp, res);
}
