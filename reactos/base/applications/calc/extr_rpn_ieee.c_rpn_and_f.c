
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i; long double f; } ;
typedef TYPE_1__ calc_number_t ;


 void* logic_dbl2int (TYPE_1__*) ;

__attribute__((used)) static void rpn_and_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    calc_number_t ai, bi;

    ai.i = logic_dbl2int(a);
    bi.i = logic_dbl2int(b);

    r->f = (long double)(ai.i & bi.i);
}
