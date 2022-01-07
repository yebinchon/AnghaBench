
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mpfr_t ;
struct TYPE_7__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_8__ {int is_nan; } ;


 int MPFR_DEFAULT_RND ;
 int TRUE ;
 int build_rad_const (int *,int *,int *,int *) ;
 TYPE_6__ calc ;
 int mpfr_clear (int ) ;
 int mpfr_cmp (int ,int ) ;
 int mpfr_number_p (int ) ;
 int mpfr_set_si (int ,int,int ) ;
 int mpfr_sin (int ,int ,int ) ;
 scalar_t__ rpn_is_zero (TYPE_1__*) ;
 int rpn_zero (TYPE_1__*) ;
 int validate_angle2rad (TYPE_1__*) ;

void rpn_sin(calc_number_t *c)
{
    mpfr_t mp_pi, mp_pi_2, mp_3_pi_2, mp_2_pi;

    validate_angle2rad(c);
    build_rad_const(&mp_pi, &mp_pi_2, &mp_3_pi_2, &mp_2_pi);

    if (rpn_is_zero(c) || !mpfr_cmp(c->mf, mp_pi) || !mpfr_cmp(c->mf, mp_2_pi))
        rpn_zero(c);
    else
    if (!mpfr_cmp(c->mf, mp_3_pi_2))
        mpfr_set_si(c->mf, -1, MPFR_DEFAULT_RND);
    else
    if (!mpfr_cmp(c->mf, mp_pi_2))
        mpfr_set_si(c->mf, 1, MPFR_DEFAULT_RND);
    else {
        mpfr_sin(c->mf, c->mf, MPFR_DEFAULT_RND);
        if (!mpfr_number_p(c->mf)) calc.is_nan = TRUE;
    }
    mpfr_clear(mp_pi);
    mpfr_clear(mp_pi_2);
    mpfr_clear(mp_3_pi_2);
    mpfr_clear(mp_2_pi);
}
