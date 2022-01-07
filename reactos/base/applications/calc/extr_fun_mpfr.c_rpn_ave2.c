
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {scalar_t__ base; int hStatWnd; } ;


 int IDC_LIST_STAT ;
 scalar_t__ IDC_RADIO_DEC ;
 int LB_GETCOUNT ;
 int MPFR_DEFAULT_RND ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 TYPE_3__ calc ;
 int mpfr_div_ui (int ,int ,int,int ) ;
 int mpfr_trunc (int ,int ) ;
 int stat_sum2 (int ) ;

void rpn_ave2(calc_number_t *c)
{
    int n;

    stat_sum2(c->mf);
    n = SendDlgItemMessage(calc.hStatWnd, IDC_LIST_STAT, LB_GETCOUNT, 0, 0);

    if (n)
        mpfr_div_ui(c->mf, c->mf, n, MPFR_DEFAULT_RND);

    if (calc.base != IDC_RADIO_DEC)
        mpfr_trunc(c->mf, c->mf);
}
