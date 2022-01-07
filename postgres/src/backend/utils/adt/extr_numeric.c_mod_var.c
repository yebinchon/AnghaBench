
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int dscale; } ;
typedef TYPE_1__ NumericVar ;


 int div_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int ,int) ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int mul_var (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int ) ;
 int sub_var (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
mod_var(const NumericVar *var1, const NumericVar *var2, NumericVar *result)
{
 NumericVar tmp;

 init_var(&tmp);







 div_var(var1, var2, &tmp, 0, 0);

 mul_var(var2, &tmp, &tmp, var2->dscale);

 sub_var(var1, &tmp, result);

 free_var(&tmp);
}
