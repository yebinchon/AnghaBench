
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {void* is_nan; } ;


 int MPFR_DEFAULT_RND ;
 void* TRUE ;
 TYPE_3__ calc ;
 int mpfr_fac_ui (int ,int ,int ) ;
 scalar_t__ mpfr_fits_ulong_p (int ,int ) ;
 int mpfr_get_ui (int ,int ) ;
 int mpfr_number_p (int ) ;
 scalar_t__ mpfr_sgn (int ) ;
 int mpfr_trunc (int ,int ) ;

void rpn_fact(calc_number_t *c)
{
    if (mpfr_sgn(c->mf) < 0) {
        calc.is_nan = TRUE;
        return;
    }

    mpfr_trunc(c->mf, c->mf);
    if (mpfr_fits_ulong_p(c->mf, MPFR_DEFAULT_RND) == 0)
        calc.is_nan = TRUE;
    else {
        mpfr_fac_ui(c->mf, mpfr_get_ui(c->mf, MPFR_DEFAULT_RND), MPFR_DEFAULT_RND);
        if (!mpfr_number_p(c->mf)) calc.is_nan = TRUE;
    }
}
