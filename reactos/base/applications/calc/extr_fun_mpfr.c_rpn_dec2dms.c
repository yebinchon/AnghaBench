
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpfr_t ;
struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_add (int ,int ,int ,int ) ;
 int mpfr_ceil (int ,int ) ;
 int mpfr_clear (int ) ;
 int mpfr_div_ui (int ,int ,int,int ) ;
 int mpfr_frac (int ,int ,int ) ;
 int mpfr_init (int ) ;
 int mpfr_mul_ui (int ,int ,int,int ) ;
 int mpfr_trunc (int ,int ) ;

void rpn_dec2dms(calc_number_t *c)
{
    mpfr_t d, m, s;

    mpfr_init(d);
    mpfr_init(m);
    mpfr_init(s);

    mpfr_trunc(d, c->mf);
    mpfr_frac(m, c->mf, MPFR_DEFAULT_RND);
    mpfr_mul_ui(m, m, 60, MPFR_DEFAULT_RND);

    mpfr_frac(s, m, MPFR_DEFAULT_RND);
    mpfr_trunc(m, m);
    mpfr_mul_ui(s, s, 60, MPFR_DEFAULT_RND);
    mpfr_ceil(s, s);

    mpfr_div_ui(m, m, 100, MPFR_DEFAULT_RND);
    mpfr_div_ui(s, s, 10000, MPFR_DEFAULT_RND);
    mpfr_add(c->mf, d, m, MPFR_DEFAULT_RND);
    mpfr_add(c->mf, c->mf, s, MPFR_DEFAULT_RND);

    mpfr_clear(d);
    mpfr_clear(m);
    mpfr_clear(s);
}
