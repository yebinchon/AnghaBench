
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mpfr_t ;
struct TYPE_6__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_7__ {int is_nan; } ;


 int MPFR_DEFAULT_RND ;
 int TRUE ;
 TYPE_5__ calc ;
 int mpfr_clear (int ) ;
 int mpfr_init (int ) ;
 int mpfr_pow (int ,int ,int ,int ) ;
 int mpfr_set (int ,int ,int ) ;
 scalar_t__ mpfr_sgn (int ) ;
 int mpfr_ui_div (int ,int,int ,int ) ;

__attribute__((used)) static void rpn_sqr_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    if (mpfr_sgn(b->mf) == 0)
        calc.is_nan = TRUE;
    else {
        mpfr_t tmp;

        mpfr_init(tmp);
        mpfr_set(tmp, b->mf, MPFR_DEFAULT_RND);
        mpfr_ui_div(tmp, 1, tmp, MPFR_DEFAULT_RND);
        mpfr_pow(r->mf, a->mf, tmp, MPFR_DEFAULT_RND);
        mpfr_clear(tmp);
    }
}
