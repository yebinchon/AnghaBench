#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpfr_t ;
struct TYPE_4__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_5__ {int degr; } ;

/* Variables and functions */
#define  IDC_RADIO_DEG 130 
#define  IDC_RADIO_GRAD 129 
#define  IDC_RADIO_RAD 128 
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 TYPE_3__ calc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(calc_number_t *r)
{
    mpfr_t mult, divs;

    FUNC3(mult);
    FUNC3(divs);
    switch (calc.degr) {
    case IDC_RADIO_DEG:
        FUNC5(mult, 180, MPFR_DEFAULT_RND);
        FUNC1(divs, MPFR_DEFAULT_RND);
        break;
    case IDC_RADIO_RAD:
        FUNC5(mult, 1, MPFR_DEFAULT_RND);
        FUNC5(divs, 1, MPFR_DEFAULT_RND);
        break;
    case IDC_RADIO_GRAD:
        FUNC5(mult, 200, MPFR_DEFAULT_RND);
        FUNC1(divs, MPFR_DEFAULT_RND);
        break;
    }
    FUNC4(r->mf, r->mf, mult, MPFR_DEFAULT_RND);
    FUNC2(r->mf, r->mf, divs, MPFR_DEFAULT_RND);

    FUNC0(mult);
    FUNC0(divs);
}