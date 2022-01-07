
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {scalar_t__ base; } ;


 scalar_t__ IDC_RADIO_DEC ;
 TYPE_3__ calc ;
 int mpfr_trunc (int ,int ) ;
 int stat_sum (int ) ;

void rpn_sum(calc_number_t *c)
{
    stat_sum(c->mf);

    if (calc.base != IDC_RADIO_DEC)
        mpfr_trunc(c->mf, c->mf);
}
