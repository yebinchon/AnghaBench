
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_set (int ,int ,int ) ;

void rpn_copy(calc_number_t *dst, calc_number_t *src)
{
    mpfr_set(dst->mf, src->mf, MPFR_DEFAULT_RND);
}
