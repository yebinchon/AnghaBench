
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_set_ui (int ,int ,int ) ;

void rpn_zero(calc_number_t *c)
{
    mpfr_set_ui(c->mf, 0, MPFR_DEFAULT_RND);
}
