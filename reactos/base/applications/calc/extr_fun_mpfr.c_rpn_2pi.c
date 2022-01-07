
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_const_pi (int ,int ) ;
 int mpfr_mul_ui (int ,int ,int,int ) ;

void rpn_2pi(calc_number_t *c)
{
    mpfr_const_pi(c->mf, MPFR_DEFAULT_RND);
    mpfr_mul_ui(c->mf, c->mf, 2, MPFR_DEFAULT_RND);
}
