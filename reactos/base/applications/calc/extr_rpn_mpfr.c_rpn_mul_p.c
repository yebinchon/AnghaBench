
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_div_ui (int ,int ,int,int ) ;
 int mpfr_mul (int ,int ,int ,int ) ;

__attribute__((used)) static void rpn_mul_p(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    mpfr_mul(r->mf, a->mf, b->mf, MPFR_DEFAULT_RND);
    mpfr_div_ui(r->mf, r->mf, 100, MPFR_DEFAULT_RND);
}
