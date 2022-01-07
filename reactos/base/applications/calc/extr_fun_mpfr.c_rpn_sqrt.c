
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {int is_nan; } ;


 int MPFR_DEFAULT_RND ;
 int TRUE ;
 TYPE_3__ calc ;
 int mpfr_number_p (int ) ;
 int mpfr_sqrt (int ,int ,int ) ;

void rpn_sqrt(calc_number_t *c)
{
    mpfr_sqrt(c->mf, c->mf, MPFR_DEFAULT_RND);
    if (!mpfr_number_p(c->mf)) calc.is_nan = TRUE;
}
