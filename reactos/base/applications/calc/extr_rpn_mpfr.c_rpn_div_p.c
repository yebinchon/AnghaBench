
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
 int mpfr_div (int ,int ,int ,int ) ;
 int mpfr_mul_ui (int ,int ,int,int ) ;
 scalar_t__ mpfr_sgn (int ) ;

__attribute__((used)) static void rpn_div_p(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    if (mpfr_sgn(b->mf) == 0)
        calc.is_nan = TRUE;
    else {
        mpfr_mul_ui(r->mf, a->mf, 100, MPFR_DEFAULT_RND);
        mpfr_div(r->mf, r->mf, b->mf, MPFR_DEFAULT_RND);
    }
}
