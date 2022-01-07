
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
struct TYPE_5__ {scalar_t__ next; TYPE_1__ num; } ;
typedef TYPE_2__ statistic_t ;
typedef int mpfr_t ;
struct TYPE_6__ {TYPE_2__* stat; } ;


 int MPFR_DEFAULT_RND ;
 TYPE_3__ calc ;
 int mpfr_add (int ,int ,int ,int ) ;
 int mpfr_clear (int ) ;
 int mpfr_init (int ) ;
 int mpfr_mul (int ,int ,int ,int ) ;
 int mpfr_set_ui (int ,int ,int ) ;

__attribute__((used)) static void stat_sum2(mpfr_t sum)
{
    statistic_t *p = calc.stat;
    mpfr_t sqr;

    mpfr_init(sqr);
    mpfr_set_ui(sum, 0, MPFR_DEFAULT_RND);
    while (p != ((void*)0)) {
        mpfr_mul(sqr, p->num.mf, p->num.mf, MPFR_DEFAULT_RND);
        mpfr_add(sum, sum, sqr, MPFR_DEFAULT_RND);
        p = (statistic_t *)(p->next);
    }
    mpfr_clear(sqr);
}
