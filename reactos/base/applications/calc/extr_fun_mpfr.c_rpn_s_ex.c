
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mf; } ;
struct TYPE_7__ {scalar_t__ next; TYPE_1__ num; } ;
typedef TYPE_2__ statistic_t ;
typedef int mpfr_t ;
struct TYPE_8__ {int mf; } ;
typedef TYPE_3__ calc_number_t ;
struct TYPE_9__ {scalar_t__ base; TYPE_2__* stat; int hStatWnd; } ;


 int IDC_LIST_STAT ;
 scalar_t__ IDC_RADIO_DEC ;
 int LB_GETCOUNT ;
 int MPFR_DEFAULT_RND ;
 unsigned long SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 TYPE_5__ calc ;
 int mpfr_add (int ,int ,int ,int ) ;
 int mpfr_clear (int ) ;
 int mpfr_div_ui (int ,int ,unsigned long,int ) ;
 int mpfr_init (int ) ;
 int mpfr_set_ui (int ,int ,int ) ;
 int mpfr_sqr (int ,int ,int ) ;
 int mpfr_sqrt (int ,int ,int ) ;
 int mpfr_sub (int ,int ,int ,int ) ;
 int mpfr_trunc (int ,int ) ;
 int stat_sum (int ) ;

__attribute__((used)) static void rpn_s_ex(calc_number_t *c, int pop_type)
{
    mpfr_t dev;
    mpfr_t num;
    unsigned long n = 0;
    statistic_t *p = calc.stat;

    n = SendDlgItemMessage(calc.hStatWnd, IDC_LIST_STAT, LB_GETCOUNT, 0, 0);
    if (n < 2) {
        mpfr_set_ui(c->mf, 0, MPFR_DEFAULT_RND);
        return;
    }

    stat_sum(c->mf);
    mpfr_div_ui(c->mf, c->mf, n, MPFR_DEFAULT_RND);

    mpfr_init(dev);
    mpfr_init(num);

    mpfr_set_ui(dev, 0, MPFR_DEFAULT_RND);
    p = calc.stat;
    while (p != ((void*)0)) {
        mpfr_sub(num, p->num.mf, c->mf, MPFR_DEFAULT_RND);
        mpfr_sqr(num, num, MPFR_DEFAULT_RND);
        mpfr_add(dev, dev, num, MPFR_DEFAULT_RND);
        p = (statistic_t *)(p->next);
    }
    mpfr_div_ui(c->mf, dev, pop_type ? n-1 : n, MPFR_DEFAULT_RND);
    mpfr_sqrt(c->mf, c->mf, MPFR_DEFAULT_RND);

    if (calc.base != IDC_RADIO_DEC)
        mpfr_trunc(c->mf, c->mf);

    mpfr_clear(dev);
    mpfr_clear(num);
}
