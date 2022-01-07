
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_atan (int ,int ,int ) ;
 int validate_rad2angle (TYPE_1__*) ;

void rpn_atan(calc_number_t *c)
{
    mpfr_atan(c->mf, c->mf, MPFR_DEFAULT_RND);
    validate_rad2angle(c);
}
