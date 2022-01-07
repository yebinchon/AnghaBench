
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpfr_t ;
struct TYPE_5__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_add_ui (int ,int ,int,int ) ;
 int mpfr_clear (int ) ;
 int mpfr_div_ui (int ,int ,int,int ) ;
 int mpfr_init (int ) ;
 int mpfr_mul (int ,int ,int ,int ) ;
 int mpfr_set (int ,int ,int ) ;

__attribute__((used)) static void rpn_add_p(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    mpfr_t tmp;

    mpfr_init(tmp);
    mpfr_set(tmp, b->mf, MPFR_DEFAULT_RND);
    mpfr_div_ui(tmp, tmp, 100, MPFR_DEFAULT_RND);
    mpfr_add_ui(tmp, tmp, 1, MPFR_DEFAULT_RND);
    mpfr_mul(r->mf, a->mf, tmp, MPFR_DEFAULT_RND);
    mpfr_clear(tmp);
}
