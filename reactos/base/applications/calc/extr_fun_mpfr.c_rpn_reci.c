
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {int is_nan; } ;


 int MPFR_DEFAULT_RND ;
 int TRUE ;
 TYPE_3__ calc ;
 scalar_t__ mpfr_sgn (int ) ;
 int mpfr_ui_div (int ,int,int ,int ) ;

void rpn_reci(calc_number_t *c)
{
    if (mpfr_sgn(c->mf) == 0)
        calc.is_nan = TRUE;
    else
        mpfr_ui_div(c->mf, 1, c->mf, MPFR_DEFAULT_RND);
}
