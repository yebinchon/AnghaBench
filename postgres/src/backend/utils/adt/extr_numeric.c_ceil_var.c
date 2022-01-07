
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ sign; } ;
typedef TYPE_1__ const NumericVar ;


 scalar_t__ NUMERIC_POS ;
 int add_var (TYPE_1__ const*,int *,TYPE_1__ const*) ;
 scalar_t__ cmp_var (TYPE_1__ const*,TYPE_1__ const*) ;
 int const_one ;
 int free_var (TYPE_1__ const*) ;
 int init_var (TYPE_1__ const*) ;
 int set_var_from_var (TYPE_1__ const*,TYPE_1__ const*) ;
 int trunc_var (TYPE_1__ const*,int ) ;

__attribute__((used)) static void
ceil_var(const NumericVar *var, NumericVar *result)
{
 NumericVar tmp;

 init_var(&tmp);
 set_var_from_var(var, &tmp);

 trunc_var(&tmp, 0);

 if (var->sign == NUMERIC_POS && cmp_var(var, &tmp) != 0)
  add_var(&tmp, &const_one, &tmp);

 set_var_from_var(&tmp, result);
 free_var(&tmp);
}
