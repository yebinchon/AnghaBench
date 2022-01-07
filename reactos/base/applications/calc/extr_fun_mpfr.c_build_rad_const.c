
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpfr_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_const_pi (int ,int ) ;
 int mpfr_div_ui (int ,int ,int,int ) ;
 int mpfr_init (int ) ;
 int mpfr_mul_ui (int ,int ,int,int ) ;

__attribute__((used)) static void build_rad_const(
    mpfr_t *mp_pi,
    mpfr_t *mp_pi_2,
    mpfr_t *mp_3_pi_2,
    mpfr_t *mp_2_pi)
{
    mpfr_init(*mp_pi);
    mpfr_init(*mp_pi_2);
    mpfr_init(*mp_3_pi_2);
    mpfr_init(*mp_2_pi);
    mpfr_const_pi(*mp_pi, MPFR_DEFAULT_RND);
    mpfr_div_ui(*mp_pi_2, *mp_pi, 2, MPFR_DEFAULT_RND);
    mpfr_mul_ui(*mp_3_pi_2, *mp_pi, 3, MPFR_DEFAULT_RND);
    mpfr_div_ui(*mp_3_pi_2, *mp_3_pi_2, 2, MPFR_DEFAULT_RND);
    mpfr_mul_ui(*mp_2_pi, *mp_pi, 2, MPFR_DEFAULT_RND);
}
