
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_mul_si (int ,int ,int,int ) ;

void rpn_sign(calc_number_t *c)
{
    mpfr_mul_si(c->mf, c->mf, -1, MPFR_DEFAULT_RND);
}
