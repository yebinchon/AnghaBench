#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpfr_t ;
struct TYPE_7__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_8__ {int /*<<< orphan*/  is_nan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__ calc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(calc_number_t *c)
{
    mpfr_t mp_pi, mp_pi_2, mp_3_pi_2, mp_2_pi;

    FUNC8(c);
    FUNC0(&mp_pi, &mp_pi_2, &mp_3_pi_2, &mp_2_pi);

    if (FUNC6(c) || !FUNC2(c->mf, mp_pi) || !FUNC2(c->mf, mp_2_pi))
        FUNC7(c);
    else
    if (!FUNC2(c->mf, mp_3_pi_2))
        FUNC4(c->mf, -1, MPFR_DEFAULT_RND);
    else
    if (!FUNC2(c->mf, mp_pi_2))
        FUNC4(c->mf, 1, MPFR_DEFAULT_RND);
    else {
        FUNC5(c->mf, c->mf, MPFR_DEFAULT_RND);
        if (!FUNC3(c->mf)) calc.is_nan = TRUE;
    }
    FUNC1(mp_pi);
    FUNC1(mp_pi_2);
    FUNC1(mp_3_pi_2);
    FUNC1(mp_2_pi);
}