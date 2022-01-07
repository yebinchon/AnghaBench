
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_7__ {int is_nan; } ;


 int TRUE ;
 TYPE_5__ calc ;

__attribute__((used)) static void rpn_div_i(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    if (b->i == 0)
        calc.is_nan = TRUE;
    else
        r->i = a->i / b->i;
}
