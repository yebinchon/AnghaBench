#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mf; } ;
struct TYPE_7__ {scalar_t__ next; TYPE_1__ num; } ;
typedef  TYPE_2__ statistic_t ;
typedef  int /*<<< orphan*/  mpfr_t ;
struct TYPE_8__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_3__ calc_number_t ;
struct TYPE_9__ {scalar_t__ base; TYPE_2__* stat; int /*<<< orphan*/  hStatWnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDC_LIST_STAT ; 
 scalar_t__ IDC_RADIO_DEC ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ calc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(calc_number_t *c, int pop_type)
{
    mpfr_t        dev;
    mpfr_t        num;
    unsigned long n = 0;
    statistic_t  *p = calc.stat;

    n = FUNC0(calc.hStatWnd, IDC_LIST_STAT, LB_GETCOUNT, 0, 0);
    if (n < 2) {
        FUNC5(c->mf, 0, MPFR_DEFAULT_RND);
        return;
    }

    FUNC10(c->mf);
    FUNC3(c->mf, c->mf, n, MPFR_DEFAULT_RND);

    FUNC4(dev);
    FUNC4(num);

    FUNC5(dev, 0, MPFR_DEFAULT_RND);
    p = calc.stat;
    while (p != NULL) {
        FUNC8(num, p->num.mf, c->mf, MPFR_DEFAULT_RND);
        FUNC6(num, num, MPFR_DEFAULT_RND);
        FUNC1(dev, dev, num, MPFR_DEFAULT_RND);
        p = (statistic_t *)(p->next);
    }
    FUNC3(c->mf, dev, pop_type ? n-1 : n, MPFR_DEFAULT_RND);
    FUNC7(c->mf, c->mf, MPFR_DEFAULT_RND);

    if (calc.base != IDC_RADIO_DEC)
        FUNC9(c->mf, c->mf);

    FUNC2(dev);
    FUNC2(num);
}