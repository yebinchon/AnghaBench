
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 scalar_t__ mpfr_sgn (int ) ;

int rpn_is_zero(calc_number_t *c)
{
    return (mpfr_sgn(c->mf) == 0);
}
