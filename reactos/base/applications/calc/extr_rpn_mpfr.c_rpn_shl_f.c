
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_7__ {int is_nan; } ;


 int MPFR_DEFAULT_RND ;
 int TRUE ;
 TYPE_5__ calc ;
 scalar_t__ mpfr_fits_ulong_p (int ,int ) ;
 unsigned long mpfr_get_ui (int ,int ) ;
 int mpfr_mul_2exp (int ,int ,unsigned long,int ) ;
 int mpfr_trunc (int ,int ) ;

__attribute__((used)) static void rpn_shl_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    unsigned long e;

    mpfr_trunc(r->mf, b->mf);
    if (mpfr_fits_ulong_p(r->mf, MPFR_DEFAULT_RND) == 0)
        calc.is_nan = TRUE;
    else {
        e = mpfr_get_ui(r->mf, MPFR_DEFAULT_RND);
        mpfr_mul_2exp(r->mf, a->mf, e, MPFR_DEFAULT_RND);
    }
}
