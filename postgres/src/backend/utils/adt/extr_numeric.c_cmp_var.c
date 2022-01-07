
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sign; int weight; int ndigits; int digits; } ;
typedef TYPE_1__ NumericVar ;


 int cmp_var_common (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
cmp_var(const NumericVar *var1, const NumericVar *var2)
{
 return cmp_var_common(var1->digits, var1->ndigits,
        var1->weight, var1->sign,
        var2->digits, var2->ndigits,
        var2->weight, var2->sign);
}
